;;;; This file was automatically generated by /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; apple_vertex_array_range

(defconstant +vertex-array-range-apple+ #x851D) 
(defconstant +vertex-array-range-length-apple+ #x851E) 
(defconstant +vertex-array-storage-hint-apple+ #x851F) 
(defconstant +vertex-array-range-pointer-apple+ #x8521) 
(defconstant +storage-cached-apple+ #x85BE) 
(defconstant +storage-shared-apple+ #x85BF) 
(defglextfun "VertexArrayParameteriAPPLE" vertex-array-parameter-i-apple
 :return "void" :args
 ((:name |pname| :type |VertexArrayPNameAPPLE| :direction :in)
  (:name |param| :type |Int32| :direction :in))
 :category "APPLE_vertex_array_range" :version "1.2") 
(defglextfun "FlushVertexArrayRangeAPPLE" flush-vertex-array-range-apple
 :return "void" :args
 ((:name |length| :type |SizeI| :direction :in)
  (:name |pointer| :type |Void| :direction :out :array t :size length))
 :category "APPLE_vertex_array_range" :version "1.2") 
(defglextfun "VertexArrayRangeAPPLE" vertex-array-range-apple :return "void"
 :args
 ((:name |length| :type |SizeI| :direction :in)
  (:name |pointer| :type |Void| :direction :out :array t :size length))
 :category "APPLE_vertex_array_range" :version "1.2") 
