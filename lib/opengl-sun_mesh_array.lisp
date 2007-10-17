
(in-package #:gl) 

;;;; SUN_mesh_array

(defconstant +quad-mesh-sun+ #x8614) 
(defconstant +triangle-mesh-sun+ #x8615) 
(defglextfun
 (("DrawMeshArraysSUN" draw-mesh-arrays-sun) :args
  ((:name |mode| :type |BeginMode| :direction :in)
   (:name |first| :type |Int32| :direction :in)
   (:name |count| :type |SizeI| :direction :in)
   (:name |width| :type |SizeI| :direction :in))
  :return ("void") :category ("SUN_mesh_array") :dlflags ("handcode") :glxflags
  ("client-handcode" "client-intercept" "server-handcode") :version ("1.1")
  :glxropcode ("?") :glsopcode ("?") :offset ("?"))) 