LOCAL_PATH := $(call my-dir)

ifeq ($(USE_INTEL_UFO_DRIVER),true)

include $(CLEAR_VARS)
LOCAL_MODULE := ufo.prop
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_ETC)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := ufo.prop
include $(BUILD_PREBUILT)

ifneq ($(BOARD_HAVE_GEN_GFX_SRC),true)

include $(CLEAR_VARS)
LOCAL_MODULE := ufo_prebuilts
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := intel
LOCAL_REQUIRED_MODULES :=
LOCAL_REQUIRED_MODULES += coreu
LOCAL_REQUIRED_MODULES += mediainfo
LOCAL_REQUIRED_MODULES += hdcpd
LOCAL_REQUIRED_MODULES += curd
LOCAL_REQUIRED_MODULES += hwc.ufo
LOCAL_REQUIRED_MODULES += hwcomposer.default
LOCAL_REQUIRED_MODULES += libhwcservice_vpg
LOCAL_REQUIRED_MODULES += libs3cjpeg_vpg
LOCAL_REQUIRED_MODULES += gralloc.ufo
LOCAL_REQUIRED_MODULES += libgrallocclient
LOCAL_REQUIRED_MODULES += libgrallocgmm
LOCAL_REQUIRED_MODULES += libGLES_ufo
LOCAL_REQUIRED_MODULES += libGLES_ufo_intel7
LOCAL_REQUIRED_MODULES += i965_drv_video
LOCAL_REQUIRED_MODULES += libivp
LOCAL_REQUIRED_MODULES += igfxcmjit32
LOCAL_REQUIRED_MODULES += igfxcmrt32
LOCAL_REQUIRED_MODULES += lib2d
LOCAL_REQUIRED_MODULES += libcoreuclient
LOCAL_REQUIRED_MODULES += libcoreuinterface
LOCAL_REQUIRED_MODULES += libcoreuservice
LOCAL_REQUIRED_MODULES += libgsmgr
LOCAL_REQUIRED_MODULES += libuevent
LOCAL_REQUIRED_MODULES += libpavpdll
LOCAL_REQUIRED_MODULES += libpavp
LOCAL_REQUIRED_MODULES += libpcp
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
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_EXECUTABLES)/
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := coreu
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := mediainfo
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_EXECUTABLES)/
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := mediainfo
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_COPY_HEADERS_TO := ufo
LOCAL_COPY_HEADERS := graphics.h
LOCAL_COPY_HEADERS += gralloc.h
include $(BUILD_COPY_HEADERS)

# The intersection of the library sets are placed at this level, the rest of
# the libraries are handled in the board platform make files which should be
# conditionally included from this file if present.

# Hardware Composer
include $(CLEAR_VARS)
LOCAL_MODULE := hwc.ufo
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/hw/
LOCAL_MODULE_STEM := hwcomposer.baytrail
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := hwcomposer$(LOCAL_MODULE_SUFFIX)
include $(BUILD_PREBUILT)

# Hardware Composer Service
include $(CLEAR_VARS)
LOCAL_MODULE := libhwcservice_vpg
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)
LOCAL_MODULE_STEM := libhwcservice
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(LOCAL_MODULE_STEM)$(LOCAL_MODULE_SUFFIX)
include $(BUILD_PREBUILT)

# gralloc
include $(CLEAR_VARS)
LOCAL_MODULE := gralloc.ufo
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/hw/
LOCAL_MODULE_STEM := gralloc.baytrail
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := gralloc$(TARGET_SHLIB_SUFFIX)
include $(BUILD_PREBUILT)

# grallocclient
include $(CLEAR_VARS)
LOCAL_MODULE := libgrallocclient
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)
LOCAL_MODULE_STEM := libgrallocclient
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(LOCAL_MODULE_STEM)$(TARGET_SHLIB_SUFFIX)
include $(BUILD_PREBUILT)

# grallocgmm
include $(CLEAR_VARS)
LOCAL_MODULE := libgrallocgmm
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)
LOCAL_MODULE_STEM := libgrallocgmm
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(LOCAL_MODULE_STEM)$(TARGET_SHLIB_SUFFIX)
include $(BUILD_PREBUILT)

# vpwrapper_vpg
include $(CLEAR_VARS)
LOCAL_MODULE := libvpwrapper_vpg
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)
LOCAL_MODULE_STEM := libvpwrapper
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(LOCAL_MODULE_STEM)$(TARGET_SHLIB_SUFFIX)
include $(BUILD_PREBUILT)

# Driver Loader
include $(CLEAR_VARS)
LOCAL_MODULE := libGLES_ufo
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/egl/
LOCAL_MODULE_STEM := libGLES_intel
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(LOCAL_MODULE_STEM)$(TARGET_SHLIB_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := i965_drv_video
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/
LOCAL_MODULE_STEM := i965_drv_video
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(LOCAL_MODULE_STEM)$(TARGET_SHLIB_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libivp
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/
LOCAL_MODULE_STEM := libivp
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(LOCAL_MODULE_STEM)$(TARGET_SHLIB_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := igfxcmjit32
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/
LOCAL_MODULE_STEM := igfxcmjit32
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(LOCAL_MODULE_STEM)$(TARGET_SHLIB_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := igfxcmrt32
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/
LOCAL_MODULE_STEM := igfxcmrt32
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(LOCAL_MODULE_STEM)$(TARGET_SHLIB_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := lib2d
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/
LOCAL_MODULE_STEM := lib2d
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(LOCAL_MODULE_STEM)$(TARGET_SHLIB_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libcoreuclient
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/
LOCAL_MODULE_STEM := libcoreuclient
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(LOCAL_MODULE_STEM)$(TARGET_SHLIB_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libcoreuinterface
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/
LOCAL_MODULE_STEM := libcoreuinterface
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(LOCAL_MODULE_STEM)$(TARGET_SHLIB_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libcoreuservice
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/
LOCAL_MODULE_STEM := libcoreuservice
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(LOCAL_MODULE_STEM)$(TARGET_SHLIB_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libgsmgr
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/
LOCAL_MODULE_STEM := libgsmgr
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(LOCAL_MODULE_STEM)$(TARGET_SHLIB_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libuevent
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/
LOCAL_MODULE_STEM := libuevent
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(LOCAL_MODULE_STEM)$(TARGET_SHLIB_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libGLES_ufo_intel7
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/egl/
LOCAL_MODULE_STEM := libGLES_intel7
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_MODULE_OWNER := intel
LOCAL_SRC_FILES := $(LOCAL_MODULE_STEM)$(TARGET_SHLIB_SUFFIX)
include $(BUILD_PREBUILT)

endif # BOARD_HAVE_GEN_GFX_SRC

endif # USE_INTEL_UFO_DRIVER
