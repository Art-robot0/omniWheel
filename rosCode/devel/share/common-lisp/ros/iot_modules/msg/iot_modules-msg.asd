
(cl:in-package :asdf)

(defsystem "iot_modules-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "IOTnet" :depends-on ("_package_IOTnet"))
    (:file "_package_IOTnet" :depends-on ("_package"))
  ))