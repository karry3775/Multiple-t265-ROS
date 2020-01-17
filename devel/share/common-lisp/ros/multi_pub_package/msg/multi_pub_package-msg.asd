
(cl:in-package :asdf)

(defsystem "multi_pub_package-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "stateMsg" :depends-on ("_package_stateMsg"))
    (:file "_package_stateMsg" :depends-on ("_package"))
  ))