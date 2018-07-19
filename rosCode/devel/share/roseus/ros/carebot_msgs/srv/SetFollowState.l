;; Auto-generated. Do not edit!


(when (boundp 'carebot_msgs::SetFollowState)
  (if (not (find-package "CAREBOT_MSGS"))
    (make-package "CAREBOT_MSGS"))
  (shadow 'SetFollowState (find-package "CAREBOT_MSGS")))
(unless (find-package "CAREBOT_MSGS::SETFOLLOWSTATE")
  (make-package "CAREBOT_MSGS::SETFOLLOWSTATE"))
(unless (find-package "CAREBOT_MSGS::SETFOLLOWSTATEREQUEST")
  (make-package "CAREBOT_MSGS::SETFOLLOWSTATEREQUEST"))
(unless (find-package "CAREBOT_MSGS::SETFOLLOWSTATERESPONSE")
  (make-package "CAREBOT_MSGS::SETFOLLOWSTATERESPONSE"))

(in-package "ROS")





(intern "*STOPPED*" (find-package "CAREBOT_MSGS::SETFOLLOWSTATEREQUEST"))
(shadow '*STOPPED* (find-package "CAREBOT_MSGS::SETFOLLOWSTATEREQUEST"))
(defconstant carebot_msgs::SetFollowStateRequest::*STOPPED* 0)
(intern "*FOLLOW*" (find-package "CAREBOT_MSGS::SETFOLLOWSTATEREQUEST"))
(shadow '*FOLLOW* (find-package "CAREBOT_MSGS::SETFOLLOWSTATEREQUEST"))
(defconstant carebot_msgs::SetFollowStateRequest::*FOLLOW* 1)
(defclass carebot_msgs::SetFollowStateRequest
  :super ros::object
  :slots (_state ))

(defmethod carebot_msgs::SetFollowStateRequest
  (:init
   (&key
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _state (round __state))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; uint8 _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _state
       (write-byte _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(intern "*OK*" (find-package "CAREBOT_MSGS::SETFOLLOWSTATERESPONSE"))
(shadow '*OK* (find-package "CAREBOT_MSGS::SETFOLLOWSTATERESPONSE"))
(defconstant carebot_msgs::SetFollowStateResponse::*OK* 0)
(intern "*ERROR*" (find-package "CAREBOT_MSGS::SETFOLLOWSTATERESPONSE"))
(shadow '*ERROR* (find-package "CAREBOT_MSGS::SETFOLLOWSTATERESPONSE"))
(defconstant carebot_msgs::SetFollowStateResponse::*ERROR* 1)
(defclass carebot_msgs::SetFollowStateResponse
  :super ros::object
  :slots (_result ))

(defmethod carebot_msgs::SetFollowStateResponse
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; uint8 _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _result
       (write-byte _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _result
     (setq _result (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass carebot_msgs::SetFollowState
  :super ros::object
  :slots ())

(setf (get carebot_msgs::SetFollowState :md5sum-) "6095eaec0ed61c547340fdc2200c8372")
(setf (get carebot_msgs::SetFollowState :datatype-) "carebot_msgs/SetFollowState")
(setf (get carebot_msgs::SetFollowState :request) carebot_msgs::SetFollowStateRequest)
(setf (get carebot_msgs::SetFollowState :response) carebot_msgs::SetFollowStateResponse)

(defmethod carebot_msgs::SetFollowStateRequest
  (:response () (instance carebot_msgs::SetFollowStateResponse :init)))

(setf (get carebot_msgs::SetFollowStateRequest :md5sum-) "6095eaec0ed61c547340fdc2200c8372")
(setf (get carebot_msgs::SetFollowStateRequest :datatype-) "carebot_msgs/SetFollowStateRequest")
(setf (get carebot_msgs::SetFollowStateRequest :definition-)
      "uint8 STOPPED = 0
uint8 FOLLOW  = 1


uint8 state

---

uint8 OK    = 0
uint8 ERROR = 1

uint8 result

")

(setf (get carebot_msgs::SetFollowStateResponse :md5sum-) "6095eaec0ed61c547340fdc2200c8372")
(setf (get carebot_msgs::SetFollowStateResponse :datatype-) "carebot_msgs/SetFollowStateResponse")
(setf (get carebot_msgs::SetFollowStateResponse :definition-)
      "uint8 STOPPED = 0
uint8 FOLLOW  = 1


uint8 state

---

uint8 OK    = 0
uint8 ERROR = 1

uint8 result

")



(provide :carebot_msgs/SetFollowState "6095eaec0ed61c547340fdc2200c8372")


