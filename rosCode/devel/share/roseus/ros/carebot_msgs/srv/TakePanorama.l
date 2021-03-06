;; Auto-generated. Do not edit!


(when (boundp 'carebot_msgs::TakePanorama)
  (if (not (find-package "CAREBOT_MSGS"))
    (make-package "CAREBOT_MSGS"))
  (shadow 'TakePanorama (find-package "CAREBOT_MSGS")))
(unless (find-package "CAREBOT_MSGS::TAKEPANORAMA")
  (make-package "CAREBOT_MSGS::TAKEPANORAMA"))
(unless (find-package "CAREBOT_MSGS::TAKEPANORAMAREQUEST")
  (make-package "CAREBOT_MSGS::TAKEPANORAMAREQUEST"))
(unless (find-package "CAREBOT_MSGS::TAKEPANORAMARESPONSE")
  (make-package "CAREBOT_MSGS::TAKEPANORAMARESPONSE"))

(in-package "ROS")





(intern "*SNAPANDROTATE*" (find-package "CAREBOT_MSGS::TAKEPANORAMAREQUEST"))
(shadow '*SNAPANDROTATE* (find-package "CAREBOT_MSGS::TAKEPANORAMAREQUEST"))
(defconstant carebot_msgs::TakePanoramaRequest::*SNAPANDROTATE* 0)
(intern "*CONTINUOUS*" (find-package "CAREBOT_MSGS::TAKEPANORAMAREQUEST"))
(shadow '*CONTINUOUS* (find-package "CAREBOT_MSGS::TAKEPANORAMAREQUEST"))
(defconstant carebot_msgs::TakePanoramaRequest::*CONTINUOUS* 1)
(intern "*STOP*" (find-package "CAREBOT_MSGS::TAKEPANORAMAREQUEST"))
(shadow '*STOP* (find-package "CAREBOT_MSGS::TAKEPANORAMAREQUEST"))
(defconstant carebot_msgs::TakePanoramaRequest::*STOP* 2)
(defclass carebot_msgs::TakePanoramaRequest
  :super ros::object
  :slots (_mode _pano_angle _snap_interval _rot_vel ))

(defmethod carebot_msgs::TakePanoramaRequest
  (:init
   (&key
    ((:mode __mode) 0)
    ((:pano_angle __pano_angle) 0.0)
    ((:snap_interval __snap_interval) 0.0)
    ((:rot_vel __rot_vel) 0.0)
    )
   (send-super :init)
   (setq _mode (round __mode))
   (setq _pano_angle (float __pano_angle))
   (setq _snap_interval (float __snap_interval))
   (setq _rot_vel (float __rot_vel))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:pano_angle
   (&optional __pano_angle)
   (if __pano_angle (setq _pano_angle __pano_angle)) _pano_angle)
  (:snap_interval
   (&optional __snap_interval)
   (if __snap_interval (setq _snap_interval __snap_interval)) _snap_interval)
  (:rot_vel
   (&optional __rot_vel)
   (if __rot_vel (setq _rot_vel __rot_vel)) _rot_vel)
  (:serialization-length
   ()
   (+
    ;; uint8 _mode
    1
    ;; float32 _pano_angle
    4
    ;; float32 _snap_interval
    4
    ;; float32 _rot_vel
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _mode
       (write-byte _mode s)
     ;; float32 _pano_angle
       (sys::poke _pano_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _snap_interval
       (sys::poke _snap_interval (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rot_vel
       (sys::poke _rot_vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _pano_angle
     (setq _pano_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _snap_interval
     (setq _snap_interval (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rot_vel
     (setq _rot_vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(intern "*STARTED*" (find-package "CAREBOT_MSGS::TAKEPANORAMARESPONSE"))
(shadow '*STARTED* (find-package "CAREBOT_MSGS::TAKEPANORAMARESPONSE"))
(defconstant carebot_msgs::TakePanoramaResponse::*STARTED* 0)
(intern "*IN_PROGRESS*" (find-package "CAREBOT_MSGS::TAKEPANORAMARESPONSE"))
(shadow '*IN_PROGRESS* (find-package "CAREBOT_MSGS::TAKEPANORAMARESPONSE"))
(defconstant carebot_msgs::TakePanoramaResponse::*IN_PROGRESS* 1)
(intern "*STOPPED*" (find-package "CAREBOT_MSGS::TAKEPANORAMARESPONSE"))
(shadow '*STOPPED* (find-package "CAREBOT_MSGS::TAKEPANORAMARESPONSE"))
(defconstant carebot_msgs::TakePanoramaResponse::*STOPPED* 2)
(defclass carebot_msgs::TakePanoramaResponse
  :super ros::object
  :slots (_status ))

(defmethod carebot_msgs::TakePanoramaResponse
  (:init
   (&key
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; uint8 _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _status
       (write-byte _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass carebot_msgs::TakePanorama
  :super ros::object
  :slots ())

(setf (get carebot_msgs::TakePanorama :md5sum-) "ae9e615a5f5b5081544bd9259c9e0f4e")
(setf (get carebot_msgs::TakePanorama :datatype-) "carebot_msgs/TakePanorama")
(setf (get carebot_msgs::TakePanorama :request) carebot_msgs::TakePanoramaRequest)
(setf (get carebot_msgs::TakePanorama :response) carebot_msgs::TakePanoramaResponse)

(defmethod carebot_msgs::TakePanoramaRequest
  (:response () (instance carebot_msgs::TakePanoramaResponse :init)))

(setf (get carebot_msgs::TakePanoramaRequest :md5sum-) "ae9e615a5f5b5081544bd9259c9e0f4e")
(setf (get carebot_msgs::TakePanoramaRequest :datatype-) "carebot_msgs/TakePanoramaRequest")
(setf (get carebot_msgs::TakePanoramaRequest :definition-)
      "
uint8 mode

uint8 SNAPANDROTATE=0

uint8 CONTINUOUS=1

uint8 STOP=2

float32 pano_angle

float32 snap_interval

float32 rot_vel

---

uint8 status
uint8 STARTED=0
uint8 IN_PROGRESS=1
uint8 STOPPED=2
")

(setf (get carebot_msgs::TakePanoramaResponse :md5sum-) "ae9e615a5f5b5081544bd9259c9e0f4e")
(setf (get carebot_msgs::TakePanoramaResponse :datatype-) "carebot_msgs/TakePanoramaResponse")
(setf (get carebot_msgs::TakePanoramaResponse :definition-)
      "
uint8 mode

uint8 SNAPANDROTATE=0

uint8 CONTINUOUS=1

uint8 STOP=2

float32 pano_angle

float32 snap_interval

float32 rot_vel

---

uint8 status
uint8 STARTED=0
uint8 IN_PROGRESS=1
uint8 STOPPED=2
")



(provide :carebot_msgs/TakePanorama "ae9e615a5f5b5081544bd9259c9e0f4e")


