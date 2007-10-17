
(in-package #:gl) 

;;;; EXT_vertex_array

(defconstant +vertex-array-ext+ #x8074) 
(defconstant +normal-array-ext+ #x8075) 
(defconstant +color-array-ext+ #x8076) 
(defconstant +index-array-ext+ #x8077) 
(defconstant +texture-coord-array-ext+ #x8078) 
(defconstant +edge-flag-array-ext+ #x8079) 
(defconstant +vertex-array-size-ext+ #x807A) 
(defconstant +vertex-array-type-ext+ #x807B) 
(defconstant +vertex-array-stride-ext+ #x807C) 
(defconstant +normal-array-type-ext+ #x807E) 
(defconstant +normal-array-stride-ext+ #x807F) 
(defconstant +color-array-size-ext+ #x8081) 
(defconstant +color-array-type-ext+ #x8082) 
(defconstant +color-array-stride-ext+ #x8083) 
(defconstant +index-array-type-ext+ #x8085) 
(defconstant +index-array-stride-ext+ #x8086) 
(defconstant +texture-coord-array-size-ext+ #x8088) 
(defconstant +texture-coord-array-type-ext+ #x8089) 
(defconstant +texture-coord-array-stride-ext+ #x808A) 
(defconstant +edge-flag-array-stride-ext+ #x808C) 
(defconstant +vertex-array-pointer-ext+ #x808E) 
(defconstant +normal-array-pointer-ext+ #x808F) 
(defconstant +color-array-pointer-ext+ #x8090) 
(defconstant +index-array-pointer-ext+ #x8091) 
(defconstant +texture-coord-array-pointer-ext+ #x8092) 
(defconstant +edge-flag-array-pointer-ext+ #x8093) 
(defconstant +vertex-array-ext+ #x8074) 
(defconstant +normal-array-ext+ #x8075) 
(defconstant +color-array-ext+ #x8076) 
(defconstant +index-array-ext+ #x8077) 
(defconstant +texture-coord-array-ext+ #x8078) 
(defconstant +edge-flag-array-ext+ #x8079) 
(defconstant +vertex-array-size-ext+ #x807A) 
(defconstant +vertex-array-type-ext+ #x807B) 
(defconstant +vertex-array-stride-ext+ #x807C) 
(defconstant +normal-array-type-ext+ #x807E) 
(defconstant +normal-array-stride-ext+ #x807F) 
(defconstant +color-array-size-ext+ #x8081) 
(defconstant +color-array-type-ext+ #x8082) 
(defconstant +color-array-stride-ext+ #x8083) 
(defconstant +index-array-type-ext+ #x8085) 
(defconstant +index-array-stride-ext+ #x8086) 
(defconstant +texture-coord-array-size-ext+ #x8088) 
(defconstant +texture-coord-array-type-ext+ #x8089) 
(defconstant +texture-coord-array-stride-ext+ #x808A) 
(defconstant +edge-flag-array-stride-ext+ #x808C) 
(defconstant +vertex-array-pointer-ext+ #x808E) 
(defconstant +normal-array-pointer-ext+ #x808F) 
(defconstant +color-array-pointer-ext+ #x8090) 
(defconstant +index-array-pointer-ext+ #x8091) 
(defconstant +texture-coord-array-pointer-ext+ #x8092) 
(defconstant +edge-flag-array-pointer-ext+ #x8093) 
(defglextfun
 (("VertexPointerEXT" vertex-pointer-ext) :args
  ((:name |size| :type |Int32| :direction :in)
   (:name |type| :type |VertexPointerType| :direction :in)
   (:name |stride| :type |SizeI| :direction :in)
   (:name |count| :type |SizeI| :direction :in)
   (:name |pointer| :type |Void| :direction :in :array t :size
    (|size| |type| |stride| |count|) :retained t))
  :return ("void") :category ("EXT_vertex_array") :dlflags ("notlistable")
  :glxflags ("client-handcode" "server-handcode" "EXT") :version ("1.0")
  :extension nil :glsflags ("client") :glsopcode ("0x0146") :offset ("453"))) 
(defglextfun
 (("TexCoordPointerEXT" tex-coord-pointer-ext) :args
  ((:name |size| :type |Int32| :direction :in)
   (:name |type| :type |TexCoordPointerType| :direction :in)
   (:name |stride| :type |SizeI| :direction :in)
   (:name |count| :type |SizeI| :direction :in)
   (:name |pointer| :type |Void| :direction :in :array t :size
    (|size| |type| |stride| |count|) :retained t))
  :return ("void") :category ("EXT_vertex_array") :dlflags ("notlistable")
  :glxflags ("client-handcode" "server-handcode" "EXT") :version ("1.0")
  :extension nil :glsflags ("client") :glsopcode ("0x0145") :offset ("452"))) 
(defglextfun
 (("NormalPointerEXT" normal-pointer-ext) :args
  ((:name |type| :type |NormalPointerType| :direction :in)
   (:name |stride| :type |SizeI| :direction :in)
   (:name |count| :type |SizeI| :direction :in)
   (:name |pointer| :type |Void| :direction :in :array t :size
    (|type| |stride| |count|) :retained t))
  :return ("void") :category ("EXT_vertex_array") :dlflags ("notlistable")
  :glxflags ("client-handcode" "server-handcode" "EXT") :version ("1.0")
  :extension nil :glsflags ("client") :glsopcode ("0x0144") :offset ("451"))) 
(defglextfun
 (("IndexPointerEXT" index-pointer-ext) :args
  ((:name |type| :type |IndexPointerType| :direction :in)
   (:name |stride| :type |SizeI| :direction :in)
   (:name |count| :type |SizeI| :direction :in)
   (:name |pointer| :type |Void| :direction :in :array t :size
    (|type| |stride| |count|) :retained t))
  :return ("void") :category ("EXT_vertex_array") :dlflags ("notlistable")
  :glxflags ("client-handcode" "server-handcode" "EXT") :version ("1.0")
  :extension nil :glsflags ("client") :glsopcode ("0x0143") :offset ("450"))) 
(defglextfun
 (("GetPointervEXT" get-pointerv-ext) :args
  ((:name |pname| :type |GetPointervPName| :direction :in)
   (:name |params| :type |VoidPointer| :direction :out :array t :size #x1))
  :return ("void") :category ("EXT_vertex_array") :dlflags ("notlistable")
  :glxflags ("client-handcode" "server-handcode" "EXT") :version ("1.0")
  :extension nil :alias ("GetPointerv") :glsalias ("GetPointerv"))) 
(defglextfun
 (("EdgeFlagPointerEXT" edge-flag-pointer-ext) :args
  ((:name |stride| :type |SizeI| :direction :in)
   (:name |count| :type |SizeI| :direction :in)
   (:name |pointer| :type |Boolean| :direction :in :array t :size
    (|stride| |count|) :retained t))
  :return ("void") :category ("EXT_vertex_array") :dlflags ("notlistable")
  :glxflags ("client-handcode" "server-handcode" "EXT") :version ("1.0")
  :extension nil :glsflags ("client") :glsopcode ("0x0141") :offset ("449"))) 
(defglextfun
 (("DrawArraysEXT" draw-arrays-ext) :args
  ((:name |mode| :type |BeginMode| :direction :in)
   (:name |first| :type |Int32| :direction :in)
   (:name |count| :type |SizeI| :direction :in))
  :return ("void") :category ("EXT_vertex_array") :dlflags ("handcode")
  :glxflags ("client-handcode" "server-handcode" "EXT") :version ("1.0")
  :glxropcode ("4116") :extension nil :alias ("DrawArrays") :glsopcode
  ("0x0140"))) 
(defglextfun
 (("ColorPointerEXT" color-pointer-ext) :args
  ((:name |size| :type |Int32| :direction :in)
   (:name |type| :type |ColorPointerType| :direction :in)
   (:name |stride| :type |SizeI| :direction :in)
   (:name |count| :type |SizeI| :direction :in)
   (:name |pointer| :type |Void| :direction :in :array t :size
    (|size| |type| |stride| |count|) :retained t))
  :return ("void") :category ("EXT_vertex_array") :dlflags ("notlistable")
  :glxflags ("client-handcode" "server-handcode" "EXT") :version ("1.0")
  :extension nil :glsflags ("client") :glsopcode ("0x013F") :offset ("448"))) 
(defglextfun
 (("ArrayElementEXT" array-element-ext) :args
  ((:name |i| :type |Int32| :direction :in)) :return ("void") :category
  ("EXT_vertex_array") :dlflags ("handcode") :glxflags
  ("client-handcode" "server-handcode" "EXT") :version ("1.0") :extension nil
  :alias ("ArrayElement") :glsalias ("ArrayElement"))) 