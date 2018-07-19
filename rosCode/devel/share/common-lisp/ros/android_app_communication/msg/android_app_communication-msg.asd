
(cl:in-package :asdf)

(defsystem "android_app_communication-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "androidLogMsg" :depends-on ("_package_androidLogMsg"))
    (:file "_package_androidLogMsg" :depends-on ("_package"))
  ))