
(cl:in-package :asdf)

(defsystem "ros_service_ex-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ProductOfThreeNum" :depends-on ("_package_ProductOfThreeNum"))
    (:file "_package_ProductOfThreeNum" :depends-on ("_package"))
  ))