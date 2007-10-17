
(in-package #:gl) 

;;;; ATI_element_array

(defconstant +element-array-ati+ #x8768) 
(defconstant +element-array-type-ati+ #x8769) 
(defconstant +element-array-pointer-ati+ #x876A) 
(defglextfun
 (("DrawRangeElementArrayATI" draw-range-element-array-ati) :args
  ((:name |mode| :type |BeginMode| :direction :in)
   (:name |start| :type |UInt32| :direction :in)
   (:name |end| :type |UInt32| :direction :in)
   (:name |count| :type |SizeI| :direction :in))
  :return ("void") :category ("ATI_element_array") :dlflags ("handcode")
  :glxflags ("client-handcode" "client-intercept" "server-handcode") :version
  ("1.2") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("DrawElementArrayATI" draw-element-array-ati) :args
  ((:name |mode| :type |BeginMode| :direction :in)
   (:name |count| :type |SizeI| :direction :in))
  :return ("void") :category ("ATI_element_array") :dlflags ("handcode")
  :glxflags ("client-handcode" "client-intercept" "server-handcode") :version
  ("1.2") :glsopcode ("?") :offset ("?"))) 
(defglextfun
 (("ElementPointerATI" element-pointer-ati) :args
  ((:name |type| :type |ElementPointerTypeATI| :direction :in)
   (:name |pointer| :type |Void| :direction :in :array t :size (|type|)
    :retained t))
  :return ("void") :category ("ATI_element_array") :dlflags ("notlistable")
  :glxflags ("client-handcode" "client-intercept" "server-handcode") :version
  ("1.2") :glsflags ("ignore") :offset ("?"))) 