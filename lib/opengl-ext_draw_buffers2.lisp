
(in-package #:gl) 

;;;; EXT_draw_buffers2

(defglextfun
 (("IsEnabledIndexedEXT" is-enabled-indexed-ext) :args
  ((:name |target| :type |GLenum| :direction :in)
   (:name |index| :type |UInt32| :direction :in))
  :return ("Boolean") :category ("EXT_draw_buffers2") :version ("2.0") :dlflags
  ("notlistable") :glxflags ("ignore") :glfflags ("ignore") :glsflags
  ("ignore") :extension ("soft" "WINSOFT"))) 
(defglextfun
 (("DisableIndexedEXT" disable-indexed-ext) :args
  ((:name |target| :type |GLenum| :direction :in)
   (:name |index| :type |UInt32| :direction :in))
  :return ("void") :category ("EXT_draw_buffers2") :version ("2.0") :glxflags
  ("ignore") :glfflags ("ignore") :glsflags ("ignore") :extension
  ("soft" "WINSOFT"))) 
(defglextfun
 (("EnableIndexedEXT" enable-indexed-ext) :args
  ((:name |target| :type |GLenum| :direction :in)
   (:name |index| :type |UInt32| :direction :in))
  :return ("void") :category ("EXT_draw_buffers2") :version ("2.0") :glxflags
  ("ignore") :glfflags ("ignore") :glsflags ("ignore") :extension
  ("soft" "WINSOFT"))) 
(defglextfun
 (("GetIntegerIndexedvEXT" get-integer-indexedv-ext) :args
  ((:name |target| :type |GLenum| :direction :in)
   (:name |index| :type |UInt32| :direction :in)
   (:name |data| :type |Int32| :direction :out :array t :size (|target|)))
  :return ("void") :category ("EXT_draw_buffers2") :version ("2.0") :dlflags
  ("notlistable") :glxflags ("ignore") :glfflags ("ignore") :glsflags
  ("ignore") :extension ("soft" "WINSOFT"))) 
(defglextfun
 (("GetBooleanIndexedvEXT" get-boolean-indexedv-ext) :args
  ((:name |target| :type |GLenum| :direction :in)
   (:name |index| :type |UInt32| :direction :in)
   (:name |data| :type |Boolean| :direction :out :array t :size (|target|)))
  :return ("void") :category ("EXT_draw_buffers2") :version ("2.0") :dlflags
  ("notlistable") :glxflags ("ignore") :glfflags ("ignore") :glsflags
  ("ignore") :extension ("soft" "WINSOFT"))) 
(defglextfun
 (("ColorMaskIndexedEXT" color-mask-indexed-ext) :args
  ((:name |index| :type |UInt32| :direction :in)
   (:name |r| :type |Boolean| :direction :in)
   (:name |g| :type |Boolean| :direction :in)
   (:name |b| :type |Boolean| :direction :in)
   (:name |a| :type |Boolean| :direction :in))
  :return ("void") :category ("EXT_draw_buffers2") :version ("2.0") :glxflags
  ("ignore") :glfflags ("ignore") :glsflags ("ignore") :extension
  ("soft" "WINSOFT"))) 