
(in-package #:gl) 

;;;; EXT_gpu_shader4

(defconstant +sampler-1d-array-ext+ #x8DC0) 
(defconstant +sampler-2d-array-ext+ #x8DC1) 
(defconstant +sampler-buffer-ext+ #x8DC2) 
(defconstant +sampler-1d-array-shadow-ext+ #x8DC3) 
(defconstant +sampler-2d-array-shadow-ext+ #x8DC4) 
(defconstant +sampler-cube-shadow-ext+ #x8DC5) 
(defconstant +unsigned-int-vec2-ext+ #x8DC6) 
(defconstant +unsigned-int-vec3-ext+ #x8DC7) 
(defconstant +unsigned-int-vec4-ext+ #x8DC8) 
(defconstant +int-sampler-1d-ext+ #x8DC9) 
(defconstant +int-sampler-2d-ext+ #x8DCA) 
(defconstant +int-sampler-3d-ext+ #x8DCB) 
(defconstant +int-sampler-cube-ext+ #x8DCC) 
(defconstant +int-sampler-2d-rect-ext+ #x8DCD) 
(defconstant +int-sampler-1d-array-ext+ #x8DCE) 
(defconstant +int-sampler-2d-array-ext+ #x8DCF) 
(defconstant +int-sampler-buffer-ext+ #x8DD0) 
(defconstant +unsigned-int-sampler-1d-ext+ #x8DD1) 
(defconstant +unsigned-int-sampler-2d-ext+ #x8DD2) 
(defconstant +unsigned-int-sampler-3d-ext+ #x8DD3) 
(defconstant +unsigned-int-sampler-cube-ext+ #x8DD4) 
(defconstant +unsigned-int-sampler-2d-rect-ext+ #x8DD5) 
(defconstant +unsigned-int-sampler-1d-array-ext+ #x8DD6) 
(defconstant +unsigned-int-sampler-2d-array-ext+ #x8DD7) 
(defconstant +unsigned-int-sampler-buffer-ext+ #x8DD8) 
(defglextfun
 (("Uniform4uivEXT" uniform-4uiv-ext) :args
  ((:name |location| :type |Int32| :direction :in)
   (:name |count| :type |SizeI| :direction :in)
   (:name |value| :type |UInt32| :direction :in :array t :size count*4))
  :return ("void") :category ("EXT_gpu_shader4") :version ("2.0") :extension
  ("soft" "WINSOFT") :glfflags ("ignore") :glsflags ("ignore") :glxflags
  ("ignore"))) 
(defglextfun
 (("Uniform3uivEXT" uniform-3uiv-ext) :args
  ((:name |location| :type |Int32| :direction :in)
   (:name |count| :type |SizeI| :direction :in)
   (:name |value| :type |UInt32| :direction :in :array t :size count*3))
  :return ("void") :category ("EXT_gpu_shader4") :version ("2.0") :extension
  ("soft" "WINSOFT") :glfflags ("ignore") :glsflags ("ignore") :glxflags
  ("ignore"))) 
(defglextfun
 (("Uniform2uivEXT" uniform-2uiv-ext) :args
  ((:name |location| :type |Int32| :direction :in)
   (:name |count| :type |SizeI| :direction :in)
   (:name |value| :type |UInt32| :direction :in :array t :size count*2))
  :return ("void") :category ("EXT_gpu_shader4") :version ("2.0") :extension
  ("soft" "WINSOFT") :glfflags ("ignore") :glsflags ("ignore") :glxflags
  ("ignore"))) 
(defglextfun
 (("Uniform1uivEXT" uniform-1uiv-ext) :args
  ((:name |location| :type |Int32| :direction :in)
   (:name |count| :type |SizeI| :direction :in)
   (:name |value| :type |UInt32| :direction :in :array t :size count))
  :return ("void") :category ("EXT_gpu_shader4") :version ("2.0") :extension
  ("soft" "WINSOFT") :glfflags ("ignore") :glsflags ("ignore") :glxflags
  ("ignore"))) 
(defglextfun
 (("Uniform4uiEXT" uniform-4ui-ext) :args
  ((:name |location| :type |Int32| :direction :in)
   (:name |v0| :type |UInt32| :direction :in)
   (:name |v1| :type |UInt32| :direction :in)
   (:name |v2| :type |UInt32| :direction :in)
   (:name |v3| :type |UInt32| :direction :in))
  :return ("void") :category ("EXT_gpu_shader4") :version ("2.0") :extension
  ("soft" "WINSOFT") :glfflags ("ignore") :glsflags ("ignore") :glxflags
  ("ignore"))) 
(defglextfun
 (("Uniform3uiEXT" uniform-3ui-ext) :args
  ((:name |location| :type |Int32| :direction :in)
   (:name |v0| :type |UInt32| :direction :in)
   (:name |v1| :type |UInt32| :direction :in)
   (:name |v2| :type |UInt32| :direction :in))
  :return ("void") :category ("EXT_gpu_shader4") :version ("2.0") :extension
  ("soft" "WINSOFT") :glfflags ("ignore") :glsflags ("ignore") :glxflags
  ("ignore"))) 
(defglextfun
 (("Uniform2uiEXT" uniform-2ui-ext) :args
  ((:name |location| :type |Int32| :direction :in)
   (:name |v0| :type |UInt32| :direction :in)
   (:name |v1| :type |UInt32| :direction :in))
  :return ("void") :category ("EXT_gpu_shader4") :version ("2.0") :extension
  ("soft" "WINSOFT") :glfflags ("ignore") :glsflags ("ignore") :glxflags
  ("ignore"))) 
(defglextfun
 (("Uniform1uiEXT" uniform-1ui-ext) :args
  ((:name |location| :type |Int32| :direction :in)
   (:name |v0| :type |UInt32| :direction :in))
  :return ("void") :category ("EXT_gpu_shader4") :version ("2.0") :extension
  ("soft" "WINSOFT") :glfflags ("ignore") :glsflags ("ignore") :glxflags
  ("ignore"))) 
(defglextfun
 (("GetFragDataLocationEXT" get-frag-data-location-ext) :args
  ((:name |program| :type |UInt32| :direction :in)
   (:name |name| :type |Char| :direction :in :array t :size (|name|)))
  :return ("Int32") :category ("EXT_gpu_shader4") :dlflags ("notlistable")
  :version ("2.0") :extension ("soft" "WINSOFT") :glfflags ("ignore") :glsflags
  ("ignore") :glxflags ("ignore"))) 
(defglextfun
 (("BindFragDataLocationEXT" bind-frag-data-location-ext) :args
  ((:name |program| :type |UInt32| :direction :in)
   (:name |color| :type |UInt32| :direction :in)
   (:name |name| :type |Char| :direction :in :array t :size (|name|)))
  :return ("void") :category ("EXT_gpu_shader4") :dlflags ("notlistable")
  :version ("2.0") :extension ("soft" "WINSOFT") :glfflags ("ignore") :glsflags
  ("ignore") :glxflags ("ignore"))) 
(defglextfun
 (("GetUniformuivEXT" get-uniform-uiv-ext) :args
  ((:name |program| :type |UInt32| :direction :in)
   (:name |location| :type |Int32| :direction :in)
   (:name |params| :type |UInt32| :direction :out :array t :size
    (|program| |location|)))
  :return ("void") :category ("EXT_gpu_shader4") :dlflags ("notlistable")
  :version ("2.0") :extension ("soft" "WINSOFT") :glfflags ("ignore") :glsflags
  ("ignore") :glxflags ("ignore"))) 