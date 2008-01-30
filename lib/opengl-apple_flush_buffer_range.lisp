;;;; This file was automatically generated by /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; apple_flush_buffer_range

(defconstant +buffer-serialized-modify-apple+ #x8A12) 
(defconstant +buffer-flushing-unmap-apple+ #x8A13) 
(defglextfun "FlushMappedBufferRangeAPPLE" flush-mapped-buffer-range-apple
 :return "void" :args
 ((:name |target| :type |GLenum| :direction :in)
  (:name |offset| :type |BufferOffset| :direction :in)
  (:name |size| :type |BufferSize| :direction :in))
 :category "APPLE_flush_buffer_range" :version "1.5") 
(defglextfun "BufferParameteriAPPLE" buffer-parameter-i-apple :return "void"
 :args
 ((:name |target| :type |GLenum| :direction :in)
  (:name |pname| :type |GLenum| :direction :in)
  (:name |param| :type |Int32| :direction :in))
 :category "APPLE_flush_buffer_range" :version "1.5") 
