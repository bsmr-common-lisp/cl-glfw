
(in-package #:gl) 

;;;; EXT_draw_range_elements

(defconstant +max-elements-vertices-ext+ #x80E8) 
(defconstant +max-elements-indices-ext+ #x80E9) 
(defglextfun
 (("DrawRangeElementsEXT" draw-range-elements-ext) :args
  ((:name |mode| :type |BeginMode| :direction :in)
   (:name |start| :type |UInt32| :direction :in)
   (:name |end| :type |UInt32| :direction :in)
   (:name |count| :type |SizeI| :direction :in)
   (:name |type| :type |DrawElementsType| :direction :in)
   (:name |indices| :type |Void| :direction :in :array t :size
    (|count| |type|)))
  :return ("void") :category ("EXT_draw_range_elements") :dlflags ("handcode")
  :glxflags ("client-handcode" "client-intercept" "server-handcode") :version
  ("1.1") :alias ("DrawRangeElements") :glsalias ("DrawRangeElements"))) 