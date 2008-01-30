;;;; This file was automatically generated by nil

(in-package #:cl-glfw-opengl) 

;;;; apple_fence

(defconstant +draw-pixels-apple+ #x8A0A) 
(defconstant +fence-apple+ #x8A0B) 
(defglextfun
 (("FinishObjectAPPLE" finish-object-apple) :args
  ((:name |object| :type |ObjectTypeAPPLE| :direction :in)
   (:name |name| :type |Int32| :direction :in))
  :return ("void") :category ("APPLE_fence") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("TestObjectAPPLE" test-object-apple) :args
  ((:name |object| :type |ObjectTypeAPPLE| :direction :in)
   (:name |name| :type |UInt32| :direction :in))
  :return ("Boolean") :category ("APPLE_fence") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("FinishFenceAPPLE" finish-fence-apple) :args
  ((:name |fence| :type |FenceNV| :direction :in)) :return ("void") :category
  ("APPLE_fence") :version ("1.2") :extension nil :glxropcode ("?") :glxflags
  ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("TestFenceAPPLE" test-fence-apple) :args
  ((:name |fence| :type |FenceNV| :direction :in)) :return ("Boolean")
  :category ("APPLE_fence") :version ("1.2") :extension nil :glxropcode ("?")
  :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("IsFenceAPPLE" is-fence-apple) :args
  ((:name |fence| :type |FenceNV| :direction :in)) :return ("Boolean")
  :category ("APPLE_fence") :version ("1.2") :extension nil :glxropcode ("?")
  :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("SetFenceAPPLE" set-fence-apple) :args
  ((:name |fence| :type |FenceNV| :direction :in)) :return ("void") :category
  ("APPLE_fence") :version ("1.2") :extension nil :glxropcode ("?") :glxflags
  ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("DeleteFencesAPPLE" delete-fences-apple) :args
  ((:name |n| :type |SizeI| :direction :in)
   (:name |fences| :type |FenceNV| :direction :in :array t :size n))
  :return ("void") :category ("APPLE_fence") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("GenFencesAPPLE" gen-fences-apple) :args
  ((:name |n| :type |SizeI| :direction :in)
   (:name |fences| :type |FenceNV| :direction :out :array t :size n))
  :return ("void") :category ("APPLE_fence") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsopcode ("?") :offset ("?"))) 