;;;; This file was automatically generated by /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; ext_timer_query

(defconstant +time-elapsed-ext+ #x88BF) 
(defglextfun "GetQueryObjectui64vEXT" get-query-objectui-64v-ext :return "void"
 :args
 ((:name |id| :type |UInt32| :direction :in)
  (:name |pname| :type |GLenum| :direction :in)
  (:name |params| :type |UInt64EXT| :direction :out :array t :size pname))
 :category "EXT_timer_query" :version "1.5") 
(defglextfun "GetQueryObjecti64vEXT" get-query-objecti-64v-ext :return "void"
 :args
 ((:name |id| :type |UInt32| :direction :in)
  (:name |pname| :type |GLenum| :direction :in)
  (:name |params| :type |Int64EXT| :direction :out :array t :size pname))
 :category "EXT_timer_query" :version "1.5") 
