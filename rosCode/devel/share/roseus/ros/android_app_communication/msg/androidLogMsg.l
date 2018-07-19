;; Auto-generated. Do not edit!


(when (boundp 'android_app_communication::androidLogMsg)
  (if (not (find-package "ANDROID_APP_COMMUNICATION"))
    (make-package "ANDROID_APP_COMMUNICATION"))
  (shadow 'androidLogMsg (find-package "ANDROID_APP_COMMUNICATION")))
(unless (find-package "ANDROID_APP_COMMUNICATION::ANDROIDLOGMSG")
  (make-package "ANDROID_APP_COMMUNICATION::ANDROIDLOGMSG"))

(in-package "ROS")
;;//! \htmlinclude androidLogMsg.msg.html


(defclass android_app_communication::androidLogMsg
  :super ros::object
  :slots (_message ))

(defmethod android_app_communication::androidLogMsg
  (:init
   (&key
    ((:message __message) "")
    )
   (send-super :init)
   (setq _message (string __message))
   self)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get android_app_communication::androidLogMsg :md5sum-) "5f003d6bcc824cbd51361d66d8e4f76c")
(setf (get android_app_communication::androidLogMsg :datatype-) "android_app_communication/androidLogMsg")
(setf (get android_app_communication::androidLogMsg :definition-)
      "string message

")



(provide :android_app_communication/androidLogMsg "5f003d6bcc824cbd51361d66d8e4f76c")


