;; Auto-generated. Do not edit!


(when (boundp 'iot_modules::IOTnet)
  (if (not (find-package "IOT_MODULES"))
    (make-package "IOT_MODULES"))
  (shadow 'IOTnet (find-package "IOT_MODULES")))
(unless (find-package "IOT_MODULES::IOTNET")
  (make-package "IOT_MODULES::IOTNET"))

(in-package "ROS")
;;//! \htmlinclude IOTnet.msg.html


(defclass iot_modules::IOTnet
  :super ros::object
  :slots (_netcmd ))

(defmethod iot_modules::IOTnet
  (:init
   (&key
    ((:netcmd __netcmd) 0)
    )
   (send-super :init)
   (setq _netcmd (round __netcmd))
   self)
  (:netcmd
   (&optional __netcmd)
   (if __netcmd (setq _netcmd __netcmd)) _netcmd)
  (:serialization-length
   ()
   (+
    ;; int8 _netcmd
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _netcmd
       (write-byte _netcmd s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _netcmd
     (setq _netcmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _netcmd 127) (setq _netcmd (- _netcmd 256)))
   ;;
   self)
  )

(setf (get iot_modules::IOTnet :md5sum-) "8356f5430589b68b9b7aa8b89ec16c9a")
(setf (get iot_modules::IOTnet :datatype-) "iot_modules/IOTnet")
(setf (get iot_modules::IOTnet :definition-)
      "int8 netcmd

")



(provide :iot_modules/IOTnet "8356f5430589b68b9b7aa8b89ec16c9a")


