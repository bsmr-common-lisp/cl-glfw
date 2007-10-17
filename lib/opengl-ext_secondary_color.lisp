
(in-package #:gl) 

;;;; EXT_secondary_color

(defconstant +color-sum-ext+ #x8458) 
(defconstant +current-secondary-color-ext+ #x8459) 
(defconstant +secondary-color-array-size-ext+ #x845A) 
(defconstant +secondary-color-array-type-ext+ #x845B) 
(defconstant +secondary-color-array-stride-ext+ #x845C) 
(defconstant +secondary-color-array-pointer-ext+ #x845D) 
(defconstant +secondary-color-array-ext+ #x845E) 
(defglextfun
 (("SecondaryColorPointerEXT" secondary-color-pointer-ext) :args
  ((:name |size| :type |Int32| :direction :in)
   (:name |type| :type |ColorPointerType| :direction :in)
   (:name |stride| :type |SizeI| :direction :in)
   (:name |pointer| :type |Void| :direction :in :array t :size
    (|size| |type| |stride|) :retained t))
  :return ("void") :category ("EXT_secondary_color") :dlflags ("notlistable")
  :glxflags ("client-handcode" "server-handcode" "EXT") :version ("1.1")
  :extension nil :alias ("SecondaryColorPointer") :glsalias
  ("SecondaryColorPointer"))) 
(defglextfun
 (("SecondaryColor3usvEXT" secondary-color-3usv-ext) :args
  ((:name |v| :type |ColorUS| :direction :in :array t :size #x3)) :return
  ("void") :category ("EXT_secondary_color") :version ("1.1") :glxropcode
  ("4132") :alias ("SecondaryColor3usv") :glsalias ("SecondaryColor3usv"))) 
(defglextfun
 (("SecondaryColor3usEXT" secondary-color-3us-ext) :args
  ((:name |red| :type |ColorUS| :direction :in)
   (:name |green| :type |ColorUS| :direction :in)
   (:name |blue| :type |ColorUS| :direction :in))
  :return ("void") :category ("EXT_secondary_color") :vectorequiv
  ("SecondaryColor3usvEXT") :version ("1.1") :alias ("SecondaryColor3us")
  :glsalias ("SecondaryColor3us"))) 
(defglextfun
 (("SecondaryColor3uivEXT" secondary-color-3uiv-ext) :args
  ((:name |v| :type |ColorUI| :direction :in :array t :size #x3)) :return
  ("void") :category ("EXT_secondary_color") :version ("1.1") :glxropcode
  ("4133") :alias ("SecondaryColor3uiv") :glsalias ("SecondaryColor3uiv"))) 
(defglextfun
 (("SecondaryColor3uiEXT" secondary-color-3ui-ext) :args
  ((:name |red| :type |ColorUI| :direction :in)
   (:name |green| :type |ColorUI| :direction :in)
   (:name |blue| :type |ColorUI| :direction :in))
  :return ("void") :category ("EXT_secondary_color") :vectorequiv
  ("SecondaryColor3uivEXT") :version ("1.1") :alias ("SecondaryColor3ui")
  :glsalias ("SecondaryColor3ui"))) 
(defglextfun
 (("SecondaryColor3ubvEXT" secondary-color-3ubv-ext) :args
  ((:name |v| :type |ColorUB| :direction :in :array t :size #x3)) :return
  ("void") :category ("EXT_secondary_color") :version ("1.1") :glxropcode
  ("4131") :alias ("SecondaryColor3ubv") :glsalias ("SecondaryColor3ubv"))) 
(defglextfun
 (("SecondaryColor3ubEXT" secondary-color-3ub-ext) :args
  ((:name |red| :type |ColorUB| :direction :in)
   (:name |green| :type |ColorUB| :direction :in)
   (:name |blue| :type |ColorUB| :direction :in))
  :return ("void") :category ("EXT_secondary_color") :vectorequiv
  ("SecondaryColor3ubvEXT") :version ("1.1") :alias ("SecondaryColor3ub")
  :glsalias ("SecondaryColor3ub"))) 
(defglextfun
 (("SecondaryColor3svEXT" secondary-color-3sv-ext) :args
  ((:name |v| :type |ColorS| :direction :in :array t :size #x3)) :return
  ("void") :category ("EXT_secondary_color") :version ("1.1") :glxropcode
  ("4127") :alias ("SecondaryColor3sv") :glsalias ("SecondaryColor3sv"))) 
(defglextfun
 (("SecondaryColor3sEXT" secondary-color-3s-ext) :args
  ((:name |red| :type |ColorS| :direction :in)
   (:name |green| :type |ColorS| :direction :in)
   (:name |blue| :type |ColorS| :direction :in))
  :return ("void") :category ("EXT_secondary_color") :vectorequiv
  ("SecondaryColor3svEXT") :version ("1.1") :alias ("SecondaryColor3s")
  :glsalias ("SecondaryColor3s"))) 
(defglextfun
 (("SecondaryColor3ivEXT" secondary-color-3iv-ext) :args
  ((:name |v| :type |ColorI| :direction :in :array t :size #x3)) :return
  ("void") :category ("EXT_secondary_color") :version ("1.1") :glxropcode
  ("4128") :glsopcode ("0x0200") :offset ("568") :alias ("SecondaryColor3iv")
  :glsalias ("SecondaryColor3iv"))) 
(defglextfun
 (("SecondaryColor3iEXT" secondary-color-3i-ext) :args
  ((:name |red| :type |ColorI| :direction :in)
   (:name |green| :type |ColorI| :direction :in)
   (:name |blue| :type |ColorI| :direction :in))
  :return ("void") :category ("EXT_secondary_color") :vectorequiv
  ("SecondaryColor3ivEXT") :version ("1.1") :alias ("SecondaryColor3i")
  :glsalias ("SecondaryColor3i"))) 
(defglextfun
 (("SecondaryColor3fvEXT" secondary-color-3fv-ext) :args
  ((:name |v| :type |ColorF| :direction :in :array t :size #x3)) :return
  ("void") :category ("EXT_secondary_color") :version ("1.1") :glxropcode
  ("4129") :alias ("SecondaryColor3fv") :glsalias ("SecondaryColor3fv"))) 
(defglextfun
 (("SecondaryColor3fEXT" secondary-color-3f-ext) :args
  ((:name |red| :type |ColorF| :direction :in)
   (:name |green| :type |ColorF| :direction :in)
   (:name |blue| :type |ColorF| :direction :in))
  :return ("void") :category ("EXT_secondary_color") :vectorequiv
  ("SecondaryColor3fvEXT") :version ("1.1") :alias ("SecondaryColor3f")
  :glsalias ("SecondaryColor3f"))) 
(defglextfun
 (("SecondaryColor3dvEXT" secondary-color-3dv-ext) :args
  ((:name |v| :type |ColorD| :direction :in :array t :size #x3)) :return
  ("void") :category ("EXT_secondary_color") :version ("1.1") :glxropcode
  ("4130") :alias ("SecondaryColor3dv") :glsalias ("SecondaryColor3dv"))) 
(defglextfun
 (("SecondaryColor3dEXT" secondary-color-3d-ext) :args
  ((:name |red| :type |ColorD| :direction :in)
   (:name |green| :type |ColorD| :direction :in)
   (:name |blue| :type |ColorD| :direction :in))
  :return ("void") :category ("EXT_secondary_color") :vectorequiv
  ("SecondaryColor3dvEXT") :version ("1.1") :alias ("SecondaryColor3d")
  :glsalias ("SecondaryColor3d"))) 
(defglextfun
 (("SecondaryColor3bvEXT" secondary-color-3bv-ext) :args
  ((:name |v| :type |ColorB| :direction :in :array t :size #x3)) :return
  ("void") :category ("EXT_secondary_color") :version ("1.1") :glxropcode
  ("4126") :alias ("SecondaryColor3bv") :glsalias ("SecondaryColor3bv"))) 
(defglextfun
 (("SecondaryColor3bEXT" secondary-color-3b-ext) :args
  ((:name |red| :type |ColorB| :direction :in)
   (:name |green| :type |ColorB| :direction :in)
   (:name |blue| :type |ColorB| :direction :in))
  :return ("void") :category ("EXT_secondary_color") :vectorequiv
  ("SecondaryColor3bvEXT") :version ("1.1") :alias ("SecondaryColor3b")
  :glsalias ("SecondaryColor3b"))) 