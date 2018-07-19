;; Auto-generated. Do not edit!


(when (boundp 'ros_arduino_msgs::LightShow)
  (if (not (find-package "ROS_ARDUINO_MSGS"))
    (make-package "ROS_ARDUINO_MSGS"))
  (shadow 'LightShow (find-package "ROS_ARDUINO_MSGS")))
(unless (find-package "ROS_ARDUINO_MSGS::LIGHTSHOW")
  (make-package "ROS_ARDUINO_MSGS::LIGHTSHOW"))
(unless (find-package "ROS_ARDUINO_MSGS::LIGHTSHOWREQUEST")
  (make-package "ROS_ARDUINO_MSGS::LIGHTSHOWREQUEST"))
(unless (find-package "ROS_ARDUINO_MSGS::LIGHTSHOWRESPONSE")
  (make-package "ROS_ARDUINO_MSGS::LIGHTSHOWRESPONSE"))

(in-package "ROS")





(defclass ros_arduino_msgs::LightShowRequest
  :super ros::object
  :slots (_value ))

(defmethod ros_arduino_msgs::LightShowRequest
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

(defclass ros_arduino_msgs::LightShowResponse
  :super ros::object
  :slots ())

(defmethod ros_arduino_msgs::LightShowResponse
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

(defclass ros_arduino_msgs::LightShow
  :super ros::object
  :slots ())

(setf (get ros_arduino_msgs::LightShow :md5sum-) "e4da51e86d3bac963ee2bb1f41031407")
(setf (get ros_arduino_msgs::LightShow :datatype-) "ros_arduino_msgs/LightShow")
(setf (get ros_arduino_msgs::LightShow :request) ros_arduino_msgs::LightShowRequest)
(setf (get ros_arduino_msgs::LightShow :response) ros_arduino_msgs::LightShowResponse)

(defmethod ros_arduino_msgs::LightShowRequest
  (:response () (instance ros_arduino_msgs::LightShowResponse :init)))

(setf (get ros_arduino_msgs::LightShowRequest :md5sum-) "e4da51e86d3bac963ee2bb1f41031407")
(setf (get ros_arduino_msgs::LightShowRequest :datatype-) "ros_arduino_msgs/LightShowRequest")
(setf (get ros_arduino_msgs::LightShowRequest :definition-)
      "uint8 value

---
")

(setf (get ros_arduino_msgs::LightShowResponse :md5sum-) "e4da51e86d3bac963ee2bb1f41031407")
(setf (get ros_arduino_msgs::LightShowResponse :datatype-) "ros_arduino_msgs/LightShowResponse")
(setf (get ros_arduino_msgs::LightShowResponse :definition-)
      "uint8 value

---
")



(provide :ros_arduino_msgs/LightShow "e4da51e86d3bac963ee2bb1f41031407")


