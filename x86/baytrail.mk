ifneq ($(BOARD_HAVE_GEN_GFX_SRC),true)

include $(CLEAR_VARS)
LOCAL_MODULE := ufo_prebuilts
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := intel
LOCAL_REQUIRED_MODULES :=
LOCAL_REQUIRED_MODULES += coreu
LOCAL_REQUIRED_MODULES += mediainfo
LOCAL_REQUIRED_MODULES += igfxSettings
LOCAL_REQUIRED_MODULES += hwc.ufo
LOCAL_REQUIRED_MODULES += libhwcservice_vpg
LOCAL_REQUIRED_MODULES += libs3cjpeg_vpg
LOCAL_REQUIRED_MODULES += gralloc.ufo
LOCAL_REQUIRED_MODULES += libgrallocclient
LOCAL_REQUIRED_MODULES += libgrallocgmm
LOCAL_REQUIRED_MODULES += libGLES_ufo_intel7
LOCAL_REQUIRED_MODULES += i965_drv_video
LOCAL_REQUIRED_MODULES += libpcp
LOCAL_REQUIRED_MODULES += libpavp
LOCAL_REQUIRED_MODULES += libpavpdll
LOCAL_REQUIRED_MODULES += igfxcmjit32
LOCAL_REQUIRED_MODULES += igfxcmrt32
LOCAL_REQUIRED_MODULES += lib2d
LOCAL_REQUIRED_MODULES += libivp
LOCAL_REQUIRED_MODULES += libcoreuclient
LOCAL_REQUIRED_MODULES += libcoreuinterface
LOCAL_REQUIRED_MODULES += libcoreuservice
LOCAL_REQUIRED_MODULES += libgsmgr
LOCAL_REQUIRED_MODULES += libuevent
LOCAL_REQUIRED_MODULES += libskuwa
LOCAL_REQUIRED_MODULES += libmd
LOCAL_REQUIRED_MODULES += Intel.icd
LOCAL_REQUIRED_MODULES += libIntelOpenCL
LOCAL_REQUIRED_MODULES += libOpenCL
LOCAL_REQUIRED_MODULES += libigdbcl
LOCAL_REQUIRED_MODULES += libigdfcl
LOCAL_REQUIRED_MODULES += libigdrcl
LOCAL_REQUIRED_MODULES += libRSDriver_intel7
LOCAL_REQUIRED_MODULES += libRSDriverUmd_intel7
LOCAL_REQUIRED_MODULES += libRSDriverMlc_intel7
LOCAL_REQUIRED_MODULES += libigdusc
# Non-VPG deps
LOCAL_REQUIRED_MODULES += libdrm
LOCAL_REQUIRED_MODULES += libdrm_intel
LOCAL_REQUIRED_MODULES += libva
LOCAL_REQUIRED_MODULES += libva-android
include $(BUILD_PHONY_PACKAGE)

include $(CLEAR_VARS)
LOCAL_MODULE := coreu
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_EXECUTABLES)/
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(TARGET_ARCH)/coreu
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := mediainfo
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_EXECUTABLES)/
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(TARGET_ARCH)/mediainfo
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := igfxSettings
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_EXECUTABLES)/
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(TARGET_ARCH)/igfxSettings
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_COPY_HEADERS_TO := ufo
LOCAL_COPY_HEADERS := $(TARGET_ARCH)/graphics.h
LOCAL_COPY_HEADERS += $(TARGET_ARCH)/gralloc.h
LOCAL_COPY_HEADERS += $(TARGET_ARCH)/iVP.h
include $(BUILD_COPY_HEADERS)

# The intersection of the library sets are placed at this level, the rest of
# the libraries are handled in the board platform make files which should be
# conditionally included from this file if present.

# Hardware Composer
include $(CLEAR_VARS)
LOCAL_MODULE := hwc.ufo
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw/
LOCAL_MODULE_STEM := hwcomposer.$(TARGET_BOARD_PLATFORM)
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(TARGET_ARCH)/hwcomposer$(LOCAL_MODULE_SUFFIX)
include $(BUILD_PREBUILT)

# Hardware Composer Service
include $(CLEAR_VARS)
LOCAL_MODULE := libhwcservice_vpg
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_MODULE_STEM := libhwcservice
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(TARGET_ARCH)/$(LOCAL_MODULE_STEM)$(LOCAL_MODULE_SUFFIX)
include $(BUILD_PREBUILT)

# gralloc
include $(CLEAR_VARS)
LOCAL_MODULE := gralloc.ufo
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw/
LOCAL_MODULE_STEM := gralloc.$(TARGET_BOARD_PLATFORM)
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(TARGET_ARCH)/gralloc$(TARGET_SHLIB_SUFFIX)
include $(BUILD_PREBUILT)

# grallocclient
include $(CLEAR_VARS)
LOCAL_MODULE := libgrallocclient
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_MODULE_STEM := libgrallocclient
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(TARGET_ARCH)/$(LOCAL_MODULE_STEM)$(TARGET_SHLIB_SUFFIX)
include $(BUILD_PREBUILT)

# grallocgmm
include $(CLEAR_VARS)
LOCAL_MODULE := libgrallocgmm
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_MODULE_STEM := libgrallocgmm
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(TARGET_ARCH)/$(LOCAL_MODULE_STEM)$(TARGET_SHLIB_SUFFIX)
include $(BUILD_PREBUILT)

