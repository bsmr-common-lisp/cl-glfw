
(in-package #:gl) 

;;;; VERSION_1_3

(defconstant +texture0+ #x84C0) 
(defconstant +texture1+ #x84C1) 
(defconstant +texture2+ #x84C2) 
(defconstant +texture3+ #x84C3) 
(defconstant +texture4+ #x84C4) 
(defconstant +texture5+ #x84C5) 
(defconstant +texture6+ #x84C6) 
(defconstant +texture7+ #x84C7) 
(defconstant +texture8+ #x84C8) 
(defconstant +texture9+ #x84C9) 
(defconstant +texture10+ #x84CA) 
(defconstant +texture11+ #x84CB) 
(defconstant +texture12+ #x84CC) 
(defconstant +texture13+ #x84CD) 
(defconstant +texture14+ #x84CE) 
(defconstant +texture15+ #x84CF) 
(defconstant +texture16+ #x84D0) 
(defconstant +texture17+ #x84D1) 
(defconstant +texture18+ #x84D2) 
(defconstant +texture19+ #x84D3) 
(defconstant +texture20+ #x84D4) 
(defconstant +texture21+ #x84D5) 
(defconstant +texture22+ #x84D6) 
(defconstant +texture23+ #x84D7) 
(defconstant +texture24+ #x84D8) 
(defconstant +texture25+ #x84D9) 
(defconstant +texture26+ #x84DA) 
(defconstant +texture27+ #x84DB) 
(defconstant +texture28+ #x84DC) 
(defconstant +texture29+ #x84DD) 
(defconstant +texture30+ #x84DE) 
(defconstant +texture31+ #x84DF) 
(defconstant +active-texture+ #x84E0) 
(defconstant +client-active-texture+ #x84E1) 
(defconstant +max-texture-units+ #x84E2) 
(defconstant +transpose-modelview-matrix+ #x84E3) 
(defconstant +transpose-projection-matrix+ #x84E4) 
(defconstant +transpose-texture-matrix+ #x84E5) 
(defconstant +transpose-color-matrix+ #x84E6) 
(defconstant +multisample+ #x809D) 
(defconstant +sample-alpha-to-coverage+ #x809E) 
(defconstant +sample-alpha-to-one+ #x809F) 
(defconstant +sample-coverage+ #x80A0) 
(defconstant +sample-buffers+ #x80A8) 
(defconstant +samples+ #x80A9) 
(defconstant +sample-coverage-value+ #x80AA) 
(defconstant +sample-coverage-invert+ #x80AB) 
(defconstant +multisample-bit+ #x20000000) 
(defconstant +normal-map+ #x8511) 
(defconstant +reflection-map+ #x8512) 
(defconstant +texture-cube-map+ #x8513) 
(defconstant +texture-binding-cube-map+ #x8514) 
(defconstant +texture-cube-map-positive-x+ #x8515) 
(defconstant +texture-cube-map-negative-x+ #x8516) 
(defconstant +texture-cube-map-positive-y+ #x8517) 
(defconstant +texture-cube-map-negative-y+ #x8518) 
(defconstant +texture-cube-map-positive-z+ #x8519) 
(defconstant +texture-cube-map-negative-z+ #x851A) 
(defconstant +proxy-texture-cube-map+ #x851B) 
(defconstant +max-cube-map-texture-size+ #x851C) 
(defconstant +compressed-alpha+ #x84E9) 
(defconstant +compressed-luminance+ #x84EA) 
(defconstant +compressed-luminance-alpha+ #x84EB) 
(defconstant +compressed-intensity+ #x84EC) 
(defconstant +compressed-rgb+ #x84ED) 
(defconstant +compressed-rgba+ #x84EE) 
(defconstant +texture-compression-hint+ #x84EF) 
(defconstant +texture-compressed-image-size+ #x86A0) 
(defconstant +texture-compressed+ #x86A1) 
(defconstant +num-compressed-texture-formats+ #x86A2) 
(defconstant +compressed-texture-formats+ #x86A3) 
(defconstant +combine+ #x8570) 
(defconstant +combine-rgb+ #x8571) 
(defconstant +combine-alpha+ #x8572) 
(defconstant +source0-rgb+ #x8580) 
(defconstant +source1-rgb+ #x8581) 
(defconstant +source2-rgb+ #x8582) 
(defconstant +source0-alpha+ #x8588) 
(defconstant +source1-alpha+ #x8589) 
(defconstant +source2-alpha+ #x858A) 
(defconstant +operand0-rgb+ #x8590) 
(defconstant +operand1-rgb+ #x8591) 
(defconstant +operand2-rgb+ #x8592) 
(defconstant +operand0-alpha+ #x8598) 
(defconstant +operand1-alpha+ #x8599) 
(defconstant +operand2-alpha+ #x859A) 
(defconstant +rgb-scale+ #x8573) 
(defconstant +add-signed+ #x8574) 
(defconstant +interpolate+ #x8575) 
(defconstant +subtract+ #x84E7) 
(defconstant +constant+ #x8576) 
(defconstant +primary-color+ #x8577) 
(defconstant +previous+ #x8578) 
(defconstant +dot3-rgb+ #x86AE) 
(defconstant +dot3-rgba+ #x86AF) 
(defglfun
 (("GetCompressedTexImage" get-compressed-tex-image) :args
  ((:name |target| :type |TextureTarget| :direction :in)
   (:name |level| :type |CheckedInt32| :direction :in)
   (:name |img| :type |CompressedTextureARB| :direction :out :array t :size
    (|target| |level|)))
  :return ("void") :category ("VERSION_1_3") :dlflags ("notlistable") :glxflags
  ("ARB" "client-handcode" "server-handcode") :version ("1.3") :glxsingle
  ("160") :glsflags ("get") :glsopcode ("0x01CF") :wglflags
  ("client-handcode" "server-handcode") :offset ("560"))) 
(defglfun
 (("CompressedTexSubImage1D" compressed-tex-sub-image-1d) :args
  ((:name |target| :type |TextureTarget| :direction :in)
   (:name |level| :type |CheckedInt32| :direction :in)
   (:name |xoffset| :type |CheckedInt32| :direction :in)
   (:name |width| :type |SizeI| :direction :in)
   (:name |format| :type |PixelFormat| :direction :in)
   (:name |imageSize| :type |SizeI| :direction :in)
   (:name |data| :type |CompressedTextureARB| :direction :in :array t :size
    imagesize))
  :return ("void") :category ("VERSION_1_3") :dlflags ("handcode") :glxflags
  ("ARB" "client-handcode" "server-handcode") :version ("1.3") :glxropcode
  ("217") :glsopcode ("0x01CE") :wglflags ("client-handcode" "server-handcode")
  :offset ("559"))) 
(defglfun
 (("CompressedTexSubImage2D" compressed-tex-sub-image-2d) :args
  ((:name |target| :type |TextureTarget| :direction :in)
   (:name |level| :type |CheckedInt32| :direction :in)
   (:name |xoffset| :type |CheckedInt32| :direction :in)
   (:name |yoffset| :type |CheckedInt32| :direction :in)
   (:name |width| :type |SizeI| :direction :in)
   (:name |height| :type |SizeI| :direction :in)
   (:name |format| :type |PixelFormat| :direction :in)
   (:name |imageSize| :type |SizeI| :direction :in)
   (:name |data| :type |CompressedTextureARB| :direction :in :array t :size
    imagesize))
  :return ("void") :category ("VERSION_1_3") :dlflags ("handcode") :glxflags
  ("ARB" "client-handcode" "server-handcode") :version ("1.3") :glxropcode
  ("218") :glsopcode ("0x01CD") :wglflags ("client-handcode" "server-handcode")
  :offset ("558"))) 
(defglfun
 (("CompressedTexSubImage3D" compressed-tex-sub-image-3d) :args
  ((:name |target| :type |TextureTarget| :direction :in)
   (:name |level| :type |CheckedInt32| :direction :in)
   (:name |xoffset| :type |CheckedInt32| :direction :in)
   (:name |yoffset| :type |CheckedInt32| :direction :in)
   (:name |zoffset| :type |CheckedInt32| :direction :in)
   (:name |width| :type |SizeI| :direction :in)
   (:name |height| :type |SizeI| :direction :in)
   (:name |depth| :type |SizeI| :direction :in)
   (:name |format| :type |PixelFormat| :direction :in)
   (:name |imageSize| :type |SizeI| :direction :in)
   (:name |data| :type |CompressedTextureARB| :direction :in :array t :size
    imagesize))
  :return ("void") :category ("VERSION_1_3") :dlflags ("handcode") :glxflags
  ("ARB" "client-handcode" "server-handcode") :version ("1.3") :glxropcode
  ("219") :glsopcode ("0x01CC") :wglflags ("client-handcode" "server-handcode")
  :offset ("557"))) 
(defglfun
 (("CompressedTexImage1D" compressed-tex-image-1d) :args
  ((:name |target| :type |TextureTarget| :direction :in)
   (:name |level| :type |CheckedInt32| :direction :in)
   (:name |internalformat| :type |PixelInternalFormat| :direction :in)
   (:name |width| :type |SizeI| :direction :in)
   (:name |border| :type |CheckedInt32| :direction :in)
   (:name |imageSize| :type |SizeI| :direction :in)
   (:name |data| :type |CompressedTextureARB| :direction :in :array t :size
    imagesize))
  :return ("void") :category ("VERSION_1_3") :dlflags ("handcode") :glxflags
  ("ARB" "client-handcode" "server-handcode") :version ("1.3") :glxropcode
  ("214") :glsopcode ("0x01CB") :wglflags ("client-handcode" "server-handcode")
  :offset ("556"))) 
(defglfun
 (("CompressedTexImage2D" compressed-tex-image-2d) :args
  ((:name |target| :type |TextureTarget| :direction :in)
   (:name |level| :type |CheckedInt32| :direction :in)
   (:name |internalformat| :type |PixelInternalFormat| :direction :in)
   (:name |width| :type |SizeI| :direction :in)
   (:name |height| :type |SizeI| :direction :in)
   (:name |border| :type |CheckedInt32| :direction :in)
   (:name |imageSize| :type |SizeI| :direction :in)
   (:name |data| :type |CompressedTextureARB| :direction :in :array t :size
    imagesize))
  :return ("void") :category ("VERSION_1_3") :dlflags ("handcode") :glxflags
  ("ARB" "client-handcode" "server-handcode") :version ("1.3") :glxropcode
  ("215") :glsopcode ("0x01CA") :wglflags ("client-handcode" "server-handcode")
  :offset ("555"))) 
(defglfun
 (("CompressedTexImage3D" compressed-tex-image-3d) :args
  ((:name |target| :type |TextureTarget| :direction :in)
   (:name |level| :type |CheckedInt32| :direction :in)
   (:name |internalformat| :type |PixelInternalFormat| :direction :in)
   (:name |width| :type |SizeI| :direction :in)
   (:name |height| :type |SizeI| :direction :in)
   (:name |depth| :type |SizeI| :direction :in)
   (:name |border| :type |CheckedInt32| :direction :in)
   (:name |imageSize| :type |SizeI| :direction :in)
   (:name |data| :type |CompressedTextureARB| :direction :in :array t :size
    imagesize))
  :return ("void") :category ("VERSION_1_3") :dlflags ("handcode") :glxflags
  ("ARB" "client-handcode" "server-handcode") :version ("1.3") :glxropcode
  ("216") :glsopcode ("0x01C9") :wglflags ("client-handcode" "server-handcode")
  :offset ("554"))) 
(defglfun
 (("SampleCoverage" sample-coverage) :args
  ((:name |value| :type |ClampedFloat32| :direction :in)
   (:name |invert| :type |Boolean| :direction :in))
  :return ("void") :category ("VERSION_1_3") :glxflags ("ARB") :version ("1.3")
  :glxropcode ("229") :glsopcode ("0x01C7") :offset ("412"))) 
(defglfun
 (("MultTransposeMatrixd" mult-transpose-matrix-d) :args
  ((:name |m| :type |Float64| :direction :in :array t :size #x10)) :return
  ("void") :category ("VERSION_1_3") :glxflags
  ("ARB" "client-handcode" "client-intercept" "server-handcode") :version
  ("1.3") :glsflags ("matrix") :glsopcode ("0x01C6") :offset ("411"))) 
(defglfun
 (("MultTransposeMatrixf" mult-transpose-matrix-f) :args
  ((:name |m| :type |Float32| :direction :in :array t :size #x10)) :return
  ("void") :category ("VERSION_1_3") :glxflags
  ("ARB" "client-handcode" "client-intercept" "server-handcode") :version
  ("1.3") :glsflags ("matrix") :glsopcode ("0x01C5") :offset ("410"))) 
(defglfun
 (("LoadTransposeMatrixd" load-transpose-matrix-d) :args
  ((:name |m| :type |Float64| :direction :in :array t :size #x10)) :return
  ("void") :category ("VERSION_1_3") :glxflags
  ("ARB" "client-handcode" "client-intercept" "server-handcode") :version
  ("1.3") :glsflags ("matrix") :glsopcode ("0x01C4") :offset ("409"))) 
(defglfun
 (("LoadTransposeMatrixf" load-transpose-matrix-f) :args
  ((:name |m| :type |Float32| :direction :in :array t :size #x10)) :return
  ("void") :category ("VERSION_1_3") :glxflags
  ("ARB" "client-handcode" "client-intercept" "server-handcode") :version
  ("1.3") :glsflags ("matrix") :glsopcode ("0x01C3") :offset ("408"))) 
(defglfun
 (("MultiTexCoord4sv" multi-tex-coord-4sv) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |v| :type |CoordS| :direction :in :array t :size #x4))
  :return ("void") :category ("VERSION_1_3") :glxflags ("ARB") :version ("1.3")
  :glxropcode ("213") :glsopcode ("0x01C2") :offset ("407"))) 
(defglfun
 (("MultiTexCoord4s" multi-tex-coord-4s) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |s| :type |CoordS| :direction :in)
   (:name |t| :type |CoordS| :direction :in)
   (:name |r| :type |CoordS| :direction :in)
   (:name |q| :type |CoordS| :direction :in))
  :return ("void") :category ("VERSION_1_3") :glxflags ("ARB") :version ("1.3")
  :vectorequiv ("MultiTexCoord4sv") :offset ("406"))) 
(defglfun
 (("MultiTexCoord4iv" multi-tex-coord-4iv) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |v| :type |CoordI| :direction :in :array t :size #x4))
  :return ("void") :category ("VERSION_1_3") :glxflags ("ARB") :version ("1.3")
  :glxropcode ("212") :glsopcode ("0x01C1") :offset ("405"))) 
(defglfun
 (("MultiTexCoord4i" multi-tex-coord-4i) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |s| :type |CoordI| :direction :in)
   (:name |t| :type |CoordI| :direction :in)
   (:name |r| :type |CoordI| :direction :in)
   (:name |q| :type |CoordI| :direction :in))
  :return ("void") :category ("VERSION_1_3") :glxflags ("ARB") :version ("1.3")
  :vectorequiv ("MultiTexCoord4iv") :offset ("404"))) 
(defglfun
 (("MultiTexCoord4fv" multi-tex-coord-4fv) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |v| :type |CoordF| :direction :in :array t :size #x4))
  :return ("void") :category ("VERSION_1_3") :glxflags ("ARB") :version ("1.3")
  :glxropcode ("211") :glsopcode ("0x01C0") :offset ("403"))) 
(defglfun
 (("MultiTexCoord4f" multi-tex-coord-4f) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |s| :type |CoordF| :direction :in)
   (:name |t| :type |CoordF| :direction :in)
   (:name |r| :type |CoordF| :direction :in)
   (:name |q| :type |CoordF| :direction :in))
  :return ("void") :category ("VERSION_1_3") :glxflags ("ARB") :version ("1.3")
  :vectorequiv ("MultiTexCoord4fv") :offset ("402"))) 
(defglfun
 (("MultiTexCoord4dv" multi-tex-coord-4dv) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |v| :type |CoordD| :direction :in :array t :size #x4))
  :return ("void") :category ("VERSION_1_3") :glxflags ("ARB") :version ("1.3")
  :glxropcode ("210") :glsopcode ("0x01BF") :offset ("401"))) 
(defglfun
 (("MultiTexCoord4d" multi-tex-coord-4d) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |s| :type |CoordD| :direction :in)
   (:name |t| :type |CoordD| :direction :in)
   (:name |r| :type |CoordD| :direction :in)
   (:name |q| :type |CoordD| :direction :in))
  :return ("void") :category ("VERSION_1_3") :glxflags ("ARB") :version ("1.3")
  :vectorequiv ("MultiTexCoord4dv") :offset ("400"))) 
(defglfun
 (("MultiTexCoord3sv" multi-tex-coord-3sv) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |v| :type |CoordS| :direction :in :array t :size #x3))
  :return ("void") :category ("VERSION_1_3") :version ("1.3") :glxflags ("ARB")
  :glxropcode ("209") :glsopcode ("0x01BE") :offset ("399"))) 
(defglfun
 (("MultiTexCoord3s" multi-tex-coord-3s) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |s| :type |CoordS| :direction :in)
   (:name |t| :type |CoordS| :direction :in)
   (:name |r| :type |CoordS| :direction :in))
  :return ("void") :category ("VERSION_1_3") :glxflags ("ARB") :version ("1.3")
  :vectorequiv ("MultiTexCoord3sv") :offset ("398"))) 
(defglfun
 (("MultiTexCoord3iv" multi-tex-coord-3iv) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |v| :type |CoordI| :direction :in :array t :size #x3))
  :return ("void") :category ("VERSION_1_3") :glxflags ("ARB") :version ("1.3")
  :glxropcode ("208") :glsopcode ("0x01BD") :offset ("397"))) 
(defglfun
 (("MultiTexCoord3i" multi-tex-coord-3i) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |s| :type |CoordI| :direction :in)
   (:name |t| :type |CoordI| :direction :in)
   (:name |r| :type |CoordI| :direction :in))
  :return ("void") :category ("VERSION_1_3") :glxflags ("ARB") :version ("1.3")
  :vectorequiv ("MultiTexCoord3iv") :offset ("396"))) 
(defglfun
 (("MultiTexCoord3fv" multi-tex-coord-3fv) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |v| :type |CoordF| :direction :in :array t :size #x3))
  :return ("void") :category ("VERSION_1_3") :glxflags ("ARB") :version ("1.3")
  :glxropcode ("207") :glsopcode ("0x01BC") :offset ("395"))) 
(defglfun
 (("MultiTexCoord3f" multi-tex-coord-3f) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |s| :type |CoordF| :direction :in)
   (:name |t| :type |CoordF| :direction :in)
   (:name |r| :type |CoordF| :direction :in))
  :return ("void") :category ("VERSION_1_3") :glxflags ("ARB") :version ("1.3")
  :vectorequiv ("MultiTexCoord3fv") :offset ("394"))) 
(defglfun
 (("MultiTexCoord3dv" multi-tex-coord-3dv) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |v| :type |CoordD| :direction :in :array t :size #x3))
  :return ("void") :category ("VERSION_1_3") :glxflags ("ARB") :version ("1.3")
  :glxropcode ("206") :glsopcode ("0x01BB") :offset ("393"))) 
(defglfun
 (("MultiTexCoord3d" multi-tex-coord-3d) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |s| :type |CoordD| :direction :in)
   (:name |t| :type |CoordD| :direction :in)
   (:name |r| :type |CoordD| :direction :in))
  :return ("void") :category ("VERSION_1_3") :glxflags ("ARB") :version ("1.3")
  :vectorequiv ("MultiTexCoord3dv") :offset ("392"))) 
(defglfun
 (("MultiTexCoord2sv" multi-tex-coord-2sv) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |v| :type |CoordS| :direction :in :array t :size #x2))
  :return ("void") :category ("VERSION_1_3") :glxflags ("ARB") :version ("1.3")
  :glxropcode ("205") :glsopcode ("0x01BA") :offset ("391"))) 
(defglfun
 (("MultiTexCoord2s" multi-tex-coord-2s) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |s| :type |CoordS| :direction :in)
   (:name |t| :type |CoordS| :direction :in))
  :return ("void") :category ("VERSION_1_3") :glxflags ("ARB") :version ("1.3")
  :vectorequiv ("MultiTexCoord2sv") :offset ("390"))) 
(defglfun
 (("MultiTexCoord2iv" multi-tex-coord-2iv) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |v| :type |CoordI| :direction :in :array t :size #x2))
  :return ("void") :category ("VERSION_1_3") :glxflags ("ARB") :version ("1.3")
  :glxropcode ("204") :glsopcode ("0x01B9") :offset ("389"))) 
(defglfun
 (("MultiTexCoord2i" multi-tex-coord-2i) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |s| :type |CoordI| :direction :in)
   (:name |t| :type |CoordI| :direction :in))
  :return ("void") :category ("VERSION_1_3") :glxflags ("ARB") :version ("1.3")
  :vectorequiv ("MultiTexCoord2iv") :offset ("388"))) 
(defglfun
 (("MultiTexCoord2fv" multi-tex-coord-2fv) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |v| :type |CoordF| :direction :in :array t :size #x2))
  :return ("void") :category ("VERSION_1_3") :glxflags ("ARB") :version ("1.3")
  :glxropcode ("203") :glsopcode ("0x01B8") :offset ("387"))) 
(defglfun
 (("MultiTexCoord2f" multi-tex-coord-2f) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |s| :type |CoordF| :direction :in)
   (:name |t| :type |CoordF| :direction :in))
  :return ("void") :category ("VERSION_1_3") :glxflags ("ARB") :version ("1.3")
  :vectorequiv ("MultiTexCoord2fv") :offset ("386"))) 
(defglfun
 (("MultiTexCoord2dv" multi-tex-coord-2dv) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |v| :type |CoordD| :direction :in :array t :size #x2))
  :return ("void") :category ("VERSION_1_3") :glxflags ("ARB") :version ("1.3")
  :glxropcode ("202") :glsopcode ("0x01B7") :offset ("385"))) 
(defglfun
 (("MultiTexCoord2d" multi-tex-coord-2d) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |s| :type |CoordD| :direction :in)
   (:name |t| :type |CoordD| :direction :in))
  :return ("void") :category ("VERSION_1_3") :glxflags ("ARB") :version ("1.3")
  :vectorequiv ("MultiTexCoord2dv") :offset ("384"))) 
(defglfun
 (("MultiTexCoord1sv" multi-tex-coord-1sv) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |v| :type |CoordS| :direction :in :array t :size #x1))
  :return ("void") :category ("VERSION_1_3") :glxflags ("ARB") :version ("1.3")
  :glxropcode ("201") :glsopcode ("0x01B6") :offset ("383"))) 
(defglfun
 (("MultiTexCoord1s" multi-tex-coord-1s) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |s| :type |CoordS| :direction :in))
  :return ("void") :category ("VERSION_1_3") :glxflags ("ARB") :version ("1.3")
  :vectorequiv ("MultiTexCoord1sv") :offset ("382"))) 
(defglfun
 (("MultiTexCoord1iv" multi-tex-coord-1iv) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |v| :type |CoordI| :direction :in :array t :size #x1))
  :return ("void") :category ("VERSION_1_3") :glxflags ("ARB") :version ("1.3")
  :glxropcode ("200") :glsopcode ("0x01B5") :offset ("381"))) 
(defglfun
 (("MultiTexCoord1i" multi-tex-coord-1i) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |s| :type |CoordI| :direction :in))
  :return ("void") :category ("VERSION_1_3") :glxflags ("ARB") :version ("1.3")
  :vectorequiv ("MultiTexCoord1iv") :offset ("380"))) 
(defglfun
 (("MultiTexCoord1fv" multi-tex-coord-1fv) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |v| :type |CoordF| :direction :in :array t :size #x1))
  :return ("void") :category ("VERSION_1_3") :glxflags ("ARB") :version ("1.3")
  :glxropcode ("199") :glsopcode ("0x01B4") :offset ("379"))) 
(defglfun
 (("MultiTexCoord1f" multi-tex-coord-1f) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |s| :type |CoordF| :direction :in))
  :return ("void") :category ("VERSION_1_3") :glxflags ("ARB") :version ("1.3")
  :vectorequiv ("MultiTexCoord1fv") :offset ("378"))) 
(defglfun
 (("MultiTexCoord1dv" multi-tex-coord-1dv) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |v| :type |CoordD| :direction :in :array t :size #x1))
  :return ("void") :category ("VERSION_1_3") :glxflags ("ARB") :version ("1.3")
  :glxropcode ("198") :glsopcode ("0x01B3") :offset ("377"))) 
(defglfun
 (("MultiTexCoord1d" multi-tex-coord-1d) :args
  ((:name |target| :type |TextureUnit| :direction :in)
   (:name |s| :type |CoordD| :direction :in))
  :return ("void") :category ("VERSION_1_3") :glxflags ("ARB") :version ("1.3")
  :vectorequiv ("MultiTexCoord1dv") :offset ("376"))) 
(defglfun
 (("ClientActiveTexture" client-active-texture) :args
  ((:name |texture| :type |TextureUnit| :direction :in)) :return ("void")
  :category ("VERSION_1_3") :dlflags ("notlistable") :glxflags
  ("ARB" "client-handcode" "client-intercept" "server-handcode") :version
  ("1.3") :glsflags ("client") :glsopcode ("0x01B2") :offset ("375"))) 
(defglfun
 (("ActiveTexture" active-texture) :args
  ((:name |texture| :type |TextureUnit| :direction :in)) :return ("void")
  :category ("VERSION_1_3") :glxflags ("ARB") :version ("1.3") :glxropcode
  ("197") :glsopcode ("0x01B1") :offset ("374"))) 