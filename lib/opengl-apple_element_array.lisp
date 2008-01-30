;;;; This file was automatically generated by /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; apple_element_array

(defconstant +element-array-apple+ #x8768) 
(defconstant +element-array-type-apple+ #x8769) 
(defconstant +element-array-pointer-apple+ #x876A) 
(defglextfun "MultiDrawRangeElementArrayAPPLE"
 multi-draw-range-element-array-apple :return "void" :args
 ((:name |mode| :type |BeginMode| :direction :in)
  (:name |start| :type |UInt32| :direction :in)
  (:name |end| :type |UInt32| :direction :in)
  (:name |first| :type |Int32| :direction :in :array t :size primcount)
  (:name |count| :type |SizeI| :direction :in :array t :size primcount)
  (:name |primcount| :type |SizeI| :direction :in))
 :category "APPLE_element_array" :version "1.2") 
(defglextfun "MultiDrawElementArrayAPPLE" multi-draw-element-array-apple
 :return "void" :args
 ((:name |mode| :type |BeginMode| :direction :in)
  (:name |first| :type |Int32| :direction :in :array t :size primcount)
  (:name |count| :type |SizeI| :direction :in :array t :size primcount)
  (:name |primcount| :type |SizeI| :direction :in))
 :category "APPLE_element_array" :version "1.2") 
(defglextfun "DrawRangeElementArrayAPPLE" draw-range-element-array-apple
 :return "void" :args
 ((:name |mode| :type |BeginMode| :direction :in)
  (:name |start| :type |UInt32| :direction :in)
  (:name |end| :type |UInt32| :direction :in)
  (:name |first| :type |Int32| :direction :in)
  (:name |count| :type |SizeI| :direction :in))
 :category "APPLE_element_array" :version "1.2") 
(defglextfun "DrawElementArrayAPPLE" draw-element-array-apple :return "void"
 :args
 ((:name |mode| :type |BeginMode| :direction :in)
  (:name |first| :type |Int32| :direction :in)
  (:name |count| :type |SizeI| :direction :in))
 :category "APPLE_element_array" :version "1.2") 
(defglextfun "ElementPointerAPPLE" element-pointer-apple :return "void" :args
 ((:name |type| :type |ElementPointerTypeATI| :direction :in)
  (:name |pointer| :type |Void| :direction :in :array t :size type))
 :category "APPLE_element_array" :version "1.2") 
