;; Auto-generated. Do not edit!


(when (boundp 'multi_pub_package::stateMsg)
  (if (not (find-package "MULTI_PUB_PACKAGE"))
    (make-package "MULTI_PUB_PACKAGE"))
  (shadow 'stateMsg (find-package "MULTI_PUB_PACKAGE")))
(unless (find-package "MULTI_PUB_PACKAGE::STATEMSG")
  (make-package "MULTI_PUB_PACKAGE::STATEMSG"))

(in-package "ROS")
;;//! \htmlinclude stateMsg.msg.html


(defclass multi_pub_package::stateMsg
  :super ros::object
  :slots (_sN1 _x1 _y1 _yaw1 _sN2 _x2 _y2 _yaw2 ))

(defmethod multi_pub_package::stateMsg
  (:init
   (&key
    ((:sN1 __sN1) 0.0)
    ((:x1 __x1) 0.0)
    ((:y1 __y1) 0.0)
    ((:yaw1 __yaw1) 0.0)
    ((:sN2 __sN2) 0.0)
    ((:x2 __x2) 0.0)
    ((:y2 __y2) 0.0)
    ((:yaw2 __yaw2) 0.0)
    )
   (send-super :init)
   (setq _sN1 (float __sN1))
   (setq _x1 (float __x1))
   (setq _y1 (float __y1))
   (setq _yaw1 (float __yaw1))
   (setq _sN2 (float __sN2))
   (setq _x2 (float __x2))
   (setq _y2 (float __y2))
   (setq _yaw2 (float __yaw2))
   self)
  (:sN1
   (&optional __sN1)
   (if __sN1 (setq _sN1 __sN1)) _sN1)
  (:x1
   (&optional __x1)
   (if __x1 (setq _x1 __x1)) _x1)
  (:y1
   (&optional __y1)
   (if __y1 (setq _y1 __y1)) _y1)
  (:yaw1
   (&optional __yaw1)
   (if __yaw1 (setq _yaw1 __yaw1)) _yaw1)
  (:sN2
   (&optional __sN2)
   (if __sN2 (setq _sN2 __sN2)) _sN2)
  (:x2
   (&optional __x2)
   (if __x2 (setq _x2 __x2)) _x2)
  (:y2
   (&optional __y2)
   (if __y2 (setq _y2 __y2)) _y2)
  (:yaw2
   (&optional __yaw2)
   (if __yaw2 (setq _yaw2 __yaw2)) _yaw2)
  (:serialization-length
   ()
   (+
    ;; float64 _sN1
    8
    ;; float64 _x1
    8
    ;; float64 _y1
    8
    ;; float64 _yaw1
    8
    ;; float64 _sN2
    8
    ;; float64 _x2
    8
    ;; float64 _y2
    8
    ;; float64 _yaw2
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _sN1
       (sys::poke _sN1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x1
       (sys::poke _x1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y1
       (sys::poke _y1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw1
       (sys::poke _yaw1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _sN2
       (sys::poke _sN2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x2
       (sys::poke _x2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y2
       (sys::poke _y2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw2
       (sys::poke _yaw2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _sN1
     (setq _sN1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x1
     (setq _x1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y1
     (setq _y1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw1
     (setq _yaw1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _sN2
     (setq _sN2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x2
     (setq _x2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y2
     (setq _y2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw2
     (setq _yaw2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get multi_pub_package::stateMsg :md5sum-) "cf8f7c0f25f41a1e73275e44245843a9")
(setf (get multi_pub_package::stateMsg :datatype-) "multi_pub_package/stateMsg")
(setf (get multi_pub_package::stateMsg :definition-)
      "float64 sN1
float64 x1
float64 y1
float64 yaw1
float64 sN2
float64 x2
float64 y2
float64 yaw2

")



(provide :multi_pub_package/stateMsg "cf8f7c0f25f41a1e73275e44245843a9")


