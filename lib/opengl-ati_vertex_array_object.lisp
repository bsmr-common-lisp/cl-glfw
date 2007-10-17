
(in-package #:gl) 

;;;; ATI_vertex_array_object

(defconstant +static-ati+ #x8760) 
(defconstant +dynamic-ati+ #x8761) 
(defconstant +preserve-ati+ #x8762) 
(defconstant +discard-ati+ #x8763) 
(defconstant +object-buffer-size-ati+ #x8764) 
(defconstant +object-buffer-usage-ati+ #x8765) 
(defconstant +array-object-buffer-ati+ #x8766) 
(defconstant +array-object-offset-ati+ #x8767) 
(defglextfun
 (("GetVariantArrayObjectivATI" get-variant-array-object-iv-ati) :args
  ((:name |id| :type |UInt32| :direction :in)
   (:name |pname| :type |ArrayObjectPNameATI| :direction :in)
   (:name |params| :type |Int32| :direction :out :array t :size #x1))
  :return ("void") :category ("ATI_vertex_array_object") :dlflags
  ("notlistable") :version ("1.2") :extension nil :glxsingle ("?") :glxflags
  ("ignore") :glsflags ("ignore" "get") :offset ("?"))) 
(defglextfun
 (("GetVariantArrayObjectfvATI" get-variant-array-object-fv-ati) :args
  ((:name |id| :type |UInt32| :direction :in)
   (:name |pname| :type |ArrayObjectPNameATI| :direction :in)
   (:name |params| :type |Float32| :direction :out :array t :size #x1))
  :return ("void") :category ("ATI_vertex_array_object") :dlflags
  ("notlistable") :version ("1.2") :extension nil :glxsingle ("?") :glxflags
  ("ignore") :glsflags ("ignore" "get") :offset ("?"))) 
(defglextfun
 (("VariantArrayObjectATI" variant-array-object-ati) :args
  ((:name |id| :type |UInt32| :direction :in)
   (:name |type| :type |ScalarType| :direction :in)
   (:name |stride| :type |SizeI| :direction :in)
   (:name |buffer| :type |UInt32| :direction :in)
   (:name |offset| :type |UInt32| :direction :in))
  :return ("void") :category ("ATI_vertex_array_object") :version ("1.2")
  :extension nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore")
  :offset ("?"))) 
(defglextfun
 (("GetArrayObjectivATI" get-array-object-iv-ati) :args
  ((:name |array| :type |EnableCap| :direction :in)
   (:name |pname| :type |ArrayObjectPNameATI| :direction :in)
   (:name |params| :type |Int32| :direction :out :array t :size #x1))
  :return ("void") :category ("ATI_vertex_array_object") :dlflags
  ("notlistable") :version ("1.2") :extension nil :glxsingle ("?") :glxflags
  ("ignore") :glsflags ("ignore" "get") :offset ("?"))) 
(defglextfun
 (("GetArrayObjectfvATI" get-array-object-fv-ati) :args
  ((:name |array| :type |EnableCap| :direction :in)
   (:name |pname| :type |ArrayObjectPNameATI| :direction :in)
   (:name |params| :type |Float32| :direction :out :array t :size #x1))
  :return ("void") :category ("ATI_vertex_array_object") :dlflags
  ("notlistable") :version ("1.2") :extension nil :glxsingle ("?") :glxflags
  ("ignore") :glsflags ("ignore" "get") :offset ("?"))) 
(defglextfun
 (("ArrayObjectATI" array-object-ati) :args
  ((:name |array| :type |EnableCap| :direction :in)
   (:name |size| :type |Int32| :direction :in)
   (:name |type| :type |ScalarType| :direction :in)
   (:name |stride| :type |SizeI| :direction :in)
   (:name |buffer| :type |UInt32| :direction :in)
   (:name |offset| :type |UInt32| :direction :in))
  :return ("void") :category ("ATI_vertex_array_object") :version ("1.2")
  :extension nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore")
  :offset ("?"))) 
(defglextfun
 (("FreeObjectBufferATI" free-object-buffer-ati) :args
  ((:name |buffer| :type |UInt32| :direction :in)) :return ("void") :category
  ("ATI_vertex_array_object") :version ("1.2") :extension nil :glxropcode ("?")
  :glxflags ("ignore") :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("GetObjectBufferivATI" get-object-buffer-iv-ati) :args
  ((:name |buffer| :type |UInt32| :direction :in)
   (:name |pname| :type |ArrayObjectPNameATI| :direction :in)
   (:name |params| :type |Int32| :direction :out :array t :size #x1))
  :return ("void") :category ("ATI_vertex_array_object") :dlflags
  ("notlistable") :version ("1.2") :extension nil :glxsingle ("?") :glxflags
  ("ignore") :glsflags ("ignore" "get") :offset ("?"))) 
(defglextfun
 (("GetObjectBufferfvATI" get-object-buffer-fv-ati) :args
  ((:name |buffer| :type |UInt32| :direction :in)
   (:name |pname| :type |ArrayObjectPNameATI| :direction :in)
   (:name |params| :type |Float32| :direction :out :array t :size #x1))
  :return ("void") :category ("ATI_vertex_array_object") :dlflags
  ("notlistable") :version ("1.2") :extension nil :glxsingle ("?") :glxflags
  ("ignore") :glsflags ("ignore" "get") :offset ("?"))) 
(defglextfun
 (("UpdateObjectBufferATI" update-object-buffer-ati) :args
  ((:name |buffer| :type |UInt32| :direction :in)
   (:name |offset| :type |UInt32| :direction :in)
   (:name |size| :type |SizeI| :direction :in)
   (:name |pointer| :type |ConstVoid| :direction :in :array t :size size)
   (:name |preserve| :type |PreserveModeATI| :direction :in))
  :return ("void") :category ("ATI_vertex_array_object") :version ("1.2")
  :extension nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore")
  :offset ("?"))) 
(defglextfun
 (("IsObjectBufferATI" is-object-buffer-ati) :args
  ((:name |buffer| :type |UInt32| :direction :in)) :return ("Boolean")
  :category ("ATI_vertex_array_object") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore" "get") :offset
  ("?"))) 
(defglextfun
 (("NewObjectBufferATI" new-object-buffer-ati) :args
  ((:name |size| :type |SizeI| :direction :in)
   (:name |pointer| :type |ConstVoid| :direction :in :array t :size size)
   (:name |usage| :type |ArrayObjectUsageATI| :direction :in))
  :return ("UInt32") :category ("ATI_vertex_array_object") :version ("1.2")
  :extension nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore")
  :offset ("?"))) 