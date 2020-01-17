// Auto-generated. Do not edit!

// (in-package multi_pub_package.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class stateMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sN1 = null;
      this.x1 = null;
      this.y1 = null;
      this.yaw1 = null;
      this.sN2 = null;
      this.x2 = null;
      this.y2 = null;
      this.yaw2 = null;
    }
    else {
      if (initObj.hasOwnProperty('sN1')) {
        this.sN1 = initObj.sN1
      }
      else {
        this.sN1 = 0.0;
      }
      if (initObj.hasOwnProperty('x1')) {
        this.x1 = initObj.x1
      }
      else {
        this.x1 = 0.0;
      }
      if (initObj.hasOwnProperty('y1')) {
        this.y1 = initObj.y1
      }
      else {
        this.y1 = 0.0;
      }
      if (initObj.hasOwnProperty('yaw1')) {
        this.yaw1 = initObj.yaw1
      }
      else {
        this.yaw1 = 0.0;
      }
      if (initObj.hasOwnProperty('sN2')) {
        this.sN2 = initObj.sN2
      }
      else {
        this.sN2 = 0.0;
      }
      if (initObj.hasOwnProperty('x2')) {
        this.x2 = initObj.x2
      }
      else {
        this.x2 = 0.0;
      }
      if (initObj.hasOwnProperty('y2')) {
        this.y2 = initObj.y2
      }
      else {
        this.y2 = 0.0;
      }
      if (initObj.hasOwnProperty('yaw2')) {
        this.yaw2 = initObj.yaw2
      }
      else {
        this.yaw2 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type stateMsg
    // Serialize message field [sN1]
    bufferOffset = _serializer.float64(obj.sN1, buffer, bufferOffset);
    // Serialize message field [x1]
    bufferOffset = _serializer.float64(obj.x1, buffer, bufferOffset);
    // Serialize message field [y1]
    bufferOffset = _serializer.float64(obj.y1, buffer, bufferOffset);
    // Serialize message field [yaw1]
    bufferOffset = _serializer.float64(obj.yaw1, buffer, bufferOffset);
    // Serialize message field [sN2]
    bufferOffset = _serializer.float64(obj.sN2, buffer, bufferOffset);
    // Serialize message field [x2]
    bufferOffset = _serializer.float64(obj.x2, buffer, bufferOffset);
    // Serialize message field [y2]
    bufferOffset = _serializer.float64(obj.y2, buffer, bufferOffset);
    // Serialize message field [yaw2]
    bufferOffset = _serializer.float64(obj.yaw2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type stateMsg
    let len;
    let data = new stateMsg(null);
    // Deserialize message field [sN1]
    data.sN1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x1]
    data.x1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y1]
    data.y1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw1]
    data.yaw1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [sN2]
    data.sN2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x2]
    data.x2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y2]
    data.y2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw2]
    data.yaw2 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 64;
  }

  static datatype() {
    // Returns string type for a message object
    return 'multi_pub_package/stateMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cf8f7c0f25f41a1e73275e44245843a9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 sN1
    float64 x1
    float64 y1
    float64 yaw1
    float64 sN2
    float64 x2
    float64 y2
    float64 yaw2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new stateMsg(null);
    if (msg.sN1 !== undefined) {
      resolved.sN1 = msg.sN1;
    }
    else {
      resolved.sN1 = 0.0
    }

    if (msg.x1 !== undefined) {
      resolved.x1 = msg.x1;
    }
    else {
      resolved.x1 = 0.0
    }

    if (msg.y1 !== undefined) {
      resolved.y1 = msg.y1;
    }
    else {
      resolved.y1 = 0.0
    }

    if (msg.yaw1 !== undefined) {
      resolved.yaw1 = msg.yaw1;
    }
    else {
      resolved.yaw1 = 0.0
    }

    if (msg.sN2 !== undefined) {
      resolved.sN2 = msg.sN2;
    }
    else {
      resolved.sN2 = 0.0
    }

    if (msg.x2 !== undefined) {
      resolved.x2 = msg.x2;
    }
    else {
      resolved.x2 = 0.0
    }

    if (msg.y2 !== undefined) {
      resolved.y2 = msg.y2;
    }
    else {
      resolved.y2 = 0.0
    }

    if (msg.yaw2 !== undefined) {
      resolved.yaw2 = msg.yaw2;
    }
    else {
      resolved.yaw2 = 0.0
    }

    return resolved;
    }
};

module.exports = stateMsg;
