;;;; This file was automatically generated by /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; nv_vertex_attrib_integer_64bit

(defconstant +int64-nv+ #x140E) 
(defconstant +unsigned-int64-nv+ #x140F) 
(defconstant +int64-nv+ #x140E) 
(defconstant +unsigned-int64-nv+ #x140F) 
(defglextfun "VertexAttribLFormatNV" vertex-attrib-lformat-nv :return "void"
 :args
 ((:name |index| :type |UInt32| :direction :in)
  (:name |size| :type |Int32| :direction :in)
  (:name |type| :type |GLenum| :direction :in)
  (:name |stride| :type |SizeI| :direction :in))
 :category "NV_vertex_attrib_integer_64bit" :deprecated nil :version "4.1") 
(defglextfun "GetVertexAttribLui64vNV" get-vertex-attrib-lui-64v-nv :return
 "void" :args
 ((:name |index| :type |UInt32| :direction :in)
  (:name |pname| :type |GLenum| :direction :in)
  (:name |params| :type |UInt64EXT| :direction :out :array t :size (|pname|)))
 :category "NV_vertex_attrib_integer_64bit" :deprecated nil :version "4.1") 
(defglextfun "GetVertexAttribLi64vNV" get-vertex-attrib-li-64v-nv :return
 "void" :args
 ((:name |index| :type |UInt32| :direction :in)
  (:name |pname| :type |GLenum| :direction :in)
  (:name |params| :type |Int64EXT| :direction :out :array t :size (|pname|)))
 :category "NV_vertex_attrib_integer_64bit" :deprecated nil :version "4.1") 
(defglextfun "VertexAttribL4ui64vNV" vertex-attrib-l4ui-64v-nv :return "void"
 :args
 ((:name |index| :type |UInt32| :direction :in)
  (:name |v| :type |UInt64EXT| :direction :in :array t :size #x4))
 :category "NV_vertex_attrib_integer_64bit" :deprecated nil :version "4.1") 
(defglextfun "VertexAttribL3ui64vNV" vertex-attrib-l3ui-64v-nv :return "void"
 :args
 ((:name |index| :type |UInt32| :direction :in)
  (:name |v| :type |UInt64EXT| :direction :in :array t :size #x3))
 :category "NV_vertex_attrib_integer_64bit" :deprecated nil :version "4.1") 
(defglextfun "VertexAttribL2ui64vNV" vertex-attrib-l2ui-64v-nv :return "void"
 :args
 ((:name |index| :type |UInt32| :direction :in)
  (:name |v| :type |UInt64EXT| :direction :in :array t :size #x2))
 :category "NV_vertex_attrib_integer_64bit" :deprecated nil :version "4.1") 
(defglextfun "VertexAttribL1ui64vNV" vertex-attrib-l1ui-64v-nv :return "void"
 :args
 ((:name |index| :type |UInt32| :direction :in)
  (:name |v| :type |UInt64EXT| :direction :in :array t :size #x1))
 :category "NV_vertex_attrib_integer_64bit" :deprecated nil :version "4.1") 
(defglextfun "VertexAttribL4ui64NV" vertex-attrib-l4ui-64-nv :return "void"
 :args
 ((:name |index| :type |UInt32| :direction :in)
  (:name |x| :type |UInt64EXT| :direction :in)
  (:name |y| :type |UInt64EXT| :direction :in)
  (:name |z| :type |UInt64EXT| :direction :in)
  (:name |w| :type |UInt64EXT| :direction :in))
 :category "NV_vertex_attrib_integer_64bit" :deprecated nil :version "4.1") 
(defglextfun "VertexAttribL3ui64NV" vertex-attrib-l3ui-64-nv :return "void"
 :args
 ((:name |index| :type |UInt32| :direction :in)
  (:name |x| :type |UInt64EXT| :direction :in)
  (:name |y| :type |UInt64EXT| :direction :in)
  (:name |z| :type |UInt64EXT| :direction :in))
 :category "NV_vertex_attrib_integer_64bit" :deprecated nil :version "4.1") 
(defglextfun "VertexAttribL2ui64NV" vertex-attrib-l2ui-64-nv :return "void"
 :args
 ((:name |index| :type |UInt32| :direction :in)
  (:name |x| :type |UInt64EXT| :direction :in)
  (:name |y| :type |UInt64EXT| :direction :in))
 :category "NV_vertex_attrib_integer_64bit" :deprecated nil :version "4.1") 
(defglextfun "VertexAttribL1ui64NV" vertex-attrib-l1ui-64-nv :return "void"
 :args
 ((:name |index| :type |UInt32| :direction :in)
  (:name |x| :type |UInt64EXT| :direction :in))
 :category "NV_vertex_attrib_integer_64bit" :deprecated nil :version "4.1") 
(defglextfun "VertexAttribL4i64vNV" vertex-attrib-l4i-64v-nv :return "void"
 :args
 ((:name |index| :type |UInt32| :direction :in)
  (:name |v| :type |Int64EXT| :direction :in :array t :size #x4))
 :category "NV_vertex_attrib_integer_64bit" :deprecated nil :version "4.1") 
(defglextfun "VertexAttribL3i64vNV" vertex-attrib-l3i-64v-nv :return "void"
 :args
 ((:name |index| :type |UInt32| :direction :in)
  (:name |v| :type |Int64EXT| :direction :in :array t :size #x3))
 :category "NV_vertex_attrib_integer_64bit" :deprecated nil :version "4.1") 
(defglextfun "VertexAttribL2i64vNV" vertex-attrib-l2i-64v-nv :return "void"
 :args
 ((:name |index| :type |UInt32| :direction :in)
  (:name |v| :type |Int64EXT| :direction :in :array t :size #x2))
 :category "NV_vertex_attrib_integer_64bit" :deprecated nil :version "4.1") 
(defglextfun "VertexAttribL1i64vNV" vertex-attrib-l1i-64v-nv :return "void"
 :args
 ((:name |index| :type |UInt32| :direction :in)
  (:name |v| :type |Int64EXT| :direction :in :array t :size #x1))
 :category "NV_vertex_attrib_integer_64bit" :deprecated nil :version "4.1") 
(defglextfun "VertexAttribL4i64NV" vertex-attrib-l4i-64-nv :return "void" :args
 ((:name |index| :type |UInt32| :direction :in)
  (:name |x| :type |Int64EXT| :direction :in)
  (:name |y| :type |Int64EXT| :direction :in)
  (:name |z| :type |Int64EXT| :direction :in)
  (:name |w| :type |Int64EXT| :direction :in))
 :category "NV_vertex_attrib_integer_64bit" :deprecated nil :version "4.1") 
(defglextfun "VertexAttribL3i64NV" vertex-attrib-l3i-64-nv :return "void" :args
 ((:name |index| :type |UInt32| :direction :in)
  (:name |x| :type |Int64EXT| :direction :in)
  (:name |y| :type |Int64EXT| :direction :in)
  (:name |z| :type |Int64EXT| :direction :in))
 :category "NV_vertex_attrib_integer_64bit" :deprecated nil :version "4.1") 
(defglextfun "VertexAttribL2i64NV" vertex-attrib-l2i-64-nv :return "void" :args
 ((:name |index| :type |UInt32| :direction :in)
  (:name |x| :type |Int64EXT| :direction :in)
  (:name |y| :type |Int64EXT| :direction :in))
 :category "NV_vertex_attrib_integer_64bit" :deprecated nil :version "4.1") 
(defglextfun "VertexAttribL1i64NV" vertex-attrib-l1i-64-nv :return "void" :args
 ((:name |index| :type |UInt32| :direction :in)
  (:name |x| :type |Int64EXT| :direction :in))
 :category "NV_vertex_attrib_integer_64bit" :deprecated nil :version "4.1") 
(make-extension-loader |NV_vertex_attrib_integer_64bit|
 (("VertexAttribLFormatNV" vertex-attrib-lformat-nv :return "void" :args
   ((:name |index| :type |UInt32| :direction :in)
    (:name |size| :type |Int32| :direction :in)
    (:name |type| :type |GLenum| :direction :in)
    (:name |stride| :type |SizeI| :direction :in))
   :category "NV_vertex_attrib_integer_64bit" :deprecated nil :version "4.1")
  ("GetVertexAttribLui64vNV" get-vertex-attrib-lui-64v-nv :return "void" :args
   ((:name |index| :type |UInt32| :direction :in)
    (:name |pname| :type |GLenum| :direction :in)
    (:name |params| :type |UInt64EXT| :direction :out :array t :size
     (|pname|)))
   :category "NV_vertex_attrib_integer_64bit" :deprecated nil :version "4.1")
  ("GetVertexAttribLi64vNV" get-vertex-attrib-li-64v-nv :return "void" :args
   ((:name |index| :type |UInt32| :direction :in)
    (:name |pname| :type |GLenum| :direction :in)
    (:name |params| :type |Int64EXT| :direction :out :array t :size (|pname|)))
   :category "NV_vertex_attrib_integer_64bit" :deprecated nil :version "4.1")
  ("VertexAttribL4ui64vNV" vertex-attrib-l4ui-64v-nv :return "void" :args
   ((:name |index| :type |UInt32| :direction :in)
    (:name |v| :type |UInt64EXT| :direction :in :array t :size #x4))
   :category "NV_vertex_attrib_integer_64bit" :deprecated nil :version "4.1")
  ("VertexAttribL3ui64vNV" vertex-attrib-l3ui-64v-nv :return "void" :args
   ((:name |index| :type |UInt32| :direction :in)
    (:name |v| :type |UInt64EXT| :direction :in :array t :size #x3))
   :category "NV_vertex_attrib_integer_64bit" :deprecated nil :version "4.1")
  ("VertexAttribL2ui64vNV" vertex-attrib-l2ui-64v-nv :return "void" :args
   ((:name |index| :type |UInt32| :direction :in)
    (:name |v| :type |UInt64EXT| :direction :in :array t :size #x2))
   :category "NV_vertex_attrib_integer_64bit" :deprecated nil :version "4.1")
  ("VertexAttribL1ui64vNV" vertex-attrib-l1ui-64v-nv :return "void" :args
   ((:name |index| :type |UInt32| :direction :in)
    (:name |v| :type |UInt64EXT| :direction :in :array t :size #x1))
   :category "NV_vertex_attrib_integer_64bit" :deprecated nil :version "4.1")
  ("VertexAttribL4ui64NV" vertex-attrib-l4ui-64-nv :return "void" :args
   ((:name |index| :type |UInt32| :direction :in)
    (:name |x| :type |UInt64EXT| :direction :in)
    (:name |y| :type |UInt64EXT| :direction :in)
    (:name |z| :type |UInt64EXT| :direction :in)
    (:name |w| :type |UInt64EXT| :direction :in))
   :category "NV_vertex_attrib_integer_64bit" :deprecated nil :version "4.1")
  ("VertexAttribL3ui64NV" vertex-attrib-l3ui-64-nv :return "void" :args
   ((:name |index| :type |UInt32| :direction :in)
    (:name |x| :type |UInt64EXT| :direction :in)
    (:name |y| :type |UInt64EXT| :direction :in)
    (:name |z| :type |UInt64EXT| :direction :in))
   :category "NV_vertex_attrib_integer_64bit" :deprecated nil :version "4.1")
  ("VertexAttribL2ui64NV" vertex-attrib-l2ui-64-nv :return "void" :args
   ((:name |index| :type |UInt32| :direction :in)
    (:name |x| :type |UInt64EXT| :direction :in)
    (:name |y| :type |UInt64EXT| :direction :in))
   :category "NV_vertex_attrib_integer_64bit" :deprecated nil :version "4.1")
  ("VertexAttribL1ui64NV" vertex-attrib-l1ui-64-nv :return "void" :args
   ((:name |index| :type |UInt32| :direction :in)
    (:name |x| :type |UInt64EXT| :direction :in))
   :category "NV_vertex_attrib_integer_64bit" :deprecated nil :version "4.1")
  ("VertexAttribL4i64vNV" vertex-attrib-l4i-64v-nv :return "void" :args
   ((:name |index| :type |UInt32| :direction :in)
    (:name |v| :type |Int64EXT| :direction :in :array t :size #x4))
   :category "NV_vertex_attrib_integer_64bit" :deprecated nil :version "4.1")
  ("VertexAttribL3i64vNV" vertex-attrib-l3i-64v-nv :return "void" :args
   ((:name |index| :type |UInt32| :direction :in)
    (:name |v| :type |Int64EXT| :direction :in :array t :size #x3))
   :category "NV_vertex_attrib_integer_64bit" :deprecated nil :version "4.1")
  ("VertexAttribL2i64vNV" vertex-attrib-l2i-64v-nv :return "void" :args
   ((:name |index| :type |UInt32| :direction :in)
    (:name |v| :type |Int64EXT| :direction :in :array t :size #x2))
   :category "NV_vertex_attrib_integer_64bit" :deprecated nil :version "4.1")
  ("VertexAttribL1i64vNV" vertex-attrib-l1i-64v-nv :return "void" :args
   ((:name |index| :type |UInt32| :direction :in)
    (:name |v| :type |Int64EXT| :direction :in :array t :size #x1))
   :category "NV_vertex_attrib_integer_64bit" :deprecated nil :version "4.1")
  ("VertexAttribL4i64NV" vertex-attrib-l4i-64-nv :return "void" :args
   ((:name |index| :type |UInt32| :direction :in)
    (:name |x| :type |Int64EXT| :direction :in)
    (:name |y| :type |Int64EXT| :direction :in)
    (:name |z| :type |Int64EXT| :direction :in)
    (:name |w| :type |Int64EXT| :direction :in))
   :category "NV_vertex_attrib_integer_64bit" :deprecated nil :version "4.1")
  ("VertexAttribL3i64NV" vertex-attrib-l3i-64-nv :return "void" :args
   ((:name |index| :type |UInt32| :direction :in)
    (:name |x| :type |Int64EXT| :direction :in)
    (:name |y| :type |Int64EXT| :direction :in)
    (:name |z| :type |Int64EXT| :direction :in))
   :category "NV_vertex_attrib_integer_64bit" :deprecated nil :version "4.1")
  ("VertexAttribL2i64NV" vertex-attrib-l2i-64-nv :return "void" :args
   ((:name |index| :type |UInt32| :direction :in)
    (:name |x| :type |Int64EXT| :direction :in)
    (:name |y| :type |Int64EXT| :direction :in))
   :category "NV_vertex_attrib_integer_64bit" :deprecated nil :version "4.1")
  ("VertexAttribL1i64NV" vertex-attrib-l1i-64-nv :return "void" :args
   ((:name |index| :type |UInt32| :direction :in)
    (:name |x| :type |Int64EXT| :direction :in))
   :category "NV_vertex_attrib_integer_64bit" :deprecated nil :version "4.1"))) 
