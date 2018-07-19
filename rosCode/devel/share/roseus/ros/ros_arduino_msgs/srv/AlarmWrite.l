;; Auto-generated. Do not edit!


(when (boundp 'ros_arduino_msgs::AlarmWrite)
  (if (not (find-package "ROS_ARDUINO_MSGS"))
    (make-package "ROS_ARDUINO_MSGS"))
  (shadow 'AlarmWrite (find-package "ROS_ARDUINO_MSGS")))
(unless (find-package "ROS_ARDUINO_MSGS::ALARMWRITE")
  (make-package "ROS_ARDUINO_MSGS::ALARMWRITE"))
(unless (find-package "ROS_ARDUINO_MSGS::ALARMWRITEREQUEST")
  (make-package "ROS_ARDUINO_MSGS::ALARMWRITEREQUEST"))
(unless (find-package "ROS_ARDUINO_MSGS::ALARMWRITERESPONSE")
  (make-package "ROS_ARDUINO_MSGS::ALARMWRITERESPONSE"))

(in-package "ROS")





(defclass ros_arduino_msgs::AlarmWriteRequest
  :super ros::object
  :slots (_value ))

(defmethod ros_arduino_msgs::AlarmWriteRequest
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; uint8 _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _value
       (write-byte _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _value
     (setq _value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass ros_arduino_msgs::AlarmWriteResponse
  :super ros::object
  :slots ())

(defmethod ros_arduino_msgs::AlarmWriteResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass ros_arduino_msgs::AlarmWrite
  :super ros::object
  :slots ())

(setf (get ros_arduino_msgs::AlarmWrite :md5sum-) "e4da51e86d3bac963ee2bb1f41031407")
(setf (get ros_arduino_msgs::AlarmWrite :datatype-) "ros_arduino_msgs/AlarmWrite")
(setf (get ros_arduino_msgs::AlarmWrite :request) ros_arduino_msgs::AlarmWriteRequest)
(setf (get ros_arduino_msgs::AlarmWrite :response) ros_arduino_msgs::AlarmWriteResponse)

(defmethod ros_arduino_msgs::AlarmWriteRequest
  (:response () (instance ros_arduino_msgs::AlarmWriteResponse :init)))

(setf (get ros_arduino_msgs::AlarmWriteRequest :md5sum-) "e4da51e86d3bac963ee2bb1f41031407")
(setf (get ros_arduino_msgs::AlarmWriteRequest :datatype-) "ros_arduino_msgs/AlarmWriteRequest")
(setf (get ros_arduino_msgs::AlarmWriteRequest :definition-)
      "uint8 value

---
")

(setf (get ros_arduino_msgs::AlarmWriteResponse :md5sum-) "e4da51e86d3bac963ee2bb1f41031407")
(setf (get ros_arduino_msgs::AlarmWriteResponse :datatype-) "ros_arduino_msgs/AlarmWriteResponse")
(setf (get ros_arduino_msgs::AlarmWriteResponse :definition-)
      "uint8 value

---
")



(provide :ros_arduino_msgs/AlarmWrite "e4da51e86d3bac963ee2bb1f41031407")


