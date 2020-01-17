#!/usr/bin/env python3

import rospy
from multi_pub_package.msg import stateMsg # x,y,yaw
import pyrealsense2 as rs
import logging
import datetime
from squaternion import Quaternion, quat2euler

# UTILITY FUNCTIONS
def get_devices_serial_numbers(device_suffix:str='T265') -> [str]:
    '''
    Return list of serial numbers conected devices.
    Eventualy only fit given suffix (like T265, D415, ...)
    (based on https://github.com/IntelRealSense/librealsense/issues/2332)
    '''
    ret_list = []
    ctx = rs.context()
    for d in ctx.devices:
        if device_suffix and not d.get_info(rs.camera_info.name).endswith(device_suffix):
            continue
        ret_list.append(d.get_info(rs.camera_info.serial_number))
    return ret_list

class T265CameraSource:

    def __init__(self, serial_number:str):
        self.__serial_number = serial_number
        self.__pipeline = None
        self.__config = None
        self.__start_pipeline()


    def __del__(self):
        if not self.__pipeline is None:
            self.__pipeline.stop()

    def get_serial_number(self):
        return self.__serial_number

    def __start_pipeline(self):
        # Configure depth and color streams
        self.__pipeline = rs.pipeline()
        self.__config = rs.config()
        self.__config.enable_device(self.__serial_number)
        self.__config.enable_stream(rs.stream.pose)
        self.__pipeline.start(self.__config)
        logging.debug('T265 ({}) camera is ready.'.format(self.__serial_number))

    def get(self) -> rs.pose:
        frames = self.__pipeline.wait_for_frames()
        data = frames.get_pose_frame()
        return data.get_pose_data()

    def get_state(self) -> (float, float, float):
        data = self.get()
        x = data.translation.x
        y = data.translation.y
        # extract the quaternions
        qx = data.rotation.x
        qy = data.rotation.y
        qz = data.rotation.z
        qw = data.rotation.w
        # convert to euler angles
        q = Quaternion(qw,qx,qy,qz)
        _, _, yaw = quat2euler(*q, degrees = True)
        return x, y, yaw

# Create the rospy publisher
rospy.init_node("multi_cam_pub_node")
multi_pub = rospy.Publisher("multi_cam_topic", stateMsg, queue_size = 10)
rate = rospy.Rate(10) # 10 Hz publishing frequency
stateMsgObj = stateMsg()

def pub_state_multi(sources):
    while not rospy.is_shutdown():
        X = []
        Y = []
        YAW = []
        SN = []
        for camera_index, source in enumerate(sources):
            x, y, yaw = source.get_state()
            sN = source.get_serial_number()
            print("SN: {}, x: {}, y: {}, yaw: {}".format(sN,x,y,yaw))
            X.append(x)
            Y.append(Y)
            YAW.append(yaw)
            SN.append(sN)

        # After this loop we will have list of SN,X,Y,YAW which we can then publish
        stateMsgObj.sN1 = SN[0]
        stateMsgObj.x1 = X[0]
        stateMsgObj.y1 = Y[0]
        stateMsgObj.yaw1 = YAW[0]

        stateMsgObj.sN1 = SN[1]
        stateMsgObj.x1 = X[1]
        stateMsgObj.y1 = Y[1]
        stateMsgObj.yaw1 = YAW[1]

        multi_pub.publish(stateMsgObj)
        rate.sleep()

if __name__ == "__main__":
    try:
        serial_numbers = get_devices_serial_numbers()
        sources = [T265CameraSource(serial_number) for serial_number in serial_numbers]
        pub_state_multi(sources)
    except rospy.ROSInterruptException:
        pass
