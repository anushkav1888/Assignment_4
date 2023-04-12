
(cl:in-package :asdf)

(defsystem "pack-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "sub_client" :depends-on ("_package_sub_client"))
    (:file "_package_sub_client" :depends-on ("_package"))
  ))