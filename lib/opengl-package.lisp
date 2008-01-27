
(defpackage #:cl-glfw-opengl
            (:use #:cffi #:cl #:cl-glfw-types #:cl-glfw-scaffolding)
            (:nicknames #:gl #:opengl)
            (:shadowing-import-from #:cl-glfw-types #:boolean #:byte #:float
             #:char #:string)
            (:export #:enum #:boolean #:bitfield #:byte #:short #:int #:sizei
             #:ubyte #:ushort #:uint #:float #:clampf #:double #:clampd #:void
             #:uint64 #:int64 #:intptr #:sizeiptr #:handle #:char #:string
             #:half #:+current-bit+ #:+point-bit+ #:+line-bit+ #:+polygon-bit+
             #:+polygon-stipple-bit+ #:+pixel-mode-bit+ #:+lighting-bit+
             #:+fog-bit+ #:+depth-buffer-bit+ #:+accum-buffer-bit+
             #:+stencil-buffer-bit+ #:+viewport-bit+ #:+transform-bit+
             #:+enable-bit+ #:+color-buffer-bit+ #:+hint-bit+ #:+eval-bit+
             #:+list-bit+ #:+texture-bit+ #:+scissor-bit+ #:+all-attrib-bits+
             #:+client-pixel-store-bit+ #:+client-vertex-array-bit+
             #:+client-all-attrib-bits+ #:+false+ #:+true+ #:+points+ #:+lines+
             #:+line-loop+ #:+line-strip+ #:+triangles+ #:+triangle-strip+
             #:+triangle-fan+ #:+quads+ #:+quad-strip+ #:+polygon+ #:+accum+
             #:+load+ #:+return+ #:+mult+ #:+add+ #:+never+ #:+less+ #:+equal+
             #:+lequal+ #:+greater+ #:+notequal+ #:+gequal+ #:+always+ #:+zero+
             #:+one+ #:+src-color+ #:+one-minus-src-color+ #:+src-alpha+
             #:+one-minus-src-alpha+ #:+dst-alpha+ #:+one-minus-dst-alpha+
             #:+constant-color-ext+ #:+one-minus-constant-color-ext+
             #:+constant-alpha-ext+ #:+one-minus-constant-alpha-ext+
             #:+dst-color+ #:+one-minus-dst-color+ #:+src-alpha-saturate+
             #:+logic-op+ #:+func-add-ext+ #:+min-ext+ #:+max-ext+
             #:+func-subtract-ext+ #:+func-reverse-subtract-ext+
             #:+alpha-min-sgix+ #:+alpha-max-sgix+ #:+front+ #:+back+
             #:+front-and-back+ #:+ambient+ #:+diffuse+ #:+specular+
             #:+emission+ #:+ambient-and-diffuse+ #:+byte+ #:+unsigned-byte+
             #:+short+ #:+unsigned-short+ #:+int+ #:+unsigned-int+ #:+float+
             #:+double+ #:+color-table-scale-sgi+ #:+color-table-bias-sgi+
             #:+color-table-sgi+ #:+post-convolution-color-table-sgi+
             #:+post-color-matrix-color-table-sgi+ #:+proxy-color-table-sgi+
             #:+proxy-post-convolution-color-table-sgi+
             #:+proxy-post-color-matrix-color-table-sgi+
             #:+texture-color-table-sgi+ #:+proxy-texture-color-table-sgi+
             #:+reduce-ext+ #:+convolution-border-mode-ext+
             #:+convolution-filter-scale-ext+ #:+convolution-filter-bias-ext+
             #:+convolution-1d-ext+ #:+convolution-2d-ext+ #:+none+
             #:+front-left+ #:+front-right+ #:+back-left+ #:+back-right+
             #:+left+ #:+right+ #:+aux0+ #:+aux1+ #:+aux2+ #:+aux3+ #:+fog+
             #:+lighting+ #:+texture-1d+ #:+texture-2d+ #:+line-stipple+
             #:+polygon-stipple+ #:+cull-face+ #:+alpha-test+ #:+blend+
             #:+index-logic-op+ #:+color-logic-op+ #:+dither+ #:+stencil-test+
             #:+depth-test+ #:+clip-plane0+ #:+clip-plane1+ #:+clip-plane2+
             #:+clip-plane3+ #:+clip-plane4+ #:+clip-plane5+ #:+light0+
             #:+light1+ #:+light2+ #:+light3+ #:+light4+ #:+light5+ #:+light6+
             #:+light7+ #:+texture-gen-s+ #:+texture-gen-t+ #:+texture-gen-r+
             #:+texture-gen-q+ #:+map1-vertex-3+ #:+map1-vertex-4+
             #:+map1-color-4+ #:+map1-index+ #:+map1-normal+
             #:+map1-texture-coord-1+ #:+map1-texture-coord-2+
             #:+map1-texture-coord-3+ #:+map1-texture-coord-4+
             #:+map2-vertex-3+ #:+map2-vertex-4+ #:+map2-color-4+
             #:+map2-index+ #:+map2-normal+ #:+map2-texture-coord-1+
             #:+map2-texture-coord-2+ #:+map2-texture-coord-3+
             #:+map2-texture-coord-4+ #:+point-smooth+ #:+line-smooth+
             #:+polygon-smooth+ #:+scissor-test+ #:+color-material+
             #:+normalize+ #:+auto-normal+ #:+polygon-offset-point+
             #:+polygon-offset-line+ #:+polygon-offset-fill+ #:+vertex-array+
             #:+normal-array+ #:+color-array+ #:+index-array+
             #:+texture-coord-array+ #:+edge-flag-array+ #:+separable-2d-ext+
             #:+histogram-ext+ #:+minmax-ext+ #:+rescale-normal-ext+
             #:+shared-texture-palette-ext+ #:+texture-3d-ext+
             #:+multisample-sgis+ #:+sample-alpha-to-mask-sgis+
             #:+sample-alpha-to-one-sgis+ #:+sample-mask-sgis+
             #:+texture-4d-sgis+ #:+async-histogram-sgix+
             #:+async-tex-image-sgix+ #:+async-draw-pixels-sgix+
             #:+async-read-pixels-sgix+ #:+calligraphic-fragment-sgix+
             #:+fog-offset-sgix+ #:+fragment-lighting-sgix+
             #:+fragment-color-material-sgix+ #:+fragment-light0-sgix+
             #:+fragment-light1-sgix+ #:+fragment-light2-sgix+
             #:+fragment-light3-sgix+ #:+fragment-light4-sgix+
             #:+fragment-light5-sgix+ #:+fragment-light6-sgix+
             #:+fragment-light7-sgix+ #:+framezoom-sgix+ #:+interlace-sgix+
             #:+ir-instrument1-sgix+ #:+pixel-tex-gen-sgix+
             #:+pixel-texture-sgis+ #:+reference-plane-sgix+ #:+sprite-sgix+
             #:+no-error+ #:+invalid-enum+ #:+invalid-value+
             #:+invalid-operation+ #:+stack-overflow+ #:+stack-underflow+
             #:+out-of-memory+ #:+table-too-large-ext+
             #:+texture-too-large-ext+ #:+2d+ #:+3d+ #:+3d-color+
             #:+3d-color-texture+ #:+4d-color-texture+ #:+pass-through-token+
             #:+point-token+ #:+line-token+ #:+polygon-token+ #:+bitmap-token+
             #:+draw-pixel-token+ #:+copy-pixel-token+ #:+line-reset-token+
             #:+texture-deformation-bit-sgix+ #:+geometry-deformation-bit-sgix+
             #:+geometry-deformation-sgix+ #:+texture-deformation-sgix+
             #:+linear+ #:+exp+ #:+exp2+ #:+fog-func-sgis+ #:+fog-color+
             #:+fog-density+ #:+fog-end+ #:+fog-index+ #:+fog-mode+
             #:+fog-start+ #:+fog-offset-value-sgix+
             #:+fragment-light-model-local-viewer-sgix+
             #:+fragment-light-model-two-side-sgix+
             #:+fragment-light-model-ambient-sgix+
             #:+fragment-light-model-normal-interpolation-sgix+ #:+cw+ #:+ccw+
             #:+color-table-format-sgi+ #:+color-table-width-sgi+
             #:+color-table-red-size-sgi+ #:+color-table-green-size-sgi+
             #:+color-table-blue-size-sgi+ #:+color-table-alpha-size-sgi+
             #:+color-table-luminance-size-sgi+
             #:+color-table-intensity-size-sgi+ #:+convolution-format-ext+
             #:+convolution-width-ext+ #:+convolution-height-ext+
             #:+max-convolution-width-ext+ #:+max-convolution-height-ext+
             #:+histogram-width-ext+ #:+histogram-format-ext+
             #:+histogram-red-size-ext+ #:+histogram-green-size-ext+
             #:+histogram-blue-size-ext+ #:+histogram-alpha-size-ext+
             #:+histogram-luminance-size-ext+ #:+histogram-sink-ext+ #:+coeff+
             #:+order+ #:+domain+ #:+minmax-format-ext+ #:+minmax-sink-ext+
             #:+pixel-map-i-to-i+ #:+pixel-map-s-to-s+ #:+pixel-map-i-to-r+
             #:+pixel-map-i-to-g+ #:+pixel-map-i-to-b+ #:+pixel-map-i-to-a+
             #:+pixel-map-r-to-r+ #:+pixel-map-g-to-g+ #:+pixel-map-b-to-b+
             #:+pixel-map-a-to-a+ #:+vertex-array-pointer+
             #:+normal-array-pointer+ #:+color-array-pointer+
             #:+index-array-pointer+ #:+texture-coord-array-pointer+
             #:+edge-flag-array-pointer+ #:+feedback-buffer-pointer+
             #:+selection-buffer-pointer+ #:+instrument-buffer-pointer-sgix+
             #:+current-color+ #:+current-index+ #:+current-normal+
             #:+current-texture-coords+ #:+current-raster-color+
             #:+current-raster-index+ #:+current-raster-texture-coords+
             #:+current-raster-position+ #:+current-raster-position-valid+
             #:+current-raster-distance+ #:+point-size+ #:+point-size-range+
             #:+point-size-granularity+ #:+line-width+ #:+line-width-range+
             #:+line-width-granularity+ #:+line-stipple-pattern+
             #:+line-stipple-repeat+ #:+smooth-point-size-range+
             #:+smooth-point-size-granularity+ #:+smooth-line-width-range+
             #:+smooth-line-width-granularity+ #:+aliased-point-size-range+
             #:+aliased-line-width-range+ #:+list-mode+ #:+max-list-nesting+
             #:+list-base+ #:+list-index+ #:+polygon-mode+ #:+edge-flag+
             #:+cull-face-mode+ #:+front-face+ #:+light-model-local-viewer+
             #:+light-model-two-side+ #:+light-model-ambient+ #:+shade-model+
             #:+color-material-face+ #:+color-material-parameter+
             #:+depth-range+ #:+depth-writemask+ #:+depth-clear-value+
             #:+depth-func+ #:+accum-clear-value+ #:+stencil-clear-value+
             #:+stencil-func+ #:+stencil-value-mask+ #:+stencil-fail+
             #:+stencil-pass-depth-fail+ #:+stencil-pass-depth-pass+
             #:+stencil-ref+ #:+stencil-writemask+ #:+matrix-mode+ #:+viewport+
             #:+modelview-stack-depth+ #:+projection-stack-depth+
             #:+texture-stack-depth+ #:+modelview-matrix+ #:+projection-matrix+
             #:+texture-matrix+ #:+attrib-stack-depth+
             #:+client-attrib-stack-depth+ #:+alpha-test-func+
             #:+alpha-test-ref+ #:+blend-dst+ #:+blend-src+ #:+logic-op-mode+
             #:+aux-buffers+ #:+draw-buffer+ #:+read-buffer+ #:+scissor-box+
             #:+index-clear-value+ #:+index-writemask+ #:+color-clear-value+
             #:+color-writemask+ #:+index-mode+ #:+rgba-mode+ #:+doublebuffer+
             #:+stereo+ #:+render-mode+ #:+perspective-correction-hint+
             #:+point-smooth-hint+ #:+line-smooth-hint+ #:+polygon-smooth-hint+
             #:+fog-hint+ #:+pixel-map-i-to-i-size+ #:+pixel-map-s-to-s-size+
             #:+pixel-map-i-to-r-size+ #:+pixel-map-i-to-g-size+
             #:+pixel-map-i-to-b-size+ #:+pixel-map-i-to-a-size+
             #:+pixel-map-r-to-r-size+ #:+pixel-map-g-to-g-size+
             #:+pixel-map-b-to-b-size+ #:+pixel-map-a-to-a-size+
             #:+unpack-swap-bytes+ #:+unpack-lsb-first+ #:+unpack-row-length+
             #:+unpack-skip-rows+ #:+unpack-skip-pixels+ #:+unpack-alignment+
             #:+pack-swap-bytes+ #:+pack-lsb-first+ #:+pack-row-length+
             #:+pack-skip-rows+ #:+pack-skip-pixels+ #:+pack-alignment+
             #:+map-color+ #:+map-stencil+ #:+index-shift+ #:+index-offset+
             #:+red-scale+ #:+red-bias+ #:+zoom-x+ #:+zoom-y+ #:+green-scale+
             #:+green-bias+ #:+blue-scale+ #:+blue-bias+ #:+alpha-scale+
             #:+alpha-bias+ #:+depth-scale+ #:+depth-bias+ #:+max-eval-order+
             #:+max-lights+ #:+max-clip-planes+ #:+max-texture-size+
             #:+max-pixel-map-table+ #:+max-attrib-stack-depth+
             #:+max-modelview-stack-depth+ #:+max-name-stack-depth+
             #:+max-projection-stack-depth+ #:+max-texture-stack-depth+
             #:+max-viewport-dims+ #:+max-client-attrib-stack-depth+
             #:+subpixel-bits+ #:+index-bits+ #:+red-bits+ #:+green-bits+
             #:+blue-bits+ #:+alpha-bits+ #:+depth-bits+ #:+stencil-bits+
             #:+accum-red-bits+ #:+accum-green-bits+ #:+accum-blue-bits+
             #:+accum-alpha-bits+ #:+name-stack-depth+ #:+map1-grid-domain+
             #:+map1-grid-segments+ #:+map2-grid-domain+ #:+map2-grid-segments+
             #:+feedback-buffer-size+ #:+feedback-buffer-type+
             #:+selection-buffer-size+ #:+polygon-offset-units+
             #:+polygon-offset-factor+ #:+texture-binding-1d+
             #:+texture-binding-2d+ #:+texture-binding-3d+
             #:+vertex-array-size+ #:+vertex-array-type+
             #:+vertex-array-stride+ #:+normal-array-type+
             #:+normal-array-stride+ #:+color-array-size+ #:+color-array-type+
             #:+color-array-stride+ #:+index-array-type+ #:+index-array-stride+
             #:+texture-coord-array-size+ #:+texture-coord-array-type+
             #:+texture-coord-array-stride+ #:+edge-flag-array-stride+
             #:+light-model-color-control+ #:+blend-color-ext+
             #:+blend-equation-ext+ #:+pack-cmyk-hint-ext+
             #:+unpack-cmyk-hint-ext+ #:+post-convolution-red-scale-ext+
             #:+post-convolution-green-scale-ext+
             #:+post-convolution-blue-scale-ext+
             #:+post-convolution-alpha-scale-ext+
             #:+post-convolution-red-bias-ext+
             #:+post-convolution-green-bias-ext+
             #:+post-convolution-blue-bias-ext+
             #:+post-convolution-alpha-bias-ext+ #:+polygon-offset-bias-ext+
             #:+texture-3d-binding-ext+ #:+pack-skip-images-ext+
             #:+pack-image-height-ext+ #:+unpack-skip-images-ext+
             #:+unpack-image-height-ext+ #:+max-3d-texture-size-ext+
             #:+vertex-array-count-ext+ #:+normal-array-count-ext+
             #:+color-array-count-ext+ #:+index-array-count-ext+
             #:+texture-coord-array-count-ext+ #:+edge-flag-array-count-ext+
             #:+detail-texture-2d-binding-sgis+ #:+fog-func-points-sgis+
             #:+max-fog-func-points-sgis+ #:+generate-mipmap-hint-sgis+
             #:+sample-buffers-sgis+ #:+samples-sgis+
             #:+sample-mask-value-sgis+ #:+sample-mask-invert-sgis+
             #:+sample-pattern-sgis+ #:+point-size-min-sgis+
             #:+point-size-max-sgis+ #:+point-fade-threshold-size-sgis+
             #:+distance-attenuation-sgis+ #:+pack-skip-volumes-sgis+
             #:+pack-image-depth-sgis+ #:+unpack-skip-volumes-sgis+
             #:+unpack-image-depth-sgis+ #:+max-4d-texture-size-sgis+
             #:+texture-4d-binding-sgis+ #:+async-marker-sgix+
             #:+max-async-histogram-sgix+ #:+max-async-tex-image-sgix+
             #:+max-async-draw-pixels-sgix+ #:+max-async-read-pixels-sgix+
             #:+max-clipmap-virtual-depth-sgix+ #:+max-clipmap-depth-sgix+
             #:+convolution-hint-sgix+ #:+fragment-color-material-face-sgix+
             #:+fragment-color-material-parameter-sgix+
             #:+max-fragment-lights-sgix+ #:+max-active-lights-sgix+
             #:+light-env-mode-sgix+ #:+framezoom-factor-sgix+
             #:+max-framezoom-factor-sgix+ #:+instrument-measurements-sgix+
             #:+pixel-tex-gen-mode-sgix+ #:+pixel-tile-best-alignment-sgix+
             #:+pixel-tile-cache-increment-sgix+ #:+pixel-tile-width-sgix+
             #:+pixel-tile-height-sgix+ #:+pixel-tile-grid-width-sgix+
             #:+pixel-tile-grid-height-sgix+ #:+pixel-tile-grid-depth-sgix+
             #:+pixel-tile-cache-size-sgix+ #:+deformations-mask-sgix+
             #:+reference-plane-equation-sgix+ #:+sprite-mode-sgix+
             #:+sprite-axis-sgix+ #:+sprite-translation-sgix+
             #:+pack-subsample-rate-sgix+ #:+unpack-subsample-rate-sgix+
             #:+pack-resample-sgix+ #:+unpack-resample-sgix+
             #:+post-texture-filter-bias-range-sgix+
             #:+post-texture-filter-scale-range-sgix+ #:+vertex-preclip-sgix+
             #:+vertex-preclip-hint-sgix+ #:+color-matrix-sgi+
             #:+color-matrix-stack-depth-sgi+
             #:+max-color-matrix-stack-depth-sgi+
             #:+post-color-matrix-red-scale-sgi+
             #:+post-color-matrix-green-scale-sgi+
             #:+post-color-matrix-blue-scale-sgi+
             #:+post-color-matrix-alpha-scale-sgi+
             #:+post-color-matrix-red-bias-sgi+
             #:+post-color-matrix-green-bias-sgi+
             #:+post-color-matrix-blue-bias-sgi+
             #:+post-color-matrix-alpha-bias-sgi+ #:+texture-mag-filter+
             #:+texture-min-filter+ #:+texture-wrap-s+ #:+texture-wrap-t+
             #:+texture-width+ #:+texture-height+ #:+texture-internal-format+
             #:+texture-components+ #:+texture-border-color+ #:+texture-border+
             #:+texture-red-size+ #:+texture-green-size+ #:+texture-blue-size+
             #:+texture-alpha-size+ #:+texture-luminance-size+
             #:+texture-intensity-size+ #:+texture-priority+
             #:+texture-resident+ #:+texture-depth-ext+ #:+texture-wrap-r-ext+
             #:+detail-texture-level-sgis+ #:+detail-texture-mode-sgis+
             #:+detail-texture-func-points-sgis+ #:+generate-mipmap-sgis+
             #:+sharpen-texture-func-points-sgis+ #:+texture-filter4-size-sgis+
             #:+texture-min-lod-sgis+ #:+texture-max-lod-sgis+
             #:+texture-base-level-sgis+ #:+texture-max-level-sgis+
             #:+dual-texture-select-sgis+ #:+quad-texture-select-sgis+
             #:+texture-4dsize-sgis+ #:+texture-wrap-q-sgis+
             #:+texture-clipmap-center-sgix+ #:+texture-clipmap-frame-sgix+
             #:+texture-clipmap-offset-sgix+
             #:+texture-clipmap-virtual-depth-sgix+
             #:+texture-clipmap-lod-offset-sgix+ #:+texture-clipmap-depth-sgix+
             #:+texture-compare-sgix+ #:+texture-compare-operator-sgix+
             #:+texture-lequal-r-sgix+ #:+texture-gequal-r-sgix+
             #:+shadow-ambient-sgix+ #:+texture-max-clamp-s-sgix+
             #:+texture-max-clamp-t-sgix+ #:+texture-max-clamp-r-sgix+
             #:+texture-lod-bias-s-sgix+ #:+texture-lod-bias-t-sgix+
             #:+texture-lod-bias-r-sgix+ #:+post-texture-filter-bias-sgix+
             #:+post-texture-filter-scale-sgix+ #:+dont-care+ #:+fastest+
             #:+nicest+ #:+texture-multi-buffer-hint-sgix+
             #:+proxy-histogram-ext+ #:+replace+ #:+modulate+ #:+single-color+
             #:+separate-specular-color+ #:+position+ #:+spot-direction+
             #:+spot-exponent+ #:+spot-cutoff+ #:+constant-attenuation+
             #:+linear-attenuation+ #:+quadratic-attenuation+ #:+compile+
             #:+compile-and-execute+ #:+2-bytes+ #:+3-bytes+ #:+4-bytes+
             #:+double-ext+ #:+list-priority-sgix+ #:+clear+ #:+and+
             #:+and-reverse+ #:+copy+ #:+and-inverted+ #:+noop+ #:+xor+ #:+or+
             #:+nor+ #:+equiv+ #:+invert+ #:+or-reverse+ #:+copy-inverted+
             #:+or-inverted+ #:+nand+ #:+set+ #:+shininess+ #:+color-indexes+
             #:+modelview+ #:+projection+ #:+texture+ #:+point+ #:+line+
             #:+fill+ #:+color+ #:+depth+ #:+stencil+ #:+color-index+
             #:+stencil-index+ #:+depth-component+ #:+red+ #:+green+ #:+blue+
             #:+alpha+ #:+rgb+ #:+rgba+ #:+luminance+ #:+luminance-alpha+
             #:+abgr-ext+ #:+cmyk-ext+ #:+cmyka-ext+ #:+r5-g6-b5-icc-sgix+
             #:+r5-g6-b5-a8-icc-sgix+ #:+alpha16-icc-sgix+
             #:+luminance16-icc-sgix+ #:+luminance16-alpha8-icc-sgix+
             #:+ycrcb-422-sgix+ #:+ycrcb-444-sgix+ #:+resample-replicate-sgix+
             #:+resample-zero-fill-sgix+ #:+resample-decimate-sgix+
             #:+pixel-subsample-4444-sgix+ #:+pixel-subsample-2424-sgix+
             #:+pixel-subsample-4242-sgix+ #:+pixel-tex-gen-alpha-replace-sgix+
             #:+pixel-tex-gen-alpha-no-replace-sgix+
             #:+pixel-tex-gen-alpha-ms-sgix+ #:+pixel-tex-gen-alpha-ls-sgix+
             #:+pixel-fragment-rgb-source-sgis+
             #:+pixel-fragment-alpha-source-sgis+ #:+bitmap+
             #:+unsigned-byte-3-3-2-ext+ #:+unsigned-short-4-4-4-4-ext+
             #:+unsigned-short-5-5-5-1-ext+ #:+unsigned-int-8-8-8-8-ext+
             #:+unsigned-int-10-10-10-2-ext+ #:+render+ #:+feedback+ #:+select+
             #:+1pass-sgis+ #:+2pass-0-sgis+ #:+2pass-1-sgis+ #:+4pass-0-sgis+
             #:+4pass-1-sgis+ #:+4pass-2-sgis+ #:+4pass-3-sgis+ #:+flat+
             #:+smooth+ #:+keep+ #:+incr+ #:+decr+ #:+vendor+ #:+renderer+
             #:+version+ #:+extensions+ #:+s+ #:+t+ #:+r+ #:+q+ #:+decal+
             #:+replace-ext+ #:+texture-env-bias-sgix+ #:+texture-env-mode+
             #:+texture-env-color+ #:+texture-env+ #:+filter4-sgis+
             #:+eye-linear+ #:+object-linear+ #:+sphere-map+
             #:+eye-distance-to-point-sgis+ #:+object-distance-to-point-sgis+
             #:+eye-distance-to-line-sgis+ #:+object-distance-to-line-sgis+
             #:+texture-gen-mode+ #:+object-plane+ #:+eye-plane+
             #:+eye-point-sgis+ #:+object-point-sgis+ #:+eye-line-sgis+
             #:+object-line-sgis+ #:+nearest+ #:+linear-detail-sgis+
             #:+linear-detail-alpha-sgis+ #:+linear-detail-color-sgis+
             #:+linear-sharpen-sgis+ #:+linear-sharpen-alpha-sgis+
             #:+linear-sharpen-color-sgis+ #:+pixel-tex-gen-q-ceiling-sgix+
             #:+pixel-tex-gen-q-round-sgix+ #:+pixel-tex-gen-q-floor-sgix+
             #:+nearest-mipmap-nearest+ #:+linear-mipmap-nearest+
             #:+nearest-mipmap-linear+ #:+linear-mipmap-linear+
             #:+linear-clipmap-linear-sgix+ #:+nearest-clipmap-nearest-sgix+
             #:+nearest-clipmap-linear-sgix+ #:+linear-clipmap-nearest-sgix+
             #:+proxy-texture-1d+ #:+proxy-texture-2d+ #:+proxy-texture-3d-ext+
             #:+detail-texture-2d-sgis+ #:+proxy-texture-4d-sgis+ #:+clamp+
             #:+repeat+ #:+clamp-to-border-sgis+ #:+clamp-to-edge-sgis+
             #:+r3-g3-b2+ #:+alpha4+ #:+alpha8+ #:+alpha12+ #:+alpha16+
             #:+luminance4+ #:+luminance8+ #:+luminance12+ #:+luminance16+
             #:+luminance4-alpha4+ #:+luminance6-alpha2+ #:+luminance8-alpha8+
             #:+luminance12-alpha4+ #:+luminance12-alpha12+
             #:+luminance16-alpha16+ #:+intensity+ #:+intensity4+
             #:+intensity8+ #:+intensity12+ #:+intensity16+ #:+rgb4+ #:+rgb5+
             #:+rgb8+ #:+rgb10+ #:+rgb12+ #:+rgb16+ #:+rgba2+ #:+rgba4+
             #:+rgb5-a1+ #:+rgba8+ #:+rgb10-a2+ #:+rgba12+ #:+rgba16+
             #:+rgb2-ext+ #:+dual-alpha4-sgis+ #:+dual-alpha8-sgis+
             #:+dual-alpha12-sgis+ #:+dual-alpha16-sgis+
             #:+dual-luminance4-sgis+ #:+dual-luminance8-sgis+
             #:+dual-luminance12-sgis+ #:+dual-luminance16-sgis+
             #:+dual-intensity4-sgis+ #:+dual-intensity8-sgis+
             #:+dual-intensity12-sgis+ #:+dual-intensity16-sgis+
             #:+dual-luminance-alpha4-sgis+ #:+dual-luminance-alpha8-sgis+
             #:+quad-alpha4-sgis+ #:+quad-alpha8-sgis+ #:+quad-luminance4-sgis+
             #:+quad-luminance8-sgis+ #:+quad-intensity4-sgis+
             #:+quad-intensity8-sgis+ #:+depth-component16-sgix+
             #:+depth-component24-sgix+ #:+depth-component32-sgix+
             #:+rgb-icc-sgix+ #:+rgba-icc-sgix+ #:+alpha-icc-sgix+
             #:+luminance-icc-sgix+ #:+intensity-icc-sgix+
             #:+luminance-alpha-icc-sgix+ #:+intensity16-icc-sgix+ #:+v2f+
             #:+v3f+ #:+c4ub-v2f+ #:+c4ub-v3f+ #:+c3f-v3f+ #:+n3f-v3f+
             #:+c4f-n3f-v3f+ #:+t2f-v3f+ #:+t4f-v4f+ #:+t2f-c4ub-v3f+
             #:+t2f-c3f-v3f+ #:+t2f-n3f-v3f+ #:+t2f-c4f-n3f-v3f+
             #:+t4f-c4f-n3f-v4f+ #:+func-subtract+ #:+func-reverse-subtract+
             #:+unsigned-byte-3-3-2+ #:+unsigned-short-4-4-4-4+
             #:+unsigned-short-5-5-5-1+ #:+unsigned-int-8-8-8-8+
             #:+unsigned-int-10-10-10-2+ #:+unsigned-byte-2-3-3-rev+
             #:+unsigned-byte-2-3-3-rev-ext+ #:+unsigned-short-5-6-5+
             #:+unsigned-short-5-6-5-ext+ #:+unsigned-short-5-6-5-rev+
             #:+unsigned-short-5-6-5-rev-ext+ #:+unsigned-short-4-4-4-4-rev+
             #:+unsigned-short-4-4-4-4-rev-ext+ #:+unsigned-short-1-5-5-5-rev+
             #:+unsigned-short-1-5-5-5-rev-ext+ #:+unsigned-int-8-8-8-8-rev+
             #:+unsigned-int-8-8-8-8-rev-ext+ #:+unsigned-int-2-10-10-10-rev+
             #:+unsigned-int-2-10-10-10-rev-ext+ #:+rescale-normal+
             #:+alpha4-ext+ #:+alpha8-ext+ #:+alpha12-ext+ #:+alpha16-ext+
             #:+luminance4-ext+ #:+luminance8-ext+ #:+luminance12-ext+
             #:+luminance16-ext+ #:+luminance4-alpha4-ext+
             #:+luminance6-alpha2-ext+ #:+luminance8-alpha8-ext+
             #:+luminance12-alpha4-ext+ #:+luminance12-alpha12-ext+
             #:+luminance16-alpha16-ext+ #:+intensity-ext+ #:+intensity4-ext+
             #:+intensity8-ext+ #:+intensity12-ext+ #:+intensity16-ext+
             #:+rgb4-ext+ #:+rgb5-ext+ #:+rgb8-ext+ #:+rgb10-ext+ #:+rgb12-ext+
             #:+rgb16-ext+ #:+rgba2-ext+ #:+rgba4-ext+ #:+rgb5-a1-ext+
             #:+rgba8-ext+ #:+rgb10-a2-ext+ #:+rgba12-ext+ #:+rgba16-ext+
             #:+texture-red-size-ext+ #:+texture-green-size-ext+
             #:+texture-blue-size-ext+ #:+texture-alpha-size-ext+
             #:+texture-luminance-size-ext+ #:+texture-intensity-size-ext+
             #:+proxy-texture-1d-ext+ #:+proxy-texture-2d-ext+ #:+color-matrix+
             #:+color-matrix-stack-depth+ #:+max-color-matrix-stack-depth+
             #:+post-color-matrix-red-scale+ #:+post-color-matrix-green-scale+
             #:+post-color-matrix-blue-scale+ #:+post-color-matrix-alpha-scale+
             #:+post-color-matrix-red-bias+ #:+post-color-matrix-green-bias+
             #:+post-color-matrix-blue-bias+ #:+post-color-matrix-alpha-bias+
             #:+bgr+ #:+bgr-ext+ #:+bgra+ #:+bgra-ext+ #:+clamp-to-border+
             #:+clamp-to-border-arb+ #:+clamp-to-edge+ #:+texture-min-lod+
             #:+texture-max-lod+ #:+texture-base-level+ #:+texture-max-level+
             #:+ignore-border-hp+ #:+constant-border+ #:+constant-border-hp+
             #:+replicate-border+ #:+replicate-border-hp+
             #:+convolution-border-color+ #:+convolution-border-color-hp+
             #:+generate-mipmap+ #:+generate-mipmap-hint+
             #:+max-deformation-order-sgix+ #:+depth-component16+
             #:+depth-component24+ #:+depth-component32+
             #:+light-model-color-control-ext+ #:+single-color-ext+
             #:+separate-specular-color-ext+ #:+fog-factor-to-alpha-sgix+
             #:+compressed-rgb-s3tc-dxt1-ext+ #:+compressed-rgba-s3tc-dxt1-ext+
             #:+compressed-rgba-s3tc-dxt3-ext+
             #:+compressed-rgba-s3tc-dxt5-ext+ #:+constant-color+
             #:+one-minus-constant-color+ #:+constant-alpha+
             #:+one-minus-constant-alpha+ #:+blend-color+ #:+func-add+ #:+min+
             #:+max+ #:+blend-equation+ #:+convolution-1d+ #:+convolution-2d+
             #:+separable-2d+ #:+convolution-border-mode+
             #:+convolution-filter-scale+ #:+convolution-filter-bias+
             #:+reduce+ #:+convolution-format+ #:+convolution-width+
             #:+convolution-height+ #:+max-convolution-width+
             #:+max-convolution-height+ #:+post-convolution-red-scale+
             #:+post-convolution-green-scale+ #:+post-convolution-blue-scale+
             #:+post-convolution-alpha-scale+ #:+post-convolution-red-bias+
             #:+post-convolution-green-bias+ #:+post-convolution-blue-bias+
             #:+post-convolution-alpha-bias+ #:+histogram+ #:+proxy-histogram+
             #:+histogram-width+ #:+histogram-format+ #:+histogram-red-size+
             #:+histogram-green-size+ #:+histogram-blue-size+
             #:+histogram-alpha-size+ #:+histogram-luminance-size+
             #:+histogram-sink+ #:+minmax+ #:+minmax-format+ #:+minmax-sink+
             #:+table-too-large+ #:+color-table+
             #:+post-convolution-color-table+ #:+post-color-matrix-color-table+
             #:+proxy-color-table+ #:+proxy-post-convolution-color-table+
             #:+proxy-post-color-matrix-color-table+ #:+color-table-scale+
             #:+color-table-bias+ #:+color-table-format+ #:+color-table-width+
             #:+color-table-red-size+ #:+color-table-green-size+
             #:+color-table-blue-size+ #:+color-table-alpha-size+
             #:+color-table-luminance-size+ #:+color-table-intensity-size+
             #:+normal-map-arb+ #:+reflection-map-arb+ #:+texture-cube-map-arb+
             #:+texture-binding-cube-map-arb+
             #:+texture-cube-map-positive-x-arb+
             #:+texture-cube-map-negative-x-arb+
             #:+texture-cube-map-positive-y-arb+
             #:+texture-cube-map-negative-y-arb+
             #:+texture-cube-map-positive-z-arb+
             #:+texture-cube-map-negative-z-arb+ #:+proxy-texture-cube-map-arb+
             #:+max-cube-map-texture-size-arb+ #:+combine-arb+
             #:+combine-rgb-arb+ #:+combine-alpha-arb+ #:+source0-rgb-arb+
             #:+source1-rgb-arb+ #:+source2-rgb-arb+ #:+source0-alpha-arb+
             #:+source1-alpha-arb+ #:+source2-alpha-arb+ #:+operand0-rgb-arb+
             #:+operand1-rgb-arb+ #:+operand2-rgb-arb+ #:+operand0-alpha-arb+
             #:+operand1-alpha-arb+ #:+operand2-alpha-arb+ #:+rgb-scale-arb+
             #:+add-signed-arb+ #:+interpolate-arb+ #:+subtract-arb+
             #:+constant-arb+ #:+primary-color-arb+ #:+previous-arb+
             #:+dot3-rgb-arb+ #:+dot3-rgba-arb+ #:+mirrored-repeat-arb+
             #:+depth-component16-arb+ #:+depth-component24-arb+
             #:+depth-component32-arb+ #:+texture-depth-size-arb+
             #:+depth-texture-mode-arb+ #:+texture-compare-mode-arb+
             #:+texture-compare-func-arb+ #:+compare-r-to-texture-arb+
             #:+texture-compare-fail-value-arb+ #:+fragment-program-arb+
             #:+program-alu-instructions-arb+ #:+program-tex-instructions-arb+
             #:+program-tex-indirections-arb+
             #:+program-native-alu-instructions-arb+
             #:+program-native-tex-instructions-arb+
             #:+program-native-tex-indirections-arb+
             #:+max-program-alu-instructions-arb+
             #:+max-program-tex-instructions-arb+
             #:+max-program-tex-indirections-arb+
             #:+max-program-native-alu-instructions-arb+
             #:+max-program-native-tex-instructions-arb+
             #:+max-program-native-tex-indirections-arb+
             #:+max-texture-coords-arb+ #:+max-texture-image-units-arb+
             #:+fragment-shader-arb+ #:+max-fragment-uniform-components-arb+
             #:+fragment-shader-derivative-hint-arb+
             #:+shading-language-version-arb+ #:+point-sprite-arb+
             #:+coord-replace-arb+ #:+texture-rectangle-arb+
             #:+texture-binding-rectangle-arb+ #:+proxy-texture-rectangle-arb+
             #:+max-rectangle-texture-size-arb+ #:+half-float-arb+
             #:+texture-red-type-arb+ #:+texture-green-type-arb+
             #:+texture-blue-type-arb+ #:+texture-alpha-type-arb+
             #:+texture-luminance-type-arb+ #:+texture-intensity-type-arb+
             #:+texture-depth-type-arb+ #:+unsigned-normalized-arb+
             #:+rgba32f-arb+ #:+rgb32f-arb+ #:+alpha32f-arb+
             #:+intensity32f-arb+ #:+luminance32f-arb+
             #:+luminance-alpha32f-arb+ #:+rgba16f-arb+ #:+rgb16f-arb+
             #:+alpha16f-arb+ #:+intensity16f-arb+ #:+luminance16f-arb+
             #:+luminance-alpha16f-arb+ #:+pixel-pack-buffer-arb+
             #:+pixel-unpack-buffer-arb+ #:+pixel-pack-buffer-binding-arb+
             #:+pixel-unpack-buffer-binding-arb+ #:+vertex-data-hint-pgi+
             #:+vertex-consistent-hint-pgi+ #:+material-side-hint-pgi+
             #:+max-vertex-hint-pgi+ #:+color3-bit-pgi+ #:+color4-bit-pgi+
             #:+edgeflag-bit-pgi+ #:+index-bit-pgi+ #:+mat-ambient-bit-pgi+
             #:+mat-ambient-and-diffuse-bit-pgi+ #:+mat-diffuse-bit-pgi+
             #:+mat-emission-bit-pgi+ #:+mat-color-indexes-bit-pgi+
             #:+mat-shininess-bit-pgi+ #:+mat-specular-bit-pgi+
             #:+normal-bit-pgi+ #:+texcoord1-bit-pgi+ #:+texcoord2-bit-pgi+
             #:+texcoord3-bit-pgi+ #:+texcoord4-bit-pgi+ #:+vertex23-bit-pgi+
             #:+vertex4-bit-pgi+ #:+clip-volume-clipping-hint-ext+
             #:+iui-v2f-ext+ #:+iui-v3f-ext+ #:+iui-n3f-v2f-ext+
             #:+iui-n3f-v3f-ext+ #:+t2f-iui-v2f-ext+ #:+t2f-iui-v3f-ext+
             #:+t2f-iui-n3f-v2f-ext+ #:+t2f-iui-n3f-v3f-ext+
             #:+raster-position-unclipped-ibm+ #:+texture-lighting-mode-hp+
             #:+texture-post-specular-hp+ #:+texture-pre-specular-hp+
             #:+phong-win+ #:+phong-hint-win+ #:+fog-specular-texture-win+
             #:+occlusion-test-hp+ #:+occlusion-test-result-hp+
             #:+screen-coordinates-rend+ #:+inverted-screen-w-rend+
             #:+combine-ext+ #:+combine-rgb-ext+ #:+combine-alpha-ext+
             #:+rgb-scale-ext+ #:+add-signed-ext+ #:+interpolate-ext+
             #:+constant-ext+ #:+primary-color-ext+ #:+previous-ext+
             #:+source0-rgb-ext+ #:+source1-rgb-ext+ #:+source2-rgb-ext+
             #:+source0-alpha-ext+ #:+source1-alpha-ext+ #:+source2-alpha-ext+
             #:+operand0-rgb-ext+ #:+operand1-rgb-ext+ #:+operand2-rgb-ext+
             #:+operand0-alpha-ext+ #:+operand1-alpha-ext+
             #:+operand2-alpha-ext+ #:+light-model-specular-vector-apple+
             #:+transform-hint-apple+ #:+fog-scale-sgix+
             #:+fog-scale-value-sgix+ #:+red-min-clamp-ingr+
             #:+green-min-clamp-ingr+ #:+blue-min-clamp-ingr+
             #:+alpha-min-clamp-ingr+ #:+red-max-clamp-ingr+
             #:+green-max-clamp-ingr+ #:+blue-max-clamp-ingr+
             #:+alpha-max-clamp-ingr+ #:+interlace-read-ingr+ #:+incr-wrap-ext+
             #:+decr-wrap-ext+ #:+422-ext+ #:+422-rev-ext+ #:+422-average-ext+
             #:+422-rev-average-ext+ #:+normal-map-nv+ #:+reflection-map-nv+
             #:+normal-map-ext+ #:+reflection-map-ext+ #:+texture-cube-map-ext+
             #:+texture-binding-cube-map-ext+
             #:+texture-cube-map-positive-x-ext+
             #:+texture-cube-map-negative-x-ext+
             #:+texture-cube-map-positive-y-ext+
             #:+texture-cube-map-negative-y-ext+
             #:+texture-cube-map-positive-z-ext+
             #:+texture-cube-map-negative-z-ext+ #:+proxy-texture-cube-map-ext+
             #:+max-cube-map-texture-size-ext+ #:+wrap-border-sun+
             #:+max-texture-lod-bias-ext+ #:+texture-filter-control-ext+
             #:+texture-lod-bias-ext+ #:+texture-max-anisotropy-ext+
             #:+max-texture-max-anisotropy-ext+ #:+max-shininess-nv+
             #:+max-spot-exponent-nv+ #:+fog-distance-mode-nv+
             #:+eye-radial-nv+ #:+eye-plane-absolute-nv+ #:+emboss-light-nv+
             #:+emboss-constant-nv+ #:+emboss-map-nv+ #:+combine4-nv+
             #:+source3-rgb-nv+ #:+source3-alpha-nv+ #:+operand3-rgb-nv+
             #:+operand3-alpha-nv+ #:+cull-vertex-ibm+ #:+ycrcb-sgix+
             #:+ycrcba-sgix+ #:+depth-pass-instrument-sgix+
             #:+depth-pass-instrument-counters-sgix+
             #:+depth-pass-instrument-max-sgix+ #:+compressed-rgb-fxt1-3dfx+
             #:+compressed-rgba-fxt1-3dfx+ #:+multisample-3dfx+
             #:+sample-buffers-3dfx+ #:+samples-3dfx+ #:+multisample-bit-3dfx+
             #:+dot3-rgb-ext+ #:+dot3-rgba-ext+ #:+mirror-clamp-ati+
             #:+mirror-clamp-to-edge-ati+ #:+mirrored-repeat-ibm+
             #:+depth-stencil-nv+ #:+unsigned-int-24-8-nv+
             #:+texture-rectangle-nv+ #:+texture-binding-rectangle-nv+
             #:+proxy-texture-rectangle-nv+ #:+max-rectangle-texture-size-nv+
             #:+offset-texture-rectangle-nv+
             #:+offset-texture-rectangle-scale-nv+
             #:+dot-product-texture-rectangle-nv+
             #:+rgba-unsigned-dot-product-mapping-nv+
             #:+unsigned-int-s8-s8-8-8-nv+ #:+unsigned-int-8-8-s8-s8-rev-nv+
             #:+dsdt-mag-intensity-nv+ #:+shader-consistent-nv+
             #:+texture-shader-nv+ #:+shader-operation-nv+ #:+cull-modes-nv+
             #:+offset-texture-matrix-nv+ #:+offset-texture-scale-nv+
             #:+offset-texture-bias-nv+ #:+offset-texture-2d-matrix-nv+
             #:+offset-texture-2d-scale-nv+ #:+offset-texture-2d-bias-nv+
             #:+previous-texture-input-nv+ #:+const-eye-nv+ #:+pass-through-nv+
             #:+cull-fragment-nv+ #:+offset-texture-2d-nv+
             #:+dependent-ar-texture-2d-nv+ #:+dependent-gb-texture-2d-nv+
             #:+dot-product-nv+ #:+dot-product-depth-replace-nv+
             #:+dot-product-texture-2d-nv+ #:+dot-product-texture-cube-map-nv+
             #:+dot-product-diffuse-cube-map-nv+
             #:+dot-product-reflect-cube-map-nv+
             #:+dot-product-const-eye-reflect-cube-map-nv+ #:+hilo-nv+
             #:+dsdt-nv+ #:+dsdt-mag-nv+ #:+dsdt-mag-vib-nv+ #:+hilo16-nv+
             #:+signed-hilo-nv+ #:+signed-hilo16-nv+ #:+signed-rgba-nv+
             #:+signed-rgba8-nv+ #:+signed-rgb-nv+ #:+signed-rgb8-nv+
             #:+signed-luminance-nv+ #:+signed-luminance8-nv+
             #:+signed-luminance-alpha-nv+ #:+signed-luminance8-alpha8-nv+
             #:+signed-alpha-nv+ #:+signed-alpha8-nv+ #:+signed-intensity-nv+
             #:+signed-intensity8-nv+ #:+dsdt8-nv+ #:+dsdt8-mag8-nv+
             #:+dsdt8-mag8-intensity8-nv+ #:+signed-rgb-unsigned-alpha-nv+
             #:+signed-rgb8-unsigned-alpha8-nv+ #:+hi-scale-nv+ #:+lo-scale-nv+
             #:+ds-scale-nv+ #:+dt-scale-nv+ #:+magnitude-scale-nv+
             #:+vibrance-scale-nv+ #:+hi-bias-nv+ #:+lo-bias-nv+ #:+ds-bias-nv+
             #:+dt-bias-nv+ #:+magnitude-bias-nv+ #:+vibrance-bias-nv+
             #:+texture-border-values-nv+ #:+texture-hi-size-nv+
             #:+texture-lo-size-nv+ #:+texture-ds-size-nv+
             #:+texture-dt-size-nv+ #:+texture-mag-size-nv+
             #:+dot-product-texture-3d-nv+
             #:+vertex-array-range-without-flush-nv+ #:+scalebias-hint-sgix+
             #:+interlace-oml+ #:+interlace-read-oml+
             #:+format-subsample-24-24-oml+ #:+format-subsample-244-244-oml+
             #:+pack-resample-oml+ #:+unpack-resample-oml+
             #:+resample-replicate-oml+ #:+resample-zero-fill-oml+
             #:+resample-average-oml+ #:+resample-decimate-oml+
             #:+depth-stencil-to-rgba-nv+ #:+depth-stencil-to-bgra-nv+
             #:+slice-accum-sun+ #:+multisample-filter-hint-nv+
             #:+depth-clamp-nv+ #:+offset-projective-texture-2d-nv+
             #:+offset-projective-texture-2d-scale-nv+
             #:+offset-projective-texture-rectangle-nv+
             #:+offset-projective-texture-rectangle-scale-nv+
             #:+offset-hilo-texture-2d-nv+ #:+offset-hilo-texture-rectangle-nv+
             #:+offset-hilo-projective-texture-2d-nv+
             #:+offset-hilo-projective-texture-rectangle-nv+
             #:+dependent-hilo-texture-2d-nv+ #:+dependent-rgb-texture-3d-nv+
             #:+dependent-rgb-texture-cube-map-nv+
             #:+dot-product-pass-through-nv+ #:+dot-product-texture-1d-nv+
             #:+dot-product-affine-depth-replace-nv+ #:+hilo8-nv+
             #:+signed-hilo8-nv+ #:+force-blue-to-one-nv+
             #:+text-fragment-shader-ati+ #:+unpack-client-storage-apple+
             #:+ycbcr-422-apple+ #:+unsigned-short-8-8-apple+
             #:+unsigned-short-8-8-rev-apple+ #:+rgb-s3tc+ #:+rgb4-s3tc+
             #:+rgba-s3tc+ #:+rgba4-s3tc+ #:+type-rgba-float-ati+
             #:+color-clear-unclamped-value-ati+ #:+modulate-add-ati+
             #:+modulate-signed-add-ati+ #:+modulate-subtract-ati+
             #:+rgba-float32-ati+ #:+rgb-float32-ati+ #:+alpha-float32-ati+
             #:+intensity-float32-ati+ #:+luminance-float32-ati+
             #:+luminance-alpha-float32-ati+ #:+rgba-float16-ati+
             #:+rgb-float16-ati+ #:+alpha-float16-ati+
             #:+intensity-float16-ati+ #:+luminance-float16-ati+
             #:+luminance-alpha-float16-ati+ #:+float-r-nv+ #:+float-rg-nv+
             #:+float-rgb-nv+ #:+float-rgba-nv+ #:+float-r16-nv+
             #:+float-r32-nv+ #:+float-rg16-nv+ #:+float-rg32-nv+
             #:+float-rgb16-nv+ #:+float-rgb32-nv+ #:+float-rgba16-nv+
             #:+float-rgba32-nv+ #:+texture-float-components-nv+
             #:+float-clear-color-value-nv+ #:+float-rgba-mode-nv+
             #:+texture-unsigned-remap-mode-nv+
             #:+implementation-color-read-type-oes+
             #:+implementation-color-read-format-oes+ #:+mirror-clamp-ext+
             #:+mirror-clamp-to-edge-ext+ #:+mirror-clamp-to-border-ext+
             #:+pack-invert-mesa+ #:+unsigned-short-8-8-mesa+
             #:+unsigned-short-8-8-rev-mesa+ #:+ycbcr-mesa+
             #:+pixel-pack-buffer-ext+ #:+pixel-unpack-buffer-ext+
             #:+pixel-pack-buffer-binding-ext+
             #:+pixel-unpack-buffer-binding-ext+
             #:+max-program-exec-instructions-nv+ #:+max-program-call-depth-nv+
             #:+max-program-if-depth-nv+ #:+max-program-loop-depth-nv+
             #:+max-program-loop-count-nv+
             #:+max-vertex-texture-image-units-arb+ #:+depth-stencil-ext+
             #:+unsigned-int-24-8-ext+ #:+depth24-stencil8-ext+
             #:+texture-stencil-size-ext+ #:+srgb-ext+ #:+srgb8-ext+
             #:+srgb-alpha-ext+ #:+srgb8-alpha8-ext+ #:+sluminance-alpha-ext+
             #:+sluminance8-alpha8-ext+ #:+sluminance-ext+ #:+sluminance8-ext+
             #:+compressed-srgb-ext+ #:+compressed-srgb-alpha-ext+
             #:+compressed-sluminance-ext+ #:+compressed-sluminance-alpha-ext+
             #:+compressed-srgb-s3tc-dxt1-ext+
             #:+compressed-srgb-alpha-s3tc-dxt1-ext+
             #:+compressed-srgb-alpha-s3tc-dxt3-ext+
             #:+compressed-srgb-alpha-s3tc-dxt5-ext+ #:+texture-1d-stack-mesax+
             #:+texture-2d-stack-mesax+ #:+proxy-texture-1d-stack-mesax+
             #:+proxy-texture-2d-stack-mesax+
             #:+texture-1d-stack-binding-mesax+
             #:+texture-2d-stack-binding-mesax+ #:+r11f-g11f-b10f-ext+
             #:+unsigned-int-10f-11f-11f-rev-ext+
             #:+rgba-signed-components-ext+ #:+texture-1d-array-ext+
             #:+proxy-texture-1d-array-ext+ #:+texture-2d-array-ext+
             #:+proxy-texture-2d-array-ext+ #:+texture-binding-1d-array-ext+
             #:+texture-binding-2d-array-ext+ #:+max-array-texture-layers-ext+
             #:+compare-ref-depth-to-texture-ext+
             #:+framebuffer-attachment-texture-layer-ext+
             #:+compressed-luminance-latc1-ext+
             #:+compressed-signed-luminance-latc1-ext+
             #:+compressed-luminance-alpha-latc2-ext+
             #:+compressed-signed-luminance-alpha-latc2-ext+
             #:+compressed-red-rgtc1-ext+ #:+compressed-signed-red-rgtc1-ext+
             #:+compressed-red-green-rgtc2-ext+
             #:+compressed-signed-red-green-rgtc2-ext+ #:+rgb9-e5-ext+
             #:+unsigned-int-5-9-9-9-rev-ext+ #:+texture-shared-size-ext+
             #:+framebuffer-srgb-ext+ #:+framebuffer-srgb-capable-ext+
             #:list-base #:gen-lists #:delete-lists #:call-lists #:call-list
             #:end-list #:new-list #:vertex-4sv #:vertex-4s #:vertex-4iv
             #:vertex-4i #:vertex-4fv #:vertex-4f #:vertex-4dv #:vertex-4d
             #:vertex-3sv #:vertex-3s #:vertex-3iv #:vertex-3i #:vertex-3fv
             #:vertex-3f #:vertex-3dv #:vertex-3d #:vertex-2sv #:vertex-2s
             #:vertex-2iv #:vertex-2i #:vertex-2fv #:vertex-2f #:vertex-2dv
             #:vertex-2d #:tex-coord-4sv #:tex-coord-4s #:tex-coord-4iv
             #:tex-coord-4i #:tex-coord-4fv #:tex-coord-4f #:tex-coord-4dv
             #:tex-coord-4d #:tex-coord-3sv #:tex-coord-3s #:tex-coord-3iv
             #:tex-coord-3i #:tex-coord-3fv #:tex-coord-3f #:tex-coord-3dv
             #:tex-coord-3d #:tex-coord-2sv #:tex-coord-2s #:tex-coord-2iv
             #:tex-coord-2i #:tex-coord-2fv #:tex-coord-2f #:tex-coord-2dv
             #:tex-coord-2d #:tex-coord-1sv #:tex-coord-1s #:tex-coord-1iv
             #:tex-coord-1i #:tex-coord-1fv #:tex-coord-1f #:tex-coord-1dv
             #:tex-coord-1d #:rect-sv #:rect-s #:rect-iv #:rect-i #:rect-fv
             #:rect-f #:rect-dv #:rect-d #:raster-pos-4sv #:raster-pos-4s
             #:raster-pos-4iv #:raster-pos-4i #:raster-pos-4fv #:raster-pos-4f
             #:raster-pos-4dv #:raster-pos-4d #:raster-pos-3sv #:raster-pos-3s
             #:raster-pos-3iv #:raster-pos-3i #:raster-pos-3fv #:raster-pos-3f
             #:raster-pos-3dv #:raster-pos-3d #:raster-pos-2sv #:raster-pos-2s
             #:raster-pos-2iv #:raster-pos-2i #:raster-pos-2fv #:raster-pos-2f
             #:raster-pos-2dv #:raster-pos-2d #:normal-3sv #:normal-3s
             #:normal-3iv #:normal-3i #:normal-3fv #:normal-3f #:normal-3dv
             #:normal-3d #:normal-3bv #:normal-3b #:index-sv #:index-s
             #:index-iv #:index-i #:index-fv #:index-f #:index-dv #:index-d
             #:end #:edge-flagv #:edge-flag #:color-4usv #:color-4us
             #:color-4uiv #:color-4ui #:color-4ubv #:color-4ub #:color-4sv
             #:color-4s #:color-4iv #:color-4i #:color-4fv #:color-4f
             #:color-4dv #:color-4d #:color-4bv #:color-4b #:color-3usv
             #:color-3us #:color-3uiv #:color-3ui #:color-3ubv #:color-3ub
             #:color-3sv #:color-3s #:color-3iv #:color-3i #:color-3fv
             #:color-3f #:color-3dv #:color-3d #:color-3bv #:color-3b #:bitmap
             #:begin #:tex-gen-iv #:tex-gen-i #:tex-gen-fv #:tex-gen-f
             #:tex-gen-dv #:tex-gen-d #:tex-env-iv #:tex-env-i #:tex-env-fv
             #:tex-env-f #:tex-image-2d #:tex-image-1d #:tex-parameter-iv
             #:tex-parameter-i #:tex-parameter-fv #:tex-parameter-f
             #:shade-model #:scissor #:polygon-stipple #:polygon-mode
             #:point-size #:material-iv #:material-i #:material-fv #:material-f
             #:line-width #:line-stipple #:light-model-iv #:light-model-i
             #:light-model-fv #:light-model-f #:light-iv #:light-i #:light-fv
             #:light-f #:hint #:front-face #:fog-iv #:fog-i #:fog-fv #:fog-f
             #:cull-face #:color-material #:clip-plane #:push-name #:pop-name
             #:pass-through #:load-name #:init-names #:render-mode
             #:select-buffer #:feedback-buffer #:index-mask #:depth-mask
             #:color-mask #:stencil-mask #:clear-depth #:clear-stencil
             #:clear-color #:clear-index #:clear-accum #:clear #:draw-buffer
             #:push-attrib #:pop-attrib #:flush #:finish #:enable #:disable
             #:accum #:eval-point-2 #:eval-mesh-2 #:eval-point-1 #:eval-mesh-1
             #:eval-coord-2fv #:eval-coord-2f #:eval-coord-2dv #:eval-coord-2d
             #:eval-coord-1fv #:eval-coord-1f #:eval-coord-1dv #:eval-coord-1d
             #:map-grid-2f #:map-grid-2d #:map-grid-1f #:map-grid-1d #:map-2f
             #:map-2d #:map-1f #:map-1d #:depth-func #:stencil-op
             #:stencil-func #:logic-op #:blend-func #:alpha-func #:draw-pixels
             #:read-pixels #:copy-pixels #:read-buffer #:pixel-map-usv
             #:pixel-map-uiv #:pixel-map-fv #:pixel-store-i #:pixel-store-f
             #:pixel-transfer-i #:pixel-transfer-f #:pixel-zoom #:is-list
             #:is-enabled #:get-tex-level-parameter-iv
             #:get-tex-level-parameter-fv #:get-tex-parameter-iv
             #:get-tex-parameter-fv #:get-tex-image #:get-tex-gen-iv
             #:get-tex-gen-fv #:get-tex-gen-dv #:get-tex-env-iv
             #:get-tex-env-fv #:get-string #:get-polygon-stipple
             #:get-pixel-map-usv #:get-pixel-map-uiv #:get-pixel-map-fv
             #:get-material-iv #:get-material-fv #:get-map-iv #:get-map-fv
             #:get-map-dv #:get-light-iv #:get-light-fv #:get-integerv
             #:get-floatv #:get-error #:get-doublev #:get-clip-plane
             #:get-booleanv #:viewport #:translate-f #:translate-d #:scale-f
             #:scale-d #:rotate-f #:rotate-d #:push-matrix #:pop-matrix #:ortho
             #:mult-matrix-d #:mult-matrix-f #:matrix-mode #:load-matrix-d
             #:load-matrix-f #:load-identity #:frustum #:depth-range
             #:push-client-attrib #:pop-client-attrib #:index-ubv #:index-ub
             #:prioritize-textures #:is-texture #:gen-textures
             #:delete-textures #:bind-texture #:are-textures-resident
             #:tex-sub-image-2d #:tex-sub-image-1d #:copy-tex-sub-image-2d
             #:copy-tex-sub-image-1d #:copy-tex-image-2d #:copy-tex-image-1d
             #:polygon-offset #:vertex-pointer #:tex-coord-pointer
             #:normal-pointer #:interleaved-arrays #:index-pointer
             #:get-pointerv #:enable-client-state #:edge-flag-pointer
             #:draw-elements #:draw-arrays #:disable-client-state
             #:color-pointer #:array-element #:+max-elements-vertices+
             #:+max-elements-indices+ #:copy-tex-sub-image-3d
             #:tex-sub-image-3d #:tex-image-3d #:reset-minmax #:reset-histogram
             #:minmax #:histogram #:get-minmax-parameter-iv
             #:get-minmax-parameter-fv #:get-minmax
             #:get-histogram-parameter-iv #:get-histogram-parameter-fv
             #:get-histogram #:separable-filter-2d #:get-separable-filter
             #:get-convolution-parameter-iv #:get-convolution-parameter-fv
             #:get-convolution-filter #:copy-convolution-filter-2d
             #:copy-convolution-filter-1d #:convolution-parameter-iv
             #:convolution-parameter-i #:convolution-parameter-fv
             #:convolution-parameter-f #:convolution-filter-2d
             #:convolution-filter-1d #:copy-color-sub-table #:color-sub-table
             #:get-color-table-parameter-iv #:get-color-table-parameter-fv
             #:get-color-table #:copy-color-table #:color-table-parameter-iv
             #:color-table-parameter-fv #:color-table #:draw-range-elements
             #:blend-equation #:blend-color #:+texture0+ #:+texture1+
             #:+texture2+ #:+texture3+ #:+texture4+ #:+texture5+ #:+texture6+
             #:+texture7+ #:+texture8+ #:+texture9+ #:+texture10+ #:+texture11+
             #:+texture12+ #:+texture13+ #:+texture14+ #:+texture15+
             #:+texture16+ #:+texture17+ #:+texture18+ #:+texture19+
             #:+texture20+ #:+texture21+ #:+texture22+ #:+texture23+
             #:+texture24+ #:+texture25+ #:+texture26+ #:+texture27+
             #:+texture28+ #:+texture29+ #:+texture30+ #:+texture31+
             #:+active-texture+ #:+client-active-texture+ #:+max-texture-units+
             #:+transpose-modelview-matrix+ #:+transpose-projection-matrix+
             #:+transpose-texture-matrix+ #:+transpose-color-matrix+
             #:+multisample-bit+ #:+normal-map+ #:+reflection-map+
             #:+texture-cube-map+ #:+texture-binding-cube-map+
             #:+texture-cube-map-positive-x+ #:+texture-cube-map-negative-x+
             #:+texture-cube-map-positive-y+ #:+texture-cube-map-negative-y+
             #:+texture-cube-map-positive-z+ #:+texture-cube-map-negative-z+
             #:+proxy-texture-cube-map+ #:+max-cube-map-texture-size+
             #:+compressed-alpha+ #:+compressed-luminance+
             #:+compressed-luminance-alpha+ #:+compressed-intensity+
             #:+compressed-rgb+ #:+compressed-rgba+
             #:+texture-compression-hint+ #:+texture-compressed-image-size+
             #:+texture-compressed+ #:+num-compressed-texture-formats+
             #:+compressed-texture-formats+ #:+combine+ #:+combine-rgb+
             #:+combine-alpha+ #:+source0-rgb+ #:+source1-rgb+ #:+source2-rgb+
             #:+source0-alpha+ #:+source1-alpha+ #:+source2-alpha+
             #:+operand0-rgb+ #:+operand1-rgb+ #:+operand2-rgb+
             #:+operand0-alpha+ #:+operand1-alpha+ #:+operand2-alpha+
             #:+rgb-scale+ #:+add-signed+ #:+interpolate+ #:+subtract+
             #:+constant+ #:+primary-color+ #:+previous+ #:+dot3-rgb+
             #:+dot3-rgba+ #:get-compressed-tex-image
             #:compressed-tex-sub-image-1d #:compressed-tex-sub-image-2d
             #:compressed-tex-sub-image-3d #:compressed-tex-image-1d
             #:compressed-tex-image-2d #:compressed-tex-image-3d
             #:sample-coverage #:mult-transpose-matrix-d
             #:mult-transpose-matrix-f #:load-transpose-matrix-d
             #:load-transpose-matrix-f #:multi-tex-coord-4sv
             #:multi-tex-coord-4s #:multi-tex-coord-4iv #:multi-tex-coord-4i
             #:multi-tex-coord-4fv #:multi-tex-coord-4f #:multi-tex-coord-4dv
             #:multi-tex-coord-4d #:multi-tex-coord-3sv #:multi-tex-coord-3s
             #:multi-tex-coord-3iv #:multi-tex-coord-3i #:multi-tex-coord-3fv
             #:multi-tex-coord-3f #:multi-tex-coord-3dv #:multi-tex-coord-3d
             #:multi-tex-coord-2sv #:multi-tex-coord-2s #:multi-tex-coord-2iv
             #:multi-tex-coord-2i #:multi-tex-coord-2fv #:multi-tex-coord-2f
             #:multi-tex-coord-2dv #:multi-tex-coord-2d #:multi-tex-coord-1sv
             #:multi-tex-coord-1s #:multi-tex-coord-1iv #:multi-tex-coord-1i
             #:multi-tex-coord-1fv #:multi-tex-coord-1f #:multi-tex-coord-1dv
             #:multi-tex-coord-1d #:client-active-texture #:active-texture
             #:+blend-dst-rgb+ #:+blend-src-rgb+ #:+blend-dst-alpha+
             #:+blend-src-alpha+ #:+mirrored-repeat+ #:+fog-coordinate-source+
             #:+fog-coordinate+ #:+fragment-depth+ #:+current-fog-coordinate+
             #:+fog-coordinate-array-type+ #:+fog-coordinate-array-stride+
             #:+fog-coordinate-array-pointer+ #:+fog-coordinate-array+
             #:+color-sum+ #:+current-secondary-color+
             #:+secondary-color-array-size+ #:+secondary-color-array-type+
             #:+secondary-color-array-stride+ #:+secondary-color-array-pointer+
             #:+secondary-color-array+ #:+max-texture-lod-bias+
             #:+texture-filter-control+ #:+texture-lod-bias+ #:+incr-wrap+
             #:+decr-wrap+ #:+texture-depth-size+ #:+depth-texture-mode+
             #:+texture-compare-mode+ #:+texture-compare-func+
             #:+compare-r-to-texture+ #:window-pos-3sv #:window-pos-3s
             #:window-pos-3iv #:window-pos-3i #:window-pos-3fv #:window-pos-3f
             #:window-pos-3dv #:window-pos-3d #:window-pos-2sv #:window-pos-2s
             #:window-pos-2iv #:window-pos-2i #:window-pos-2fv #:window-pos-2f
             #:window-pos-2dv #:window-pos-2d #:secondary-color-pointer
             #:secondary-color-3usv #:secondary-color-3us
             #:secondary-color-3uiv #:secondary-color-3ui
             #:secondary-color-3ubv #:secondary-color-3ub #:secondary-color-3sv
             #:secondary-color-3s #:secondary-color-3iv #:secondary-color-3i
             #:secondary-color-3fv #:secondary-color-3f #:secondary-color-3dv
             #:secondary-color-3d #:secondary-color-3bv #:secondary-color-3b
             #:point-parameter-iv #:point-parameter-i #:point-parameter-fv
             #:point-parameter-f #:multi-draw-elements #:multi-draw-arrays
             #:fog-coord-pointer #:fog-coord-dv #:fog-coord-d #:fog-coord-fv
             #:fog-coord-f #:blend-func-separate #:+buffer-size+
             #:+buffer-usage+ #:+query-counter-bits+ #:+current-query+
             #:+query-result+ #:+query-result-available+ #:+array-buffer+
             #:+element-array-buffer+ #:+array-buffer-binding+
             #:+element-array-buffer-binding+ #:+vertex-array-buffer-binding+
             #:+normal-array-buffer-binding+ #:+color-array-buffer-binding+
             #:+index-array-buffer-binding+
             #:+texture-coord-array-buffer-binding+
             #:+edge-flag-array-buffer-binding+
             #:+secondary-color-array-buffer-binding+
             #:+fog-coordinate-array-buffer-binding+
             #:+weight-array-buffer-binding+
             #:+vertex-attrib-array-buffer-binding+ #:+read-only+
             #:+write-only+ #:+read-write+ #:+buffer-access+ #:+buffer-mapped+
             #:+buffer-map-pointer+ #:+stream-draw+ #:+stream-read+
             #:+stream-copy+ #:+static-draw+ #:+static-read+ #:+static-copy+
             #:+dynamic-draw+ #:+dynamic-read+ #:+dynamic-copy+
             #:+samples-passed+ #:+fog-coord-src+ #:+fog-coord+
             #:+current-fog-coord+ #:+fog-coord-array-type+
             #:+fog-coord-array-stride+ #:+fog-coord-array-pointer+
             #:+fog-coord-array+ #:+fog-coord-array-buffer-binding+
             #:+src0-rgb+ #:+src1-rgb+ #:+src2-rgb+ #:+src0-alpha+
             #:+src1-alpha+ #:+src2-alpha+ #:get-buffer-pointerv
             #:get-buffer-parameter-iv #:unmap-buffer #:map-buffer
             #:get-buffer-sub-data #:buffer-sub-data #:buffer-data #:is-buffer
             #:gen-buffers #:delete-buffers #:bind-buffer
             #:get-query-object-uiv #:get-query-object-iv #:get-query-iv
             #:end-query #:begin-query #:is-query #:delete-queries
             #:gen-queries #:+blend-equation-rgb+
             #:+vertex-attrib-array-enabled+ #:+vertex-attrib-array-size+
             #:+vertex-attrib-array-stride+ #:+vertex-attrib-array-type+
             #:+current-vertex-attrib+ #:+vertex-program-point-size+
             #:+vertex-program-two-side+ #:+vertex-attrib-array-pointer+
             #:+stencil-back-func+ #:+stencil-back-fail+
             #:+stencil-back-pass-depth-fail+ #:+stencil-back-pass-depth-pass+
             #:+max-draw-buffers+ #:+draw-buffer0+ #:+draw-buffer1+
             #:+draw-buffer2+ #:+draw-buffer3+ #:+draw-buffer4+
             #:+draw-buffer5+ #:+draw-buffer6+ #:+draw-buffer7+
             #:+draw-buffer8+ #:+draw-buffer9+ #:+draw-buffer10+
             #:+draw-buffer11+ #:+draw-buffer12+ #:+draw-buffer13+
             #:+draw-buffer14+ #:+draw-buffer15+ #:+blend-equation-alpha+
             #:+point-sprite+ #:+coord-replace+ #:+max-vertex-attribs+
             #:+vertex-attrib-array-normalized+ #:+max-texture-coords+
             #:+max-texture-image-units+ #:+fragment-shader+ #:+vertex-shader+
             #:+max-fragment-uniform-components+
             #:+max-vertex-uniform-components+ #:+max-varying-floats+
             #:+max-vertex-texture-image-units+
             #:+max-combined-texture-image-units+ #:+shader-type+
             #:+float-vec2+ #:+float-vec3+ #:+float-vec4+ #:+int-vec2+
             #:+int-vec3+ #:+int-vec4+ #:+bool+ #:+bool-vec2+ #:+bool-vec3+
             #:+bool-vec4+ #:+float-mat2+ #:+float-mat3+ #:+float-mat4+
             #:+sampler-1d+ #:+sampler-2d+ #:+sampler-3d+ #:+sampler-cube+
             #:+sampler-1d-shadow+ #:+sampler-2d-shadow+ #:+delete-status+
             #:+compile-status+ #:+link-status+ #:+validate-status+
             #:+info-log-length+ #:+attached-shaders+ #:+active-uniforms+
             #:+active-uniform-max-length+ #:+shader-source-length+
             #:+active-attributes+ #:+active-attribute-max-length+
             #:+fragment-shader-derivative-hint+ #:+shading-language-version+
             #:+current-program+ #:+point-sprite-coord-origin+ #:+lower-left+
             #:+upper-left+ #:+stencil-back-ref+ #:+stencil-back-value-mask+
             #:+stencil-back-writemask+ #:vertex-attrib-pointer
             #:vertex-attrib-4usv #:vertex-attrib-4uiv #:vertex-attrib-4ubv
             #:vertex-attrib-4sv #:vertex-attrib-4s #:vertex-attrib-4iv
             #:vertex-attrib-4fv #:vertex-attrib-4f #:vertex-attrib-4dv
             #:vertex-attrib-4d #:vertex-attrib-4bv #:vertex-attrib-4n-usv
             #:vertex-attrib-4n-uiv #:vertex-attrib-4n-ubv
             #:vertex-attrib-4n-ub #:vertex-attrib-4n-sv #:vertex-attrib-4n-iv
             #:vertex-attrib-4n-bv #:vertex-attrib-3sv #:vertex-attrib-3s
             #:vertex-attrib-3fv #:vertex-attrib-3f #:vertex-attrib-3dv
             #:vertex-attrib-3d #:vertex-attrib-2sv #:vertex-attrib-2s
             #:vertex-attrib-2fv #:vertex-attrib-2f #:vertex-attrib-2dv
             #:vertex-attrib-2d #:vertex-attrib-1sv #:vertex-attrib-1s
             #:vertex-attrib-1fv #:vertex-attrib-1f #:vertex-attrib-1dv
             #:vertex-attrib-1d #:validate-program #:uniform-matrix-4fv
             #:uniform-matrix-3fv #:uniform-matrix-2fv #:uniform-4iv
             #:uniform-3iv #:uniform-2iv #:uniform-1iv #:uniform-4fv
             #:uniform-3fv #:uniform-2fv #:uniform-1fv #:uniform-4i
             #:uniform-3i #:uniform-2i #:uniform-1i #:uniform-4f #:uniform-3f
             #:uniform-2f #:uniform-1f #:use-program #:shader-source
             #:link-program #:is-shader #:is-program
             #:get-vertex-attrib-pointerv #:get-vertex-attrib-iv
             #:get-vertex-attrib-fv #:get-vertex-attrib-dv #:get-uniform-iv
             #:get-uniform-fv #:get-uniform-location #:get-shader-source
             #:get-shader-info-log #:get-shader-iv #:get-program-info-log
             #:get-program-iv #:get-attrib-location #:get-attached-shaders
             #:get-active-uniform #:get-active-attrib
             #:enable-vertex-attrib-array #:disable-vertex-attrib-array
             #:detach-shader #:delete-shader #:delete-program #:create-shader
             #:create-program #:compile-shader #:bind-attrib-location
             #:attach-shader #:stencil-mask-separate #:stencil-func-separate
             #:stencil-op-separate #:draw-buffers #:blend-equation-separate
             #:+current-raster-secondary-color+ #:+pixel-pack-buffer+
             #:+pixel-unpack-buffer+ #:+pixel-pack-buffer-binding+
             #:+pixel-unpack-buffer-binding+ #:+float-mat2x3+ #:+float-mat2x4+
             #:+float-mat3x2+ #:+float-mat3x4+ #:+float-mat4x2+
             #:+float-mat4x3+ #:+srgb+ #:+srgb8+ #:+srgb-alpha+
             #:+srgb8-alpha8+ #:+sluminance-alpha+ #:+sluminance8-alpha8+
             #:+sluminance+ #:+sluminance8+ #:+compressed-srgb+
             #:+compressed-srgb-alpha+ #:+compressed-sluminance+
             #:+compressed-sluminance-alpha+ #:uniform-matrix-4x-3fv
             #:uniform-matrix-3x-4fv #:uniform-matrix-4x-2fv
             #:uniform-matrix-2x-4fv #:uniform-matrix-3x-2fv
             #:uniform-matrix-2x-3fv #:blend-func-separate-ingr
             #:igloo-interface-sgix #:frame-terminator-gremedy #:+rgba32ui-ext+
             #:+rgb32ui-ext+ #:+alpha32ui-ext+ #:+intensity32ui-ext+
             #:+luminance32ui-ext+ #:+luminance-alpha32ui-ext+ #:+rgba16ui-ext+
             #:+rgb16ui-ext+ #:+alpha16ui-ext+ #:+intensity16ui-ext+
             #:+luminance16ui-ext+ #:+luminance-alpha16ui-ext+ #:+rgba8ui-ext+
             #:+rgb8ui-ext+ #:+alpha8ui-ext+ #:+intensity8ui-ext+
             #:+luminance8ui-ext+ #:+luminance-alpha8ui-ext+ #:+rgba32i-ext+
             #:+rgb32i-ext+ #:+alpha32i-ext+ #:+intensity32i-ext+
             #:+luminance32i-ext+ #:+luminance-alpha32i-ext+ #:+rgba16i-ext+
             #:+rgb16i-ext+ #:+alpha16i-ext+ #:+intensity16i-ext+
             #:+luminance16i-ext+ #:+luminance-alpha16i-ext+ #:+rgba8i-ext+
             #:+rgb8i-ext+ #:+alpha8i-ext+ #:+intensity8i-ext+
             #:+luminance8i-ext+ #:+luminance-alpha8i-ext+ #:+red-integer-ext+
             #:+green-integer-ext+ #:+blue-integer-ext+ #:+alpha-integer-ext+
             #:+rgb-integer-ext+ #:+rgba-integer-ext+ #:+bgr-integer-ext+
             #:+bgra-integer-ext+ #:+luminance-integer-ext+
             #:+luminance-alpha-integer-ext+ #:+rgba-integer-mode-ext+
             #:clear-color-i-ui-ext #:clear-color-i-i-ext
             #:get-tex-parameter-i-uiv-ext #:get-tex-parameter-i-iv-ext
             #:tex-parameter-i-uiv-ext #:tex-parameter-i-iv-ext
             #:+max-vertex-bindable-uniforms-ext+
             #:+max-fragment-bindable-uniforms-ext+
             #:+max-geometry-bindable-uniforms-ext+
             #:+max-bindable-uniform-size-ext+ #:+uniform-buffer-ext+
             #:+uniform-buffer-binding-ext+ #:get-uniform-offset-ext
             #:get-uniform-buffer-size-ext #:uniform-buffer-ext
             #:+back-primary-color-nv+ #:+back-secondary-color-nv+
             #:+texture-coord-nv+ #:+clip-distance-nv+ #:+vertex-id-nv+
             #:+primitive-id-nv+ #:+generic-attrib-nv+
             #:+transform-feedback-attribs-nv+
             #:+transform-feedback-buffer-mode-nv+
             #:+max-transform-feedback-separate-components-nv+
             #:+active-varyings-nv+ #:+active-varying-max-length-nv+
             #:+transform-feedback-varyings-nv+
             #:+transform-feedback-buffer-start-nv+
             #:+transform-feedback-buffer-size-nv+
             #:+transform-feedback-record-nv+ #:+primitives-generated-nv+
             #:+transform-feedback-primitives-written-nv+
             #:+rasterizer-discard-nv+
             #:+max-transform-feedback-interleaved-attribs-nv+
             #:+max-transform-feedback-separate-attribs-nv+
             #:+interleaved-attribs-nv+ #:+separate-attribs-nv+
             #:+transform-feedback-buffer-nv+
             #:+transform-feedback-buffer-binding-nv+
             #:get-transform-feedback-varying-nv #:get-active-varying-nv
             #:get-varying-location-nv #:active-varying-nv
             #:transform-feedback-varyings-nv #:bind-buffer-base-nv
             #:bind-buffer-offset-nv #:bind-buffer-range-nv
             #:transform-feedback-attribs-nv #:end-transform-feedback-nv
             #:begin-transform-feedback-nv #:is-enabled-indexed-ext
             #:disable-indexed-ext #:enable-indexed-ext
             #:get-integer-indexed-v-ext #:get-boolean-indexed-v-ext
             #:color-mask-indexed-ext
             #:+max-program-parameter-buffer-bindings-nv+
             #:+max-program-parameter-buffer-size-nv+
             #:+vertex-program-parameter-buffer-nv+
             #:+geometry-program-parameter-buffer-nv+
             #:+fragment-program-parameter-buffer-nv+
             #:program-buffer-parameters-i-uiv-nv
             #:program-buffer-parameters-i-iv-nv
             #:program-buffer-parameters-fv-nv
             #:+renderbuffer-coverage-samples-nv+
             #:+renderbuffer-color-samples-nv+
             #:+max-multisample-coverage-modes-nv+
             #:+multisample-coverage-modes-nv+
             #:renderbuffer-storage-multisample-coverage-nv
             #:+depth-component32f-nv+ #:+depth32f-stencil8-nv+
             #:+float-32-unsigned-int-24-8-rev-nv+
             #:+depth-buffer-float-mode-nv+ #:depth-bounds-d-nv
             #:clear-depth-d-nv #:depth-ranged-nv #:+texture-buffer-ext+
             #:+max-texture-buffer-size-ext+ #:+texture-binding-buffer-ext+
             #:+texture-buffer-data-store-binding-ext+
             #:+texture-buffer-format-ext+ #:tex-buffer-ext
             #:draw-elements-instanced-ext #:draw-arrays-instanced-ext
             #:+sampler-1d-array-ext+ #:+sampler-2d-array-ext+
             #:+sampler-buffer-ext+ #:+sampler-1d-array-shadow-ext+
             #:+sampler-2d-array-shadow-ext+ #:+sampler-cube-shadow-ext+
             #:+unsigned-int-vec2-ext+ #:+unsigned-int-vec3-ext+
             #:+unsigned-int-vec4-ext+ #:+int-sampler-1d-ext+
             #:+int-sampler-2d-ext+ #:+int-sampler-3d-ext+
             #:+int-sampler-cube-ext+ #:+int-sampler-2d-rect-ext+
             #:+int-sampler-1d-array-ext+ #:+int-sampler-2d-array-ext+
             #:+int-sampler-buffer-ext+ #:+unsigned-int-sampler-1d-ext+
             #:+unsigned-int-sampler-2d-ext+ #:+unsigned-int-sampler-3d-ext+
             #:+unsigned-int-sampler-cube-ext+
             #:+unsigned-int-sampler-2d-rect-ext+
             #:+unsigned-int-sampler-1d-array-ext+
             #:+unsigned-int-sampler-2d-array-ext+
             #:+unsigned-int-sampler-buffer-ext+ #:uniform-4uiv-ext
             #:uniform-3uiv-ext #:uniform-2uiv-ext #:uniform-1uiv-ext
             #:uniform-4ui-ext #:uniform-3ui-ext #:uniform-2ui-ext
             #:uniform-1ui-ext #:get-frag-data-location-ext
             #:bind-frag-data-location-ext #:get-uniform-uiv-ext
             #:+vertex-attrib-array-integer-nv+ #:get-vertex-attrib-i-uiv-ext
             #:get-vertex-attrib-i-iv-ext #:vertex-attrib-ipointer-ext
             #:vertex-attrib-i-4usv-ext #:vertex-attrib-i-4ubv-ext
             #:vertex-attrib-i-4sv-ext #:vertex-attrib-i-4bv-ext
             #:vertex-attrib-i-4uiv-ext #:vertex-attrib-i-3uiv-ext
             #:vertex-attrib-i-2uiv-ext #:vertex-attrib-i-1uiv-ext
             #:vertex-attrib-i-4iv-ext #:vertex-attrib-i-3iv-ext
             #:vertex-attrib-i-2iv-ext #:vertex-attrib-i-1iv-ext
             #:vertex-attrib-i-4ui-ext #:vertex-attrib-i-3ui-ext
             #:vertex-attrib-i-2ui-ext #:vertex-attrib-i-1ui-ext
             #:vertex-attrib-i-4i-ext #:vertex-attrib-i-3i-ext
             #:vertex-attrib-i-2i-ext #:vertex-attrib-i-1i-ext
             #:+geometry-shader-ext+ #:+max-geometry-varying-components-ext+
             #:+max-vertex-varying-components-ext+
             #:+max-varying-components-ext+
             #:+max-geometry-uniform-components-ext+
             #:+max-geometry-output-vertices-ext+
             #:+max-geometry-total-output-components-ext+
             #:program-parameter-i-ext #:+lines-adjacency-ext+
             #:+line-strip-adjacency-ext+ #:+triangles-adjacency-ext+
             #:+triangle-strip-adjacency-ext+ #:+geometry-program-nv+
             #:+max-program-output-vertices-nv+
             #:+max-program-total-output-components-nv+
             #:+geometry-vertices-out-ext+ #:+geometry-input-type-ext+
             #:+geometry-output-type-ext+
             #:+max-geometry-texture-image-units-ext+
             #:+framebuffer-attachment-layered-ext+
             #:+framebuffer-incomplete-layer-targets-ext+
             #:+framebuffer-incomplete-layer-count-ext+
             #:+program-point-size-ext+ #:framebuffer-texture-face-ext
             #:framebuffer-texture-layer-ext #:framebuffer-texture-ext
             #:program-vertex-limit-nv #:+min-program-texel-offset-nv+
             #:+max-program-texel-offset-nv+ #:+program-attrib-components-nv+
             #:+program-result-components-nv+
             #:+max-program-attrib-components-nv+
             #:+max-program-result-components-nv+
             #:+max-program-generic-attribs-nv+
             #:+max-program-generic-results-nv+
             #:get-program-env-parameter-i-uiv-nv
             #:get-program-env-parameter-i-iv-nv
             #:get-program-local-parameter-i-uiv-nv
             #:get-program-local-parameter-i-iv-nv
             #:program-env-parameters-i-4uiv-nv
             #:program-env-parameter-i-4uiv-nv #:program-env-parameter-i-4ui-nv
             #:program-env-parameters-i-4iv-nv #:program-env-parameter-i-4iv-nv
             #:program-env-parameter-i-4i-nv
             #:program-local-parameters-i-4uiv-nv
             #:program-local-parameter-i-4uiv-nv
             #:program-local-parameter-i-4ui-nv
             #:program-local-parameters-i-4iv-nv
             #:program-local-parameter-i-4iv-nv
             #:program-local-parameter-i-4i-nv
             #:+buffer-serialized-modify-apple+ #:+buffer-flushing-unmap-apple+
             #:flush-mapped-buffer-range-apple #:buffer-parameter-i-apple
             #:program-local-parameters-4fv-ext
             #:program-env-parameters-4fv-ext #:+time-elapsed-ext+
             #:get-query-objectui-64v-ext #:get-query-objecti-64v-ext
             #:+renderbuffer-samples-ext+
             #:+framebuffer-incomplete-multisample-ext+ #:+max-samples-ext+
             #:renderbuffer-storage-multisample-ext #:+read-framebuffer-ext+
             #:+draw-framebuffer-ext+ #:+read-framebuffer-binding-ext+
             #:+draw-framebuffer-binding-ext+ #:blit-framebuffer-ext
             #:+stencil-tag-bits-ext+ #:+stencil-clear-tag-value-ext+
             #:stencil-clear-tag-ext #:string-marker-gremedy
             #:+invalid-framebuffer-operation-ext+
             #:+max-renderbuffer-size-ext+ #:+framebuffer-binding-ext+
             #:+renderbuffer-binding-ext+
             #:+framebuffer-attachment-object-type-ext+
             #:+framebuffer-attachment-object-name-ext+
             #:+framebuffer-attachment-texture-level-ext+
             #:+framebuffer-attachment-texture-cube-map-face-ext+
             #:+framebuffer-attachment-texture-3d-zoffset-ext+
             #:+framebuffer-complete-ext+
             #:+framebuffer-incomplete-attachment-ext+
             #:+framebuffer-incomplete-missing-attachment-ext+
             #:+framebuffer-incomplete-dimensions-ext+
             #:+framebuffer-incomplete-formats-ext+
             #:+framebuffer-incomplete-draw-buffer-ext+
             #:+framebuffer-incomplete-read-buffer-ext+
             #:+framebuffer-unsupported-ext+ #:+max-color-attachments-ext+
             #:+color-attachment0-ext+ #:+color-attachment1-ext+
             #:+color-attachment2-ext+ #:+color-attachment3-ext+
             #:+color-attachment4-ext+ #:+color-attachment5-ext+
             #:+color-attachment6-ext+ #:+color-attachment7-ext+
             #:+color-attachment8-ext+ #:+color-attachment9-ext+
             #:+color-attachment10-ext+ #:+color-attachment11-ext+
             #:+color-attachment12-ext+ #:+color-attachment13-ext+
             #:+color-attachment14-ext+ #:+color-attachment15-ext+
             #:+depth-attachment-ext+ #:+stencil-attachment-ext+
             #:+framebuffer-ext+ #:+renderbuffer-ext+
             #:+renderbuffer-width-ext+ #:+renderbuffer-height-ext+
             #:+renderbuffer-internal-format-ext+ #:+stencil-index1-ext+
             #:+stencil-index4-ext+ #:+stencil-index8-ext+
             #:+stencil-index16-ext+ #:+renderbuffer-red-size-ext+
             #:+renderbuffer-green-size-ext+ #:+renderbuffer-blue-size-ext+
             #:+renderbuffer-alpha-size-ext+ #:+renderbuffer-depth-size-ext+
             #:+renderbuffer-stencil-size-ext+ #:generate-mipmap-ext
             #:get-framebuffer-attachment-parameter-iv-ext
             #:framebuffer-renderbuffer-ext #:framebuffer-texture-3d-ext
             #:framebuffer-texture-2d-ext #:framebuffer-texture-1d-ext
             #:check-framebuffer-status-ext #:gen-framebuffers-ext
             #:delete-framebuffers-ext #:bind-framebuffer-ext
             #:is-framebuffer-ext #:get-renderbuffer-parameter-iv-ext
             #:renderbuffer-storage-ext #:gen-renderbuffers-ext
             #:delete-renderbuffers-ext #:bind-renderbuffer-ext
             #:is-renderbuffer-ext #:+blend-equation-rgb-ext+
             #:+blend-equation-alpha-ext+ #:blend-equation-separate-ext
             #:+depth-bounds-test-ext+ #:+depth-bounds-ext+ #:depth-bounds-ext
             #:get-vertex-attrib-array-object-iv-ati
             #:get-vertex-attrib-array-object-fv-ati
             #:vertex-attrib-array-object-ati #:+stencil-back-func-ati+
             #:+stencil-back-fail-ati+ #:+stencil-back-pass-depth-fail-ati+
             #:+stencil-back-pass-depth-pass-ati+ #:stencil-func-separate-ati
             #:stencil-op-separate-ati #:unmap-object-buffer-ati
             #:map-object-buffer-ati #:+primitive-restart-nv+
             #:+primitive-restart-index-nv+ #:primitive-restart-index-nv
             #:primitive-restart-nv #:+write-pixel-data-range-nv+
             #:+read-pixel-data-range-nv+ #:+write-pixel-data-range-length-nv+
             #:+read-pixel-data-range-length-nv+
             #:+write-pixel-data-range-pointer-nv+
             #:+read-pixel-data-range-pointer-nv+ #:flush-pixel-data-range-nv
             #:pixel-data-range-nv #:+half-float-nv+ #:vertex-attribs-4hv-nv
             #:vertex-attribs-3hv-nv #:vertex-attribs-2hv-nv
             #:vertex-attribs-1hv-nv #:vertex-attrib-4hv-nv
             #:vertex-attrib-4h-nv #:vertex-attrib-3hv-nv #:vertex-attrib-3h-nv
             #:vertex-attrib-2hv-nv #:vertex-attrib-2h-nv
             #:vertex-attrib-1hv-nv #:vertex-attrib-1h-nv #:vertex-weight-hv-nv
             #:vertex-weight-h-nv #:secondary-color-3hv-nv
             #:secondary-color-3h-nv #:fog-coord-hv-nv #:fog-coord-h-nv
             #:multi-tex-coord-4hv-nv #:multi-tex-coord-4h-nv
             #:multi-tex-coord-3hv-nv #:multi-tex-coord-3h-nv
             #:multi-tex-coord-2hv-nv #:multi-tex-coord-2h-nv
             #:multi-tex-coord-1hv-nv #:multi-tex-coord-1h-nv
             #:tex-coord-4hv-nv #:tex-coord-4h-nv #:tex-coord-3hv-nv
             #:tex-coord-3h-nv #:tex-coord-2hv-nv #:tex-coord-2h-nv
             #:tex-coord-1hv-nv #:tex-coord-1h-nv #:color-4hv-nv #:color-4h-nv
             #:color-3hv-nv #:color-3h-nv #:normal-3hv-nv #:normal-3h-nv
             #:vertex-4hv-nv #:vertex-4h-nv #:vertex-3hv-nv #:vertex-3h-nv
             #:vertex-2hv-nv #:vertex-2h-nv
             #:+max-fragment-program-local-parameters-nv+
             #:+fragment-program-nv+ #:+max-texture-coords-nv+
             #:+max-texture-image-units-nv+ #:+fragment-program-binding-nv+
             #:+program-error-string-nv+ #:get-program-named-parameter-dv-nv
             #:get-program-named-parameter-fv-nv
             #:program-named-parameter-4dv-nv #:program-named-parameter-4fv-nv
             #:program-named-parameter-4d-nv #:program-named-parameter-4f-nv
             #:+max-draw-buffers-ati+ #:+draw-buffer0-ati+ #:+draw-buffer1-ati+
             #:+draw-buffer2-ati+ #:+draw-buffer3-ati+ #:+draw-buffer4-ati+
             #:+draw-buffer5-ati+ #:+draw-buffer6-ati+ #:+draw-buffer7-ati+
             #:+draw-buffer8-ati+ #:+draw-buffer9-ati+ #:+draw-buffer10-ati+
             #:+draw-buffer11-ati+ #:+draw-buffer12-ati+ #:+draw-buffer13-ati+
             #:+draw-buffer14-ati+ #:+draw-buffer15-ati+ #:draw-buffers-ati
             #:+vertex-array-range-apple+ #:+vertex-array-range-length-apple+
             #:+vertex-array-storage-hint-apple+
             #:+vertex-array-range-pointer-apple+ #:+storage-cached-apple+
             #:+storage-shared-apple+ #:vertex-array-parameter-i-apple
             #:flush-vertex-array-range-apple #:vertex-array-range-apple
             #:+vertex-array-binding-apple+ #:is-vertex-array-apple
             #:gen-vertex-arrays-apple #:delete-vertex-arrays-apple
             #:bind-vertex-array-apple #:+draw-pixels-apple+ #:+fence-apple+
             #:finish-object-apple #:test-object-apple #:finish-fence-apple
             #:test-fence-apple #:is-fence-apple #:set-fence-apple
             #:delete-fences-apple #:gen-fences-apple #:+element-array-apple+
             #:+element-array-type-apple+ #:+element-array-pointer-apple+
             #:multi-draw-range-element-array-apple
             #:multi-draw-element-array-apple #:draw-range-element-array-apple
             #:draw-element-array-apple #:element-pointer-apple
             #:+stencil-test-two-side-ext+ #:+active-stencil-face-ext+
             #:active-stencil-face-ext #:+point-sprite-nv+ #:+coord-replace-nv+
             #:+point-sprite-r-mode-nv+ #:point-parameter-iv-nv
             #:point-parameter-i-nv #:+pixel-counter-bits-nv+
             #:+current-occlusion-query-id-nv+ #:+pixel-count-nv+
             #:+pixel-count-available-nv+ #:get-occlusion-query-uiv-nv
             #:get-occlusion-query-iv-nv #:end-occlusion-query-nv
             #:begin-occlusion-query-nv #:is-occlusion-query-nv
             #:delete-occlusion-queries-nv #:gen-occlusion-queries-nv
             #:+quad-mesh-sun+ #:+triangle-mesh-sun+ #:draw-mesh-arrays-sun
             #:+element-array-ati+ #:+element-array-type-ati+
             #:+element-array-pointer-ati+ #:draw-range-element-array-ati
             #:draw-element-array-ati #:element-pointer-ati
             #:+max-vertex-streams-ati+ #:+vertex-stream0-ati+
             #:+vertex-stream1-ati+ #:+vertex-stream2-ati+
             #:+vertex-stream3-ati+ #:+vertex-stream4-ati+
             #:+vertex-stream5-ati+ #:+vertex-stream6-ati+
             #:+vertex-stream7-ati+ #:+vertex-source-ati+
             #:vertex-blend-env-f-ati #:vertex-blend-env-i-ati
             #:client-active-vertex-stream-ati #:normal-stream-3dv-ati
             #:normal-stream-3d-ati #:normal-stream-3fv-ati
             #:normal-stream-3f-ati #:normal-stream-3iv-ati
             #:normal-stream-3i-ati #:normal-stream-3sv-ati
             #:normal-stream-3s-ati #:normal-stream-3bv-ati
             #:normal-stream-3b-ati #:vertex-stream-4dv-ati
             #:vertex-stream-4d-ati #:vertex-stream-4fv-ati
             #:vertex-stream-4f-ati #:vertex-stream-4iv-ati
             #:vertex-stream-4i-ati #:vertex-stream-4sv-ati
             #:vertex-stream-4s-ati #:vertex-stream-3dv-ati
             #:vertex-stream-3d-ati #:vertex-stream-3fv-ati
             #:vertex-stream-3f-ati #:vertex-stream-3iv-ati
             #:vertex-stream-3i-ati #:vertex-stream-3sv-ati
             #:vertex-stream-3s-ati #:vertex-stream-2dv-ati
             #:vertex-stream-2d-ati #:vertex-stream-2fv-ati
             #:vertex-stream-2f-ati #:vertex-stream-2iv-ati
             #:vertex-stream-2i-ati #:vertex-stream-2sv-ati
             #:vertex-stream-2s-ati #:vertex-stream-1dv-ati
             #:vertex-stream-1d-ati #:vertex-stream-1fv-ati
             #:vertex-stream-1f-ati #:vertex-stream-1iv-ati
             #:vertex-stream-1i-ati #:vertex-stream-1sv-ati
             #:vertex-stream-1s-ati #:+vertex-shader-ext+
             #:+vertex-shader-binding-ext+ #:+op-index-ext+ #:+op-negate-ext+
             #:+op-dot3-ext+ #:+op-dot4-ext+ #:+op-mul-ext+ #:+op-add-ext+
             #:+op-madd-ext+ #:+op-frac-ext+ #:+op-max-ext+ #:+op-min-ext+
             #:+op-set-ge-ext+ #:+op-set-lt-ext+ #:+op-clamp-ext+
             #:+op-floor-ext+ #:+op-round-ext+ #:+op-exp-base-2-ext+
             #:+op-log-base-2-ext+ #:+op-power-ext+ #:+op-recip-ext+
             #:+op-recip-sqrt-ext+ #:+op-sub-ext+ #:+op-cross-product-ext+
             #:+op-multiply-matrix-ext+ #:+op-mov-ext+ #:+output-vertex-ext+
             #:+output-color0-ext+ #:+output-color1-ext+
             #:+output-texture-coord0-ext+ #:+output-texture-coord1-ext+
             #:+output-texture-coord2-ext+ #:+output-texture-coord3-ext+
             #:+output-texture-coord4-ext+ #:+output-texture-coord5-ext+
             #:+output-texture-coord6-ext+ #:+output-texture-coord7-ext+
             #:+output-texture-coord8-ext+ #:+output-texture-coord9-ext+
             #:+output-texture-coord10-ext+ #:+output-texture-coord11-ext+
             #:+output-texture-coord12-ext+ #:+output-texture-coord13-ext+
             #:+output-texture-coord14-ext+ #:+output-texture-coord15-ext+
             #:+output-texture-coord16-ext+ #:+output-texture-coord17-ext+
             #:+output-texture-coord18-ext+ #:+output-texture-coord19-ext+
             #:+output-texture-coord20-ext+ #:+output-texture-coord21-ext+
             #:+output-texture-coord22-ext+ #:+output-texture-coord23-ext+
             #:+output-texture-coord24-ext+ #:+output-texture-coord25-ext+
             #:+output-texture-coord26-ext+ #:+output-texture-coord27-ext+
             #:+output-texture-coord28-ext+ #:+output-texture-coord29-ext+
             #:+output-texture-coord30-ext+ #:+output-texture-coord31-ext+
             #:+output-fog-ext+ #:+scalar-ext+ #:+vector-ext+ #:+matrix-ext+
             #:+variant-ext+ #:+invariant-ext+ #:+local-constant-ext+
             #:+local-ext+ #:+max-vertex-shader-instructions-ext+
             #:+max-vertex-shader-variants-ext+
             #:+max-vertex-shader-invariants-ext+
             #:+max-vertex-shader-local-constants-ext+
             #:+max-vertex-shader-locals-ext+
             #:+max-optimized-vertex-shader-instructions-ext+
             #:+max-optimized-vertex-shader-variants-ext+
             #:+max-optimized-vertex-shader-local-constants-ext+
             #:+max-optimized-vertex-shader-invariants-ext+
             #:+max-optimized-vertex-shader-locals-ext+
             #:+vertex-shader-instructions-ext+ #:+vertex-shader-variants-ext+
             #:+vertex-shader-invariants-ext+
             #:+vertex-shader-local-constants-ext+ #:+vertex-shader-locals-ext+
             #:+vertex-shader-optimized-ext+ #:+x-ext+ #:+y-ext+ #:+z-ext+
             #:+w-ext+ #:+negative-x-ext+ #:+negative-y-ext+ #:+negative-z-ext+
             #:+negative-w-ext+ #:+zero-ext+ #:+one-ext+ #:+negative-one-ext+
             #:+normalized-range-ext+ #:+full-range-ext+ #:+current-vertex-ext+
             #:+mvp-matrix-ext+ #:+variant-value-ext+ #:+variant-datatype-ext+
             #:+variant-array-stride-ext+ #:+variant-array-type-ext+
             #:+variant-array-ext+ #:+variant-array-pointer-ext+
             #:+invariant-value-ext+ #:+invariant-datatype-ext+
             #:+local-constant-value-ext+ #:+local-constant-datatype-ext+
             #:get-local-constant-floatv-ext #:get-local-constant-integerv-ext
             #:get-local-constant-booleanv-ext #:get-invariant-floatv-ext
             #:get-invariant-integerv-ext #:get-invariant-booleanv-ext
             #:get-variant-pointerv-ext #:get-variant-floatv-ext
             #:get-variant-integerv-ext #:get-variant-booleanv-ext
             #:is-variant-enabled-ext #:bind-parameter-ext
             #:bind-texture-unit-parameter-ext #:bind-tex-gen-parameter-ext
             #:bind-material-parameter-ext #:bind-light-parameter-ext
             #:disable-variant-client-state-ext
             #:enable-variant-client-state-ext #:variant-pointer-ext
             #:variant-uiv-ext #:variant-usv-ext #:variant-ubv-ext
             #:variant-dv-ext #:variant-fv-ext #:variant-iv-ext
             #:variant-sv-ext #:variant-bv-ext #:set-local-constant-ext
             #:set-invariant-ext #:gen-symbols-ext #:extract-component-ext
             #:insert-component-ext #:write-mask-ext #:swizzle-ext
             #:shader-op-3-ext #:shader-op-2-ext #:shader-op-1-ext
             #:delete-vertex-shader-ext #:gen-vertex-shaders-ext
             #:bind-vertex-shader-ext #:end-vertex-shader-ext
             #:begin-vertex-shader-ext #:+static-ati+ #:+dynamic-ati+
             #:+preserve-ati+ #:+discard-ati+ #:+object-buffer-size-ati+
             #:+object-buffer-usage-ati+ #:+array-object-buffer-ati+
             #:+array-object-offset-ati+ #:get-variant-array-object-iv-ati
             #:get-variant-array-object-fv-ati #:variant-array-object-ati
             #:get-array-object-iv-ati #:get-array-object-fv-ati
             #:array-object-ati #:free-object-buffer-ati
             #:get-object-buffer-iv-ati #:get-object-buffer-fv-ati
             #:update-object-buffer-ati #:is-object-buffer-ati
             #:new-object-buffer-ati #:+pn-triangles-ati+
             #:+max-pn-triangles-tesselation-level-ati+
             #:+pn-triangles-point-mode-ati+ #:+pn-triangles-normal-mode-ati+
             #:+pn-triangles-tesselation-level-ati+
             #:+pn-triangles-point-mode-linear-ati+
             #:+pn-triangles-point-mode-cubic-ati+
             #:+pn-triangles-normal-mode-linear-ati+
             #:+pn-triangles-normal-mode-quadratic-ati+ #:pntriangles-f-ati
             #:pntriangles-i-ati #:+fragment-shader-ati+ #:+reg-0-ati+
             #:+reg-1-ati+ #:+reg-2-ati+ #:+reg-3-ati+ #:+reg-4-ati+
             #:+reg-5-ati+ #:+reg-6-ati+ #:+reg-7-ati+ #:+reg-8-ati+
             #:+reg-9-ati+ #:+reg-10-ati+ #:+reg-11-ati+ #:+reg-12-ati+
             #:+reg-13-ati+ #:+reg-14-ati+ #:+reg-15-ati+ #:+reg-16-ati+
             #:+reg-17-ati+ #:+reg-18-ati+ #:+reg-19-ati+ #:+reg-20-ati+
             #:+reg-21-ati+ #:+reg-22-ati+ #:+reg-23-ati+ #:+reg-24-ati+
             #:+reg-25-ati+ #:+reg-26-ati+ #:+reg-27-ati+ #:+reg-28-ati+
             #:+reg-29-ati+ #:+reg-30-ati+ #:+reg-31-ati+ #:+con-0-ati+
             #:+con-1-ati+ #:+con-2-ati+ #:+con-3-ati+ #:+con-4-ati+
             #:+con-5-ati+ #:+con-6-ati+ #:+con-7-ati+ #:+con-8-ati+
             #:+con-9-ati+ #:+con-10-ati+ #:+con-11-ati+ #:+con-12-ati+
             #:+con-13-ati+ #:+con-14-ati+ #:+con-15-ati+ #:+con-16-ati+
             #:+con-17-ati+ #:+con-18-ati+ #:+con-19-ati+ #:+con-20-ati+
             #:+con-21-ati+ #:+con-22-ati+ #:+con-23-ati+ #:+con-24-ati+
             #:+con-25-ati+ #:+con-26-ati+ #:+con-27-ati+ #:+con-28-ati+
             #:+con-29-ati+ #:+con-30-ati+ #:+con-31-ati+ #:+mov-ati+
             #:+add-ati+ #:+mul-ati+ #:+sub-ati+ #:+dot3-ati+ #:+dot4-ati+
             #:+mad-ati+ #:+lerp-ati+ #:+cnd-ati+ #:+cnd0-ati+ #:+dot2-add-ati+
             #:+secondary-interpolator-ati+ #:+num-fragment-registers-ati+
             #:+num-fragment-constants-ati+ #:+num-passes-ati+
             #:+num-instructions-per-pass-ati+ #:+num-instructions-total-ati+
             #:+num-input-interpolator-components-ati+
             #:+num-loopback-components-ati+ #:+color-alpha-pairing-ati+
             #:+swizzle-str-ati+ #:+swizzle-stq-ati+ #:+swizzle-str-dr-ati+
             #:+swizzle-stq-dq-ati+ #:+swizzle-strq-ati+
             #:+swizzle-strq-dq-ati+ #:+red-bit-ati+ #:+green-bit-ati+
             #:+blue-bit-ati+ #:+4x-bit-ati+ #:+8x-bit-ati+ #:+half-bit-ati+
             #:+quarter-bit-ati+ #:+eighth-bit-ati+ #:+saturate-bit-ati+
             #:+2x-bit-ati+ #:+comp-bit-ati+ #:+negate-bit-ati+
             #:+bias-bit-ati+ #:set-fragment-shader-constant-ati
             #:alpha-fragment-op-3-ati #:alpha-fragment-op-2-ati
             #:alpha-fragment-op-1-ati #:color-fragment-op-3-ati
             #:color-fragment-op-2-ati #:color-fragment-op-1-ati
             #:sample-map-ati #:pass-tex-coord-ati #:end-fragment-shader-ati
             #:begin-fragment-shader-ati #:delete-fragment-shader-ati
             #:bind-fragment-shader-ati #:gen-fragment-shaders-ati
             #:+bump-rot-matrix-ati+ #:+bump-rot-matrix-size-ati+
             #:+bump-num-tex-units-ati+ #:+bump-tex-units-ati+ #:+dudv-ati+
             #:+du8dv8-ati+ #:+bump-envmap-ati+ #:+bump-target-ati+
             #:get-tex-bump-parameter-fv-ati #:get-tex-bump-parameter-iv-ati
             #:tex-bump-parameter-fv-ati #:tex-bump-parameter-iv-ati
             #:+vertex-program-nv+ #:+vertex-state-program-nv+
             #:+attrib-array-size-nv+ #:+attrib-array-stride-nv+
             #:+attrib-array-type-nv+ #:+current-attrib-nv+
             #:+program-length-nv+ #:+program-string-nv+
             #:+modelview-projection-nv+ #:+identity-nv+ #:+inverse-nv+
             #:+transpose-nv+ #:+inverse-transpose-nv+
             #:+max-track-matrix-stack-depth-nv+ #:+max-track-matrices-nv+
             #:+matrix0-nv+ #:+matrix1-nv+ #:+matrix2-nv+ #:+matrix3-nv+
             #:+matrix4-nv+ #:+matrix5-nv+ #:+matrix6-nv+ #:+matrix7-nv+
             #:+current-matrix-stack-depth-nv+ #:+current-matrix-nv+
             #:+vertex-program-point-size-nv+ #:+vertex-program-two-side-nv+
             #:+program-parameter-nv+ #:+attrib-array-pointer-nv+
             #:+program-target-nv+ #:+program-resident-nv+ #:+track-matrix-nv+
             #:+track-matrix-transform-nv+ #:+vertex-program-binding-nv+
             #:+program-error-position-nv+ #:+vertex-attrib-array0-nv+
             #:+vertex-attrib-array1-nv+ #:+vertex-attrib-array2-nv+
             #:+vertex-attrib-array3-nv+ #:+vertex-attrib-array4-nv+
             #:+vertex-attrib-array5-nv+ #:+vertex-attrib-array6-nv+
             #:+vertex-attrib-array7-nv+ #:+vertex-attrib-array8-nv+
             #:+vertex-attrib-array9-nv+ #:+vertex-attrib-array10-nv+
             #:+vertex-attrib-array11-nv+ #:+vertex-attrib-array12-nv+
             #:+vertex-attrib-array13-nv+ #:+vertex-attrib-array14-nv+
             #:+vertex-attrib-array15-nv+ #:+map1-vertex-attrib0-4-nv+
             #:+map1-vertex-attrib1-4-nv+ #:+map1-vertex-attrib2-4-nv+
             #:+map1-vertex-attrib3-4-nv+ #:+map1-vertex-attrib4-4-nv+
             #:+map1-vertex-attrib5-4-nv+ #:+map1-vertex-attrib6-4-nv+
             #:+map1-vertex-attrib7-4-nv+ #:+map1-vertex-attrib8-4-nv+
             #:+map1-vertex-attrib9-4-nv+ #:+map1-vertex-attrib10-4-nv+
             #:+map1-vertex-attrib11-4-nv+ #:+map1-vertex-attrib12-4-nv+
             #:+map1-vertex-attrib13-4-nv+ #:+map1-vertex-attrib14-4-nv+
             #:+map1-vertex-attrib15-4-nv+ #:+map2-vertex-attrib0-4-nv+
             #:+map2-vertex-attrib1-4-nv+ #:+map2-vertex-attrib2-4-nv+
             #:+map2-vertex-attrib3-4-nv+ #:+map2-vertex-attrib4-4-nv+
             #:+map2-vertex-attrib5-4-nv+ #:+map2-vertex-attrib6-4-nv+
             #:+map2-vertex-attrib7-4-nv+ #:+map2-vertex-attrib8-4-nv+
             #:+map2-vertex-attrib9-4-nv+ #:+map2-vertex-attrib10-4-nv+
             #:+map2-vertex-attrib11-4-nv+ #:+map2-vertex-attrib12-4-nv+
             #:+map2-vertex-attrib13-4-nv+ #:+map2-vertex-attrib14-4-nv+
             #:+map2-vertex-attrib15-4-nv+ #:vertex-attribs-4ubv-nv
             #:vertex-attribs-4sv-nv #:vertex-attribs-4fv-nv
             #:vertex-attribs-4dv-nv #:vertex-attribs-3sv-nv
             #:vertex-attribs-3fv-nv #:vertex-attribs-3dv-nv
             #:vertex-attribs-2sv-nv #:vertex-attribs-2fv-nv
             #:vertex-attribs-2dv-nv #:vertex-attribs-1sv-nv
             #:vertex-attribs-1fv-nv #:vertex-attribs-1dv-nv
             #:vertex-attrib-4ubv-nv #:vertex-attrib-4ub-nv
             #:vertex-attrib-4sv-nv #:vertex-attrib-4s-nv
             #:vertex-attrib-4fv-nv #:vertex-attrib-4f-nv
             #:vertex-attrib-4dv-nv #:vertex-attrib-4d-nv
             #:vertex-attrib-3sv-nv #:vertex-attrib-3s-nv
             #:vertex-attrib-3fv-nv #:vertex-attrib-3f-nv
             #:vertex-attrib-3dv-nv #:vertex-attrib-3d-nv
             #:vertex-attrib-2sv-nv #:vertex-attrib-2s-nv
             #:vertex-attrib-2fv-nv #:vertex-attrib-2f-nv
             #:vertex-attrib-2dv-nv #:vertex-attrib-2d-nv
             #:vertex-attrib-1sv-nv #:vertex-attrib-1s-nv
             #:vertex-attrib-1fv-nv #:vertex-attrib-1f-nv
             #:vertex-attrib-1dv-nv #:vertex-attrib-1d-nv
             #:vertex-attrib-pointer-nv #:track-matrix-nv
             #:request-resident-programs-nv #:program-parameters-4fv-nv
             #:program-parameters-4dv-nv #:program-parameter-4fv-nv
             #:program-parameter-4f-nv #:program-parameter-4dv-nv
             #:program-parameter-4d-nv #:load-program-nv #:is-program-nv
             #:get-vertex-attrib-pointerv-nv #:get-vertex-attrib-iv-nv
             #:get-vertex-attrib-fv-nv #:get-vertex-attrib-dv-nv
             #:get-track-matrix-iv-nv #:get-program-string-nv
             #:get-program-iv-nv #:get-program-parameter-fv-nv
             #:get-program-parameter-dv-nv #:gen-programs-nv
             #:execute-program-nv #:delete-programs-nv #:bind-program-nv
             #:are-programs-resident-nv #:+per-stage-constants-nv+
             #:get-combiner-stage-parameter-fv-nv
             #:combiner-stage-parameter-fv-nv #:+eval-2d-nv+
             #:+eval-triangular-2d-nv+ #:+map-tessellation-nv+
             #:+map-attrib-u-order-nv+ #:+map-attrib-v-order-nv+
             #:+eval-fractional-tessellation-nv+ #:+eval-vertex-attrib0-nv+
             #:+eval-vertex-attrib1-nv+ #:+eval-vertex-attrib2-nv+
             #:+eval-vertex-attrib3-nv+ #:+eval-vertex-attrib4-nv+
             #:+eval-vertex-attrib5-nv+ #:+eval-vertex-attrib6-nv+
             #:+eval-vertex-attrib7-nv+ #:+eval-vertex-attrib8-nv+
             #:+eval-vertex-attrib9-nv+ #:+eval-vertex-attrib10-nv+
             #:+eval-vertex-attrib11-nv+ #:+eval-vertex-attrib12-nv+
             #:+eval-vertex-attrib13-nv+ #:+eval-vertex-attrib14-nv+
             #:+eval-vertex-attrib15-nv+ #:+max-map-tessellation-nv+
             #:+max-rational-eval-order-nv+ #:eval-maps-nv
             #:get-map-attrib-parameter-fv-nv #:get-map-attrib-parameter-iv-nv
             #:get-map-parameter-fv-nv #:get-map-parameter-iv-nv
             #:get-map-control-points-nv #:map-parameter-fv-nv
             #:map-parameter-iv-nv #:map-control-points-nv #:+all-completed-nv+
             #:+fence-status-nv+ #:+fence-condition-nv+ #:set-fence-nv
             #:finish-fence-nv #:get-fence-iv-nv #:test-fence-nv #:is-fence-nv
             #:gen-fences-nv #:delete-fences-nv #:+multisample-ext+
             #:+sample-alpha-to-mask-ext+ #:+sample-alpha-to-one-ext+
             #:+sample-mask-ext+ #:+1pass-ext+ #:+2pass-0-ext+ #:+2pass-1-ext+
             #:+4pass-0-ext+ #:+4pass-1-ext+ #:+4pass-2-ext+ #:+4pass-3-ext+
             #:+sample-buffers-ext+ #:+samples-ext+ #:+sample-mask-value-ext+
             #:+sample-mask-invert-ext+ #:+sample-pattern-ext+
             #:+multisample-bit-ext+ #:sample-pattern-ext #:sample-mask-ext
             #:tbuffer-mask-3dfx #:+vertex-array-list-ibm+
             #:+normal-array-list-ibm+ #:+color-array-list-ibm+
             #:+index-array-list-ibm+ #:+texture-coord-array-list-ibm+
             #:+edge-flag-array-list-ibm+ #:+fog-coordinate-array-list-ibm+
             #:+secondary-color-array-list-ibm+
             #:+vertex-array-list-stride-ibm+ #:+normal-array-list-stride-ibm+
             #:+color-array-list-stride-ibm+ #:+index-array-list-stride-ibm+
             #:+texture-coord-array-list-stride-ibm+
             #:+edge-flag-array-list-stride-ibm+
             #:+fog-coordinate-array-list-stride-ibm+
             #:+secondary-color-array-list-stride-ibm+
             #:vertex-pointer-list-ibm #:tex-coord-pointer-list-ibm
             #:normal-pointer-list-ibm #:index-pointer-list-ibm
             #:fog-coord-pointer-list-ibm #:edge-flag-pointer-list-ibm
             #:secondary-color-pointer-list-ibm #:color-pointer-list-ibm
             #:multi-mode-draw-elements-ibm #:multi-mode-draw-arrays-ibm
             #:window-pos-4sv-mesa #:window-pos-4s-mesa #:window-pos-4iv-mesa
             #:window-pos-4i-mesa #:window-pos-4fv-mesa #:window-pos-4f-mesa
             #:window-pos-4dv-mesa #:window-pos-4d-mesa #:window-pos-3sv-mesa
             #:window-pos-3s-mesa #:window-pos-3iv-mesa #:window-pos-3i-mesa
             #:window-pos-3fv-mesa #:window-pos-3f-mesa #:window-pos-3dv-mesa
             #:window-pos-3d-mesa #:window-pos-2sv-mesa #:window-pos-2s-mesa
             #:window-pos-2iv-mesa #:window-pos-2i-mesa #:window-pos-2fv-mesa
             #:window-pos-2f-mesa #:window-pos-2dv-mesa #:window-pos-2d-mesa
             #:resize-buffers-mesa #:+register-combiners-nv+ #:+variable-a-nv+
             #:+variable-b-nv+ #:+variable-c-nv+ #:+variable-d-nv+
             #:+variable-e-nv+ #:+variable-f-nv+ #:+variable-g-nv+
             #:+constant-color0-nv+ #:+constant-color1-nv+ #:+primary-color-nv+
             #:+secondary-color-nv+ #:+spare0-nv+ #:+spare1-nv+ #:+discard-nv+
             #:+e-times-f-nv+ #:+spare0-plus-secondary-color-nv+
             #:+unsigned-identity-nv+ #:+unsigned-invert-nv+
             #:+expand-normal-nv+ #:+expand-negate-nv+ #:+half-bias-normal-nv+
             #:+half-bias-negate-nv+ #:+signed-identity-nv+
             #:+signed-negate-nv+ #:+scale-by-two-nv+ #:+scale-by-four-nv+
             #:+scale-by-one-half-nv+ #:+bias-by-negative-one-half-nv+
             #:+combiner-input-nv+ #:+combiner-mapping-nv+
             #:+combiner-component-usage-nv+ #:+combiner-ab-dot-product-nv+
             #:+combiner-cd-dot-product-nv+ #:+combiner-mux-sum-nv+
             #:+combiner-scale-nv+ #:+combiner-bias-nv+
             #:+combiner-ab-output-nv+ #:+combiner-cd-output-nv+
             #:+combiner-sum-output-nv+ #:+max-general-combiners-nv+
             #:+num-general-combiners-nv+ #:+color-sum-clamp-nv+
             #:+combiner0-nv+ #:+combiner1-nv+ #:+combiner2-nv+
             #:+combiner3-nv+ #:+combiner4-nv+ #:+combiner5-nv+
             #:+combiner6-nv+ #:+combiner7-nv+
             #:get-final-combiner-input-parameter-iv-nv
             #:get-final-combiner-input-parameter-fv-nv
             #:get-combiner-output-parameter-iv-nv
             #:get-combiner-output-parameter-fv-nv
             #:get-combiner-input-parameter-iv-nv
             #:get-combiner-input-parameter-fv-nv #:final-combiner-input-nv
             #:combiner-output-nv #:combiner-input-nv #:combiner-parameter-i-nv
             #:combiner-parameter-iv-nv #:combiner-parameter-f-nv
             #:combiner-parameter-fv-nv #:+vertex-array-range-nv+
             #:+vertex-array-range-length-nv+ #:+vertex-array-range-valid-nv+
             #:+max-vertex-array-range-element-nv+
             #:+vertex-array-range-pointer-nv+ #:vertex-array-range-nv
             #:flush-vertex-array-range-nv #:+modelview0-stack-depth-ext+
             #:+modelview1-stack-depth-ext+ #:+modelview0-matrix-ext+
             #:+modelview1-matrix-ext+ #:+vertex-weighting-ext+
             #:+modelview0-ext+ #:+modelview1-ext+
             #:+current-vertex-weight-ext+ #:+vertex-weight-array-ext+
             #:+vertex-weight-array-size-ext+ #:+vertex-weight-array-type-ext+
             #:+vertex-weight-array-stride-ext+
             #:+vertex-weight-array-pointer-ext+ #:vertex-weight-pointer-ext
             #:vertex-weight-fv-ext #:vertex-weight-f-ext #:+blend-dst-rgb-ext+
             #:+blend-src-rgb-ext+ #:+blend-dst-alpha-ext+
             #:+blend-src-alpha-ext+ #:blend-func-separate-ext
             #:replacement-codeui-tex-coord-2f-color-4f-normal-3f-vertex-3fv-sun
             #:replacement-codeui-tex-coord-2f-color-4f-normal-3f-vertex-3f-sun
             #:replacement-codeui-tex-coord-2f-normal-3f-vertex-3fv-sun
             #:replacement-codeui-tex-coord-2f-normal-3f-vertex-3f-sun
             #:replacement-codeui-tex-coord-2f-vertex-3fv-sun
             #:replacement-codeui-tex-coord-2f-vertex-3f-sun
             #:replacement-codeui-color-4f-normal-3f-vertex-3fv-sun
             #:replacement-codeui-color-4f-normal-3f-vertex-3f-sun
             #:replacement-codeui-normal-3f-vertex-3fv-sun
             #:replacement-codeui-normal-3f-vertex-3f-sun
             #:replacement-codeui-color-3f-vertex-3fv-sun
             #:replacement-codeui-color-3f-vertex-3f-sun
             #:replacement-codeui-color-4ub-vertex-3fv-sun
             #:replacement-codeui-color-4ub-vertex-3f-sun
             #:replacement-codeui-vertex-3fv-sun
             #:replacement-codeui-vertex-3f-sun
             #:tex-coord-4f-color-4f-normal-3f-vertex-4fv-sun
             #:tex-coord-4f-color-4f-normal-3f-vertex-4f-sun
             #:tex-coord-2f-color-4f-normal-3f-vertex-3fv-sun
             #:tex-coord-2f-color-4f-normal-3f-vertex-3f-sun
             #:tex-coord-2f-normal-3f-vertex-3fv-sun
             #:tex-coord-2f-normal-3f-vertex-3f-sun
             #:tex-coord-2f-color-3f-vertex-3fv-sun
             #:tex-coord-2f-color-3f-vertex-3f-sun
             #:tex-coord-2f-color-4ub-vertex-3fv-sun
             #:tex-coord-2f-color-4ub-vertex-3f-sun
             #:tex-coord-4f-vertex-4fv-sun #:tex-coord-4f-vertex-4f-sun
             #:tex-coord-2f-vertex-3fv-sun #:tex-coord-2f-vertex-3f-sun
             #:color-4f-normal-3f-vertex-3fv-sun
             #:color-4f-normal-3f-vertex-3f-sun #:normal-3f-vertex-3fv-sun
             #:normal-3f-vertex-3f-sun #:color-3f-vertex-3fv-sun
             #:color-3f-vertex-3f-sun #:color-4ub-vertex-3fv-sun
             #:color-4ub-vertex-3f-sun #:color-4ub-vertex-2fv-sun
             #:color-4ub-vertex-2f-sun #:+restart-sun+ #:+replace-middle-sun+
             #:+replace-oldest-sun+ #:+triangle-list-sun+
             #:+replacement-code-sun+ #:+replacement-code-array-sun+
             #:+replacement-code-array-type-sun+
             #:+replacement-code-array-stride-sun+
             #:+replacement-code-array-pointer-sun+ #:+r1ui-v3f-sun+
             #:+r1ui-c4ub-v3f-sun+ #:+r1ui-c3f-v3f-sun+ #:+r1ui-n3f-v3f-sun+
             #:+r1ui-c4f-n3f-v3f-sun+ #:+r1ui-t2f-v3f-sun+
             #:+r1ui-t2f-n3f-v3f-sun+ #:+r1ui-t2f-c4f-n3f-v3f-sun+
             #:replacement-code-pointer-sun #:replacement-code-ubv-sun
             #:replacement-code-usv-sun #:replacement-code-uiv-sun
             #:replacement-code-ub-sun #:replacement-code-us-sun
             #:replacement-code-ui-sun #:+global-alpha-sun+
             #:+global-alpha-factor-sun+ #:global-alpha-factor-ui-sun
             #:global-alpha-factor-us-sun #:global-alpha-factor-ub-sun
             #:global-alpha-factor-d-sun #:global-alpha-factor-f-sun
             #:global-alpha-factor-i-sun #:global-alpha-factor-s-sun
             #:global-alpha-factor-b-sun #:+unpack-constant-data-sunx+
             #:+texture-constant-data-sunx+ #:finish-texture-sunx
             #:+tangent-array-ext+ #:+binormal-array-ext+
             #:+current-tangent-ext+ #:+current-binormal-ext+
             #:+tangent-array-type-ext+ #:+tangent-array-stride-ext+
             #:+binormal-array-type-ext+ #:+binormal-array-stride-ext+
             #:+tangent-array-pointer-ext+ #:+binormal-array-pointer-ext+
             #:+map1-tangent-ext+ #:+map2-tangent-ext+ #:+map1-binormal-ext+
             #:+map2-binormal-ext+ #:binormal-pointer-ext #:tangent-pointer-ext
             #:binormal-3sv-ext #:binormal-3s-ext #:binormal-3iv-ext
             #:binormal-3i-ext #:binormal-3fv-ext #:binormal-3f-ext
             #:binormal-3dv-ext #:binormal-3d-ext #:binormal-3bv-ext
             #:binormal-3b-ext #:tangent-3sv-ext #:tangent-3s-ext
             #:tangent-3iv-ext #:tangent-3i-ext #:tangent-3fv-ext
             #:tangent-3f-ext #:tangent-3dv-ext #:tangent-3d-ext
             #:tangent-3bv-ext #:tangent-3b-ext #:+fog-coordinate-source-ext+
             #:+fog-coordinate-ext+ #:+current-fog-coordinate-ext+
             #:+fog-coordinate-array-type-ext+
             #:+fog-coordinate-array-stride-ext+
             #:+fog-coordinate-array-pointer-ext+ #:+fog-coordinate-array-ext+
             #:fog-coord-pointer-ext #:fog-coord-dv-ext #:fog-coord-d-ext
             #:fog-coord-fv-ext #:fog-coord-f-ext #:multi-draw-elements-ext
             #:multi-draw-arrays-ext #:+perturb-ext+ #:+texture-normal-ext+
             #:texture-normal-ext #:+color-sum-ext+
             #:+current-secondary-color-ext+ #:+secondary-color-array-size-ext+
             #:+secondary-color-array-type-ext+
             #:+secondary-color-array-stride-ext+
             #:+secondary-color-array-pointer-ext+
             #:+secondary-color-array-ext+ #:secondary-color-pointer-ext
             #:secondary-color-3usv-ext #:secondary-color-3us-ext
             #:secondary-color-3uiv-ext #:secondary-color-3ui-ext
             #:secondary-color-3ubv-ext #:secondary-color-3ub-ext
             #:secondary-color-3sv-ext #:secondary-color-3s-ext
             #:secondary-color-3iv-ext #:secondary-color-3i-ext
             #:secondary-color-3fv-ext #:secondary-color-3f-ext
             #:secondary-color-3dv-ext #:secondary-color-3d-ext
             #:secondary-color-3bv-ext #:secondary-color-3b-ext
             #:is-async-marker-sgix #:delete-async-markers-sgix
             #:gen-async-markers-sgix #:poll-async-sgix #:finish-async-sgix
             #:async-marker-sgix #:+fragment-material-ext+
             #:+fragment-normal-ext+ #:+fragment-color-ext+ #:+attenuation-ext+
             #:+shadow-attenuation-ext+ #:+texture-application-mode-ext+
             #:+texture-light-ext+ #:+texture-material-face-ext+
             #:+texture-material-parameter-ext+ #:+fragment-depth-ext+
             #:texture-material-ext #:texture-light-ext #:apply-texture-ext
             #:+max-elements-vertices-ext+ #:+max-elements-indices-ext+
             #:draw-range-elements-ext #:+cull-vertex-ext+
             #:+cull-vertex-eye-position-ext+
             #:+cull-vertex-object-position-ext+ #:cull-parameter-fv-ext
             #:cull-parameter-dv-ext #:+array-element-lock-first-ext+
             #:+array-element-lock-count-ext+ #:unlock-arrays-ext
             #:lock-arrays-ext #:+index-test-ext+ #:+index-test-func-ext+
             #:+index-test-ref-ext+ #:index-func-ext #:+index-material-ext+
             #:+index-material-parameter-ext+ #:+index-material-face-ext+
             #:index-material-ext #:+color-index1-ext+ #:+color-index2-ext+
             #:+color-index4-ext+ #:+color-index8-ext+ #:+color-index12-ext+
             #:+color-index16-ext+ #:+texture-index-size-ext+
             #:get-color-table-parameter-fv-ext
             #:get-color-table-parameter-iv-ext #:get-color-table-ext
             #:color-table-ext #:+prefer-doublebuffer-hint-pgi+
             #:+conserve-memory-hint-pgi+ #:+reclaim-memory-hint-pgi+
             #:+native-graphics-handle-pgi+ #:+native-graphics-begin-hint-pgi+
             #:+native-graphics-end-hint-pgi+ #:+always-fast-hint-pgi+
             #:+always-soft-hint-pgi+ #:+allow-draw-obj-hint-pgi+
             #:+allow-draw-win-hint-pgi+ #:+allow-draw-frg-hint-pgi+
             #:+allow-draw-mem-hint-pgi+ #:+strict-depthfunc-hint-pgi+
             #:+strict-lighting-hint-pgi+ #:+strict-scissor-hint-pgi+
             #:+full-stipple-hint-pgi+ #:+clip-near-hint-pgi+
             #:+clip-far-hint-pgi+ #:+wide-line-hint-pgi+
             #:+back-normals-hint-pgi+ #:hint-pgi #:copy-color-sub-table-ext
             #:color-sub-table-ext #:+image-scale-x-hp+ #:+image-scale-y-hp+
             #:+image-translate-x-hp+ #:+image-translate-y-hp+
             #:+image-rotate-angle-hp+ #:+image-rotate-origin-x-hp+
             #:+image-rotate-origin-y-hp+ #:+image-mag-filter-hp+
             #:+image-min-filter-hp+ #:+image-cubic-weight-hp+ #:+cubic-hp+
             #:+average-hp+ #:+image-transform-2d-hp+
             #:+post-image-transform-color-table-hp+
             #:+proxy-post-image-transform-color-table-hp+
             #:get-image-transform-parameter-fv-hp
             #:get-image-transform-parameter-iv-hp
             #:image-transform-parameter-fv-hp
             #:image-transform-parameter-iv-hp #:image-transform-parameter-f-hp
             #:image-transform-parameter-i-hp #:flush-raster-sgix
             #:load-identity-deformation-map-sgix #:deform-sgix
             #:deformation-map-3f-sgix #:deformation-map-3d-sgix
             #:tag-sample-buffer-sgix #:point-parameter-fv-ext
             #:point-parameter-f-ext #:copy-tex-sub-image-3d-ext
             #:copy-tex-sub-image-2d-ext #:copy-tex-sub-image-1d-ext
             #:copy-tex-image-2d-ext #:copy-tex-image-1d-ext
             #:tex-sub-image-2d-ext #:tex-sub-image-1d-ext
             #:+rgba-float-mode-arb+ #:+clamp-vertex-color-arb+
             #:+clamp-fragment-color-arb+ #:+clamp-read-color-arb+
             #:+fixed-only-arb+ #:clamp-color-arb #:+max-draw-buffers-arb+
             #:+draw-buffer0-arb+ #:+draw-buffer1-arb+ #:+draw-buffer2-arb+
             #:+draw-buffer3-arb+ #:+draw-buffer4-arb+ #:+draw-buffer5-arb+
             #:+draw-buffer6-arb+ #:+draw-buffer7-arb+ #:+draw-buffer8-arb+
             #:+draw-buffer9-arb+ #:+draw-buffer10-arb+ #:+draw-buffer11-arb+
             #:+draw-buffer12-arb+ #:+draw-buffer13-arb+ #:+draw-buffer14-arb+
             #:+draw-buffer15-arb+ #:draw-buffers-arb #:+vertex-shader-arb+
             #:+max-vertex-uniform-components-arb+ #:+max-varying-floats-arb+
             #:+max-combined-texture-image-units-arb+
             #:+object-active-attributes-arb+
             #:+object-active-attribute-max-length-arb+
             #:get-attrib-location-arb #:get-active-attrib-arb
             #:bind-attrib-location-arb #:+program-object-arb+
             #:+shader-object-arb+ #:+object-type-arb+ #:+object-subtype-arb+
             #:+float-vec2-arb+ #:+float-vec3-arb+ #:+float-vec4-arb+
             #:+int-vec2-arb+ #:+int-vec3-arb+ #:+int-vec4-arb+ #:+bool-arb+
             #:+bool-vec2-arb+ #:+bool-vec3-arb+ #:+bool-vec4-arb+
             #:+float-mat2-arb+ #:+float-mat3-arb+ #:+float-mat4-arb+
             #:+sampler-1d-arb+ #:+sampler-2d-arb+ #:+sampler-3d-arb+
             #:+sampler-cube-arb+ #:+sampler-1d-shadow-arb+
             #:+sampler-2d-shadow-arb+ #:+sampler-2d-rect-arb+
             #:+sampler-2d-rect-shadow-arb+ #:+object-delete-status-arb+
             #:+object-compile-status-arb+ #:+object-link-status-arb+
             #:+object-validate-status-arb+ #:+object-info-log-length-arb+
             #:+object-attached-objects-arb+ #:+object-active-uniforms-arb+
             #:+object-active-uniform-max-length-arb+
             #:+object-shader-source-length-arb+ #:get-shader-source-arb
             #:get-uniform-iv-arb #:get-uniform-fv-arb #:get-active-uniform-arb
             #:get-uniform-location-arb #:get-attached-objects-arb
             #:get-info-log-arb #:get-object-parameter-iv-arb
             #:get-object-parameter-fv-arb #:uniform-matrix-4fv-arb
             #:uniform-matrix-3fv-arb #:uniform-matrix-2fv-arb
             #:uniform-4iv-arb #:uniform-3iv-arb #:uniform-2iv-arb
             #:uniform-1iv-arb #:uniform-4fv-arb #:uniform-3fv-arb
             #:uniform-2fv-arb #:uniform-1fv-arb #:uniform-4i-arb
             #:uniform-3i-arb #:uniform-2i-arb #:uniform-1i-arb
             #:uniform-4f-arb #:uniform-3f-arb #:uniform-2f-arb
             #:uniform-1f-arb #:validate-program-arb #:use-program-object-arb
             #:link-program-arb #:attach-object-arb #:create-program-object-arb
             #:compile-shader-arb #:shader-source-arb
             #:create-shader-object-arb #:detach-object-arb #:get-handle-arb
             #:delete-object-arb #:+query-counter-bits-arb+
             #:+current-query-arb+ #:+query-result-arb+
             #:+query-result-available-arb+ #:+samples-passed-arb+
             #:get-query-object-uiv-arb #:get-query-object-iv-arb
             #:get-query-iv-arb #:end-query-arb #:begin-query-arb
             #:is-query-arb #:delete-queries-arb #:gen-queries-arb
             #:+buffer-size-arb+ #:+buffer-usage-arb+ #:+array-buffer-arb+
             #:+element-array-buffer-arb+ #:+array-buffer-binding-arb+
             #:+element-array-buffer-binding-arb+
             #:+vertex-array-buffer-binding-arb+
             #:+normal-array-buffer-binding-arb+
             #:+color-array-buffer-binding-arb+
             #:+index-array-buffer-binding-arb+
             #:+texture-coord-array-buffer-binding-arb+
             #:+edge-flag-array-buffer-binding-arb+
             #:+secondary-color-array-buffer-binding-arb+
             #:+fog-coordinate-array-buffer-binding-arb+
             #:+weight-array-buffer-binding-arb+
             #:+vertex-attrib-array-buffer-binding-arb+ #:+read-only-arb+
             #:+write-only-arb+ #:+read-write-arb+ #:+buffer-access-arb+
             #:+buffer-mapped-arb+ #:+buffer-map-pointer-arb+
             #:+stream-draw-arb+ #:+stream-read-arb+ #:+stream-copy-arb+
             #:+static-draw-arb+ #:+static-read-arb+ #:+static-copy-arb+
             #:+dynamic-draw-arb+ #:+dynamic-read-arb+ #:+dynamic-copy-arb+
             #:get-buffer-pointerv-arb #:get-buffer-parameter-iv-arb
             #:unmap-buffer-arb #:map-buffer-arb #:get-buffer-sub-data-arb
             #:buffer-sub-data-arb #:buffer-data-arb #:is-buffer-arb
             #:gen-buffers-arb #:delete-buffers-arb #:bind-buffer-arb
             #:+color-sum-arb+ #:+vertex-program-arb+
             #:+vertex-attrib-array-enabled-arb+
             #:+vertex-attrib-array-size-arb+
             #:+vertex-attrib-array-stride-arb+
             #:+vertex-attrib-array-type-arb+ #:+current-vertex-attrib-arb+
             #:+program-length-arb+ #:+program-string-arb+
             #:+max-program-matrix-stack-depth-arb+
             #:+max-program-matrices-arb+ #:+current-matrix-stack-depth-arb+
             #:+current-matrix-arb+ #:+vertex-program-point-size-arb+
             #:+vertex-program-two-side-arb+
             #:+vertex-attrib-array-pointer-arb+ #:+program-error-position-arb+
             #:+program-binding-arb+ #:+max-vertex-attribs-arb+
             #:+vertex-attrib-array-normalized-arb+
             #:+program-error-string-arb+ #:+program-format-ascii-arb+
             #:+program-format-arb+ #:+program-instructions-arb+
             #:+max-program-instructions-arb+
             #:+program-native-instructions-arb+
             #:+max-program-native-instructions-arb+
             #:+program-temporaries-arb+ #:+max-program-temporaries-arb+
             #:+program-native-temporaries-arb+
             #:+max-program-native-temporaries-arb+ #:+program-parameters-arb+
             #:+max-program-parameters-arb+ #:+program-native-parameters-arb+
             #:+max-program-native-parameters-arb+ #:+program-attribs-arb+
             #:+max-program-attribs-arb+ #:+program-native-attribs-arb+
             #:+max-program-native-attribs-arb+
             #:+program-address-registers-arb+
             #:+max-program-address-registers-arb+
             #:+program-native-address-registers-arb+
             #:+max-program-native-address-registers-arb+
             #:+max-program-local-parameters-arb+
             #:+max-program-env-parameters-arb+
             #:+program-under-native-limits-arb+
             #:+transpose-current-matrix-arb+ #:+matrix0-arb+ #:+matrix1-arb+
             #:+matrix2-arb+ #:+matrix3-arb+ #:+matrix4-arb+ #:+matrix5-arb+
             #:+matrix6-arb+ #:+matrix7-arb+ #:+matrix8-arb+ #:+matrix9-arb+
             #:+matrix10-arb+ #:+matrix11-arb+ #:+matrix12-arb+
             #:+matrix13-arb+ #:+matrix14-arb+ #:+matrix15-arb+
             #:+matrix16-arb+ #:+matrix17-arb+ #:+matrix18-arb+
             #:+matrix19-arb+ #:+matrix20-arb+ #:+matrix21-arb+
             #:+matrix22-arb+ #:+matrix23-arb+ #:+matrix24-arb+
             #:+matrix25-arb+ #:+matrix26-arb+ #:+matrix27-arb+
             #:+matrix28-arb+ #:+matrix29-arb+ #:+matrix30-arb+
             #:+matrix31-arb+ #:is-program-arb #:get-vertex-attrib-pointerv-arb
             #:get-vertex-attrib-iv-arb #:get-vertex-attrib-fv-arb
             #:get-vertex-attrib-dv-arb #:get-program-string-arb
             #:get-program-iv-arb #:get-program-local-parameter-fv-arb
             #:get-program-local-parameter-dv-arb
             #:get-program-env-parameter-fv-arb
             #:get-program-env-parameter-dv-arb
             #:program-local-parameter-4fv-arb #:program-local-parameter-4f-arb
             #:program-local-parameter-4dv-arb #:program-local-parameter-4d-arb
             #:program-env-parameter-4fv-arb #:program-env-parameter-4f-arb
             #:program-env-parameter-4dv-arb #:program-env-parameter-4d-arb
             #:gen-programs-arb #:delete-programs-arb #:bind-program-arb
             #:program-string-arb #:disable-vertex-attrib-array-arb
             #:enable-vertex-attrib-array-arb #:vertex-attrib-pointer-arb
             #:vertex-attrib-4usv-arb #:vertex-attrib-4uiv-arb
             #:vertex-attrib-4ubv-arb #:vertex-attrib-4sv-arb
             #:vertex-attrib-4s-arb #:vertex-attrib-4iv-arb
             #:vertex-attrib-4fv-arb #:vertex-attrib-4f-arb
             #:vertex-attrib-4dv-arb #:vertex-attrib-4d-arb
             #:vertex-attrib-4bv-arb #:vertex-attrib-4n-usv-arb
             #:vertex-attrib-4n-uiv-arb #:vertex-attrib-4n-ubv-arb
             #:vertex-attrib-4n-ub-arb #:vertex-attrib-4n-sv-arb
             #:vertex-attrib-4n-iv-arb #:vertex-attrib-4n-bv-arb
             #:vertex-attrib-3sv-arb #:vertex-attrib-3s-arb
             #:vertex-attrib-3fv-arb #:vertex-attrib-3f-arb
             #:vertex-attrib-3dv-arb #:vertex-attrib-3d-arb
             #:vertex-attrib-2sv-arb #:vertex-attrib-2s-arb
             #:vertex-attrib-2fv-arb #:vertex-attrib-2f-arb
             #:vertex-attrib-2dv-arb #:vertex-attrib-2d-arb
             #:vertex-attrib-1sv-arb #:vertex-attrib-1s-arb
             #:vertex-attrib-1fv-arb #:vertex-attrib-1f-arb
             #:vertex-attrib-1dv-arb #:vertex-attrib-1d-arb
             #:window-pos-3sv-arb #:window-pos-3s-arb #:window-pos-3iv-arb
             #:window-pos-3i-arb #:window-pos-3fv-arb #:window-pos-3f-arb
             #:window-pos-3dv-arb #:window-pos-3d-arb #:window-pos-2sv-arb
             #:window-pos-2s-arb #:window-pos-2iv-arb #:window-pos-2i-arb
             #:window-pos-2fv-arb #:window-pos-2f-arb #:window-pos-2dv-arb
             #:window-pos-2d-arb #:+matrix-palette-arb+
             #:+max-matrix-palette-stack-depth-arb+
             #:+max-palette-matrices-arb+ #:+current-palette-matrix-arb+
             #:+matrix-index-array-arb+ #:+current-matrix-index-arb+
             #:+matrix-index-array-size-arb+ #:+matrix-index-array-type-arb+
             #:+matrix-index-array-stride-arb+
             #:+matrix-index-array-pointer-arb+ #:matrix-index-pointer-arb
             #:matrix-index-uiv-arb #:matrix-index-usv-arb
             #:matrix-index-ubv-arb #:current-palette-matrix-arb
             #:+max-vertex-units-arb+ #:+active-vertex-units-arb+
             #:+weight-sum-unity-arb+ #:+vertex-blend-arb+
             #:+current-weight-arb+ #:+weight-array-type-arb+
             #:+weight-array-stride-arb+ #:+weight-array-size-arb+
             #:+weight-array-pointer-arb+ #:+weight-array-arb+
             #:+modelview0-arb+ #:+modelview1-arb+ #:+modelview2-arb+
             #:+modelview3-arb+ #:+modelview4-arb+ #:+modelview5-arb+
             #:+modelview6-arb+ #:+modelview7-arb+ #:+modelview8-arb+
             #:+modelview9-arb+ #:+modelview10-arb+ #:+modelview11-arb+
             #:+modelview12-arb+ #:+modelview13-arb+ #:+modelview14-arb+
             #:+modelview15-arb+ #:+modelview16-arb+ #:+modelview17-arb+
             #:+modelview18-arb+ #:+modelview19-arb+ #:+modelview20-arb+
             #:+modelview21-arb+ #:+modelview22-arb+ #:+modelview23-arb+
             #:+modelview24-arb+ #:+modelview25-arb+ #:+modelview26-arb+
             #:+modelview27-arb+ #:+modelview28-arb+ #:+modelview29-arb+
             #:+modelview30-arb+ #:+modelview31-arb+ #:vertex-blend-arb
             #:weight-pointer-arb #:weight-uiv-arb #:weight-usv-arb
             #:weight-ubv-arb #:weight-dv-arb #:weight-fv-arb #:weight-iv-arb
             #:weight-sv-arb #:weight-bv-arb #:point-parameter-fv-arb
             #:point-parameter-f-arb #:+compressed-alpha-arb+
             #:+compressed-luminance-arb+ #:+compressed-luminance-alpha-arb+
             #:+compressed-intensity-arb+ #:+compressed-rgb-arb+
             #:+compressed-rgba-arb+ #:+texture-compression-hint-arb+
             #:+texture-compressed-image-size-arb+ #:+texture-compressed-arb+
             #:+num-compressed-texture-formats-arb+
             #:+compressed-texture-formats-arb+ #:get-compressed-tex-image-arb
             #:compressed-tex-sub-image-1d-arb
             #:compressed-tex-sub-image-2d-arb
             #:compressed-tex-sub-image-3d-arb #:compressed-tex-image-1d-arb
             #:compressed-tex-image-2d-arb #:compressed-tex-image-3d-arb
             #:+transpose-modelview-matrix-arb+
             #:+transpose-projection-matrix-arb+
             #:+transpose-texture-matrix-arb+ #:+transpose-color-matrix-arb+
             #:mult-transpose-matrix-d-arb #:mult-transpose-matrix-f-arb
             #:load-transpose-matrix-d-arb #:load-transpose-matrix-f-arb
             #:+texture0-arb+ #:+texture1-arb+ #:+texture2-arb+
             #:+texture3-arb+ #:+texture4-arb+ #:+texture5-arb+
             #:+texture6-arb+ #:+texture7-arb+ #:+texture8-arb+
             #:+texture9-arb+ #:+texture10-arb+ #:+texture11-arb+
             #:+texture12-arb+ #:+texture13-arb+ #:+texture14-arb+
             #:+texture15-arb+ #:+texture16-arb+ #:+texture17-arb+
             #:+texture18-arb+ #:+texture19-arb+ #:+texture20-arb+
             #:+texture21-arb+ #:+texture22-arb+ #:+texture23-arb+
             #:+texture24-arb+ #:+texture25-arb+ #:+texture26-arb+
             #:+texture27-arb+ #:+texture28-arb+ #:+texture29-arb+
             #:+texture30-arb+ #:+texture31-arb+ #:+active-texture-arb+
             #:+client-active-texture-arb+ #:+max-texture-units-arb+
             #:multi-tex-coord-4sv-arb #:multi-tex-coord-4s-arb
             #:multi-tex-coord-4iv-arb #:multi-tex-coord-4i-arb
             #:multi-tex-coord-4fv-arb #:multi-tex-coord-4f-arb
             #:multi-tex-coord-4dv-arb #:multi-tex-coord-4d-arb
             #:multi-tex-coord-3sv-arb #:multi-tex-coord-3s-arb
             #:multi-tex-coord-3iv-arb #:multi-tex-coord-3i-arb
             #:multi-tex-coord-3fv-arb #:multi-tex-coord-3f-arb
             #:multi-tex-coord-3dv-arb #:multi-tex-coord-3d-arb
             #:multi-tex-coord-2sv-arb #:multi-tex-coord-2s-arb
             #:multi-tex-coord-2iv-arb #:multi-tex-coord-2i-arb
             #:multi-tex-coord-2fv-arb #:multi-tex-coord-2f-arb
             #:multi-tex-coord-2dv-arb #:multi-tex-coord-2d-arb
             #:multi-tex-coord-1sv-arb #:multi-tex-coord-1s-arb
             #:multi-tex-coord-1iv-arb #:multi-tex-coord-1i-arb
             #:multi-tex-coord-1fv-arb #:multi-tex-coord-1f-arb
             #:multi-tex-coord-1dv-arb #:multi-tex-coord-1d-arb
             #:client-active-texture-arb #:active-texture-arb
             #:+current-raster-normal-sgix+ #:light-env-i-sgix
             #:get-fragment-material-iv-sgix #:get-fragment-material-fv-sgix
             #:get-fragment-light-iv-sgix #:get-fragment-light-fv-sgix
             #:fragment-material-iv-sgix #:fragment-material-i-sgix
             #:fragment-material-fv-sgix #:fragment-material-f-sgix
             #:fragment-light-model-iv-sgix #:fragment-light-model-i-sgix
             #:fragment-light-model-fv-sgix #:fragment-light-model-f-sgix
             #:fragment-light-iv-sgix #:fragment-light-i-sgix
             #:fragment-light-fv-sgix #:fragment-light-f-sgix
             #:fragment-color-material-sgix #:+parallel-arrays-intel+
             #:+vertex-array-parallel-pointers-intel+
             #:+normal-array-parallel-pointers-intel+
             #:+color-array-parallel-pointers-intel+
             #:+texture-coord-array-parallel-pointers-intel+
             #:tex-coord-pointerv-intel #:color-pointerv-intel
             #:normal-pointerv-intel #:vertex-pointerv-intel
             #:+pixel-group-color-sgis+ #:get-pixel-tex-gen-parameter-fv-sgis
             #:get-pixel-tex-gen-parameter-iv-sgis
             #:pixel-tex-gen-parameter-fv-sgis #:pixel-tex-gen-parameter-f-sgis
             #:pixel-tex-gen-parameter-iv-sgis #:pixel-tex-gen-parameter-i-sgis
             #:+pixel-transform-2d-ext+ #:+pixel-mag-filter-ext+
             #:+pixel-min-filter-ext+ #:+pixel-cubic-weight-ext+ #:+cubic-ext+
             #:+average-ext+ #:+pixel-transform-2d-stack-depth-ext+
             #:+max-pixel-transform-2d-stack-depth-ext+
             #:+pixel-transform-2d-matrix-ext+
             #:pixel-transform-parameter-fv-ext
             #:pixel-transform-parameter-iv-ext
             #:pixel-transform-parameter-f-ext
             #:pixel-transform-parameter-i-ext #:+texture-color-writemask-sgis+
             #:texture-color-mask-sgis #:frame-zoom-sgix
             #:list-parameter-iv-sgix #:list-parameter-i-sgix
             #:list-parameter-fv-sgix #:list-parameter-f-sgix
             #:get-list-parameter-iv-sgix #:get-list-parameter-fv-sgix
             #:stop-instruments-sgix #:start-instruments-sgix
             #:read-instruments-sgix #:poll-instruments-sgix
             #:instruments-buffer-sgix #:get-instruments-sgix
             #:reference-plane-sgix #:+sprite-axial-sgix+
             #:+sprite-object-aligned-sgix+ #:+sprite-eye-aligned-sgix+
             #:sprite-parameter-iv-sgix #:sprite-parameter-i-sgix
             #:sprite-parameter-fv-sgix #:sprite-parameter-f-sgix
             #:tex-filter-func-sgis #:get-tex-filter-func-sgis
             #:pixel-tex-gen-sgix #:tex-sub-image-4d-sgis #:tex-image-4d-sgis
             #:get-fog-func-sgis #:fog-func-sgis #:+point-size-min+
             #:+point-size-min-arb+ #:+point-size-min-ext+ #:+point-size-max+
             #:+point-size-max-arb+ #:+point-size-max-ext+
             #:+point-fade-threshold-size+ #:+point-fade-threshold-size-arb+
             #:+point-fade-threshold-size-ext+ #:+point-distance-attenuation+
             #:+point-distance-attenuation-arb+ #:+distance-attenuation-ext+
             #:point-parameter-fv-sgis #:point-parameter-f-sgis
             #:get-color-table-parameteriv-sgi
             #:get-color-table-parameterfv-sgi #:get-color-table-sgi
             #:copy-color-table-sgi #:color-table-parameteriv-sgi
             #:color-table-parameterfv-sgi #:color-table-sgi
             #:get-sharpen-tex-func-sgis #:sharpen-tex-func-sgis
             #:sample-pattern-sgis #:sample-mask-sgis #:+multisample+
             #:+sample-alpha-to-coverage+ #:+sample-alpha-to-one+
             #:+sample-coverage+ #:+sample-buffers+ #:+samples+
             #:+sample-coverage-value+ #:+sample-coverage-invert+
             #:+multisample-arb+ #:+sample-alpha-to-coverage-arb+
             #:+sample-alpha-to-one-arb+ #:+sample-coverage-arb+
             #:+sample-buffers-arb+ #:+samples-arb+
             #:+sample-coverage-value-arb+ #:+sample-coverage-invert-arb+
             #:+multisample-bit-arb+ #:sample-coverage-arb
             #:get-detail-tex-func-sgis #:detail-tex-func-sgis
             #:+vertex-array-ext+ #:+normal-array-ext+ #:+color-array-ext+
             #:+index-array-ext+ #:+texture-coord-array-ext+
             #:+edge-flag-array-ext+ #:+vertex-array-size-ext+
             #:+vertex-array-type-ext+ #:+vertex-array-stride-ext+
             #:+normal-array-type-ext+ #:+normal-array-stride-ext+
             #:+color-array-size-ext+ #:+color-array-type-ext+
             #:+color-array-stride-ext+ #:+index-array-type-ext+
             #:+index-array-stride-ext+ #:+texture-coord-array-size-ext+
             #:+texture-coord-array-type-ext+
             #:+texture-coord-array-stride-ext+ #:+edge-flag-array-stride-ext+
             #:+vertex-array-pointer-ext+ #:+normal-array-pointer-ext+
             #:+color-array-pointer-ext+ #:+index-array-pointer-ext+
             #:+texture-coord-array-pointer-ext+
             #:+edge-flag-array-pointer-ext+ #:vertex-pointer-ext
             #:tex-coord-pointer-ext #:normal-pointer-ext #:index-pointer-ext
             #:get-pointerv-ext #:edge-flag-pointer-ext #:draw-arrays-ext
             #:color-pointer-ext #:array-element-ext #:+pack-skip-images+
             #:+pack-image-height+ #:+unpack-skip-images+
             #:+unpack-image-height+ #:+texture-3d+ #:+proxy-texture-3d+
             #:+texture-depth+ #:+texture-wrap-r+ #:+max-3d-texture-size+
             #:tex-sub-image-3d-ext #:tex-image-3d-ext #:+texture-priority-ext+
             #:+texture-resident-ext+ #:+texture-1d-binding-ext+
             #:+texture-2d-binding-ext+ #:prioritize-textures-ext
             #:is-texture-ext #:gen-textures-ext #:delete-textures-ext
             #:bind-texture-ext #:are-textures-resident-ext
             #:+polygon-offset-ext+ #:+polygon-offset-factor-ext+
             #:polygon-offset-ext #:reset-minmax-ext #:reset-histogram-ext
             #:minmax-ext #:histogram-ext #:get-minmax-parameter-iv-ext
             #:get-minmax-parameter-fv-ext #:get-minmax-ext
             #:get-histogram-parameter-iv-ext #:get-histogram-parameter-fv-ext
             #:get-histogram-ext #:separable-filter-2d-ext
             #:get-separable-filter-ext #:get-convolution-parameter-iv-ext
             #:get-convolution-parameter-fv-ext #:get-convolution-filter-ext
             #:copy-convolution-filter-2d-ext #:copy-convolution-filter-1d-ext
             #:convolution-parameter-iv-ext #:convolution-parameter-i-ext
             #:convolution-parameter-fv-ext #:convolution-parameter-f-ext
             #:convolution-filter-2d-ext #:convolution-filter-1d-ext
             #:blend-equation-ext #:blend-color-ext)) 