# libivp
include $(CLEAR_VARS)
LOCAL_MODULE := libivp
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_MODULE_STEM := libivp
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(TARGET_ARCH)/$(LOCAL_MODULE_STEM)$(TARGET_SHLIB_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := i965_drv_video
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/
LOCAL_MODULE_STEM := i965_drv_video
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(TARGET_ARCH)/$(LOCAL_MODULE_STEM)$(TARGET_SHLIB_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := igfxcmjit32
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/
LOCAL_MODULE_STEM := igfxcmjit32
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(TARGET_ARCH)/$(LOCAL_MODULE_STEM)$(TARGET_SHLIB_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := igfxcmrt32
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/
LOCAL_MODULE_STEM := igfxcmrt32
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(TARGET_ARCH)/$(LOCAL_MODULE_STEM)$(TARGET_SHLIB_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := lib2d
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/
LOCAL_MODULE_STEM := lib2d
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(TARGET_ARCH)/$(LOCAL_MODULE_STEM)$(TARGET_SHLIB_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libcoreuclient
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/
LOCAL_MODULE_STEM := libcoreuclient
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(TARGET_ARCH)/$(LOCAL_MODULE_STEM)$(TARGET_SHLIB_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libcoreuinterface
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/
LOCAL_MODULE_STEM := libcoreuinterface
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(TARGET_ARCH)/$(LOCAL_MODULE_STEM)$(TARGET_SHLIB_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libcoreuservice
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/
LOCAL_MODULE_STEM := libcoreuservice
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(TARGET_ARCH)/$(LOCAL_MODULE_STEM)$(TARGET_SHLIB_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libgsmgr
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/
LOCAL_MODULE_STEM := libgsmgr
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(TARGET_ARCH)/$(LOCAL_MODULE_STEM)$(TARGET_SHLIB_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libuevent
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/
LOCAL_MODULE_STEM := libuevent
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(TARGET_ARCH)/$(LOCAL_MODULE_STEM)$(TARGET_SHLIB_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libskuwa
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/
LOCAL_MODULE_STEM := libskuwa
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(TARGET_ARCH)/$(LOCAL_MODULE_STEM)$(TARGET_SHLIB_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libGLES_ufo_intel7
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/egl/
LOCAL_MODULE_STEM := libGLES_intel7
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(TARGET_ARCH)/$(LOCAL_MODULE_STEM)$(TARGET_SHLIB_SUFFIX)
include $(BUILD_PREBUILT)

# PAVP
include $(CLEAR_VARS)
LOCAL_MODULE := libpavp
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/
LOCAL_MODULE_STEM := libpavp
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(TARGET_ARCH)/$(LOCAL_MODULE_STEM)$(TARGET_SHLIB_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libpcp
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/
LOCAL_MODULE_STEM := libpcp
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(TARGET_ARCH)/$(LOCAL_MODULE_STEM)$(TARGET_SHLIB_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libpavpdll
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/
LOCAL_MODULE_STEM := libpavpdll
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(TARGET_ARCH)/$(LOCAL_MODULE_STEM)$(TARGET_SHLIB_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := hdcpd
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_EXECUTABLES)/
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(TARGET_ARCH)/hdcpd
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libmd
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/
LOCAL_MODULE_STEM := libmd
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(TARGET_ARCH)/$(LOCAL_MODULE_STEM)$(TARGET_SHLIB_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := Intel.icd
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/Khronos/OpenCL/vendors
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(TARGET_ARCH)/Intel.icd
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libIntelOpenCL
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)
LOCAL_MODULE_STEM := libIntelOpenCL
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(TARGET_ARCH)/$(LOCAL_MODULE_STEM)$(TARGET_SHLIB_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libOpenCL
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)
LOCAL_MODULE_STEM := libOpenCL
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(TARGET_ARCH)/$(LOCAL_MODULE_STEM)$(TARGET_SHLIB_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libRSDriverMlc_intel7
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_MODULE_STEM := libRSDriverMlc_intel7
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(TARGET_ARCH)/$(LOCAL_MODULE_STEM)$(TARGET_SHLIB_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libRSDriverUmd_intel7
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_MODULE_STEM := libRSDriverUmd_intel7
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(TARGET_ARCH)/$(LOCAL_MODULE_STEM)$(TARGET_SHLIB_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libRSDriver_intel7
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_MODULE_STEM := libRSDriver_intel7
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(TARGET_ARCH)/$(LOCAL_MODULE_STEM)$(TARGET_SHLIB_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libigdbcl
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_MODULE_STEM := libigdbcl
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(TARGET_ARCH)/$(LOCAL_MODULE_STEM)$(TARGET_SHLIB_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libigdfcl
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)
LOCAL_MODULE_STEM := libigdfcl
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(TARGET_ARCH)/$(LOCAL_MODULE_STEM)$(TARGET_SHLIB_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libigdrcl
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)
LOCAL_MODULE_STEM := libigdrcl
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(TARGET_ARCH)/$(LOCAL_MODULE_STEM)$(TARGET_SHLIB_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libigdusc
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)
LOCAL_MODULE_STEM := libigdusc
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(TARGET_ARCH)/$(LOCAL_MODULE_STEM)$(TARGET_SHLIB_SUFFIX)
include $(BUILD_PREBUILT)

endif # BOARD_HAVE_GEN_GFX_SRC
