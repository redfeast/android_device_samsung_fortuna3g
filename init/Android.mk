<<<<<<< HEAD
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)



# Define vars for library that will be build statically.
include $(CLEAR_VARS)
LOCAL_MODULE := init_msm
LOCAL_C_INCLUDES += device/samsung/fortuna3g/include
LOCAL_SRC_FILES :=  init_fortuna3g.c

# Optional compiler flags.
#LOCAL_LDLIBS   = -lz -lm
#LOCAL_CFLAGS   = -Wall -pedantic -std=c99 -g

include $(BUILD_STATIC_LIBRARY)

# First lib, which will be built statically.
include $(CLEAR_VARS)
LOCAL_MODULE := init_msm
LOCAL_STATIC_LIBRARIES := init_msm
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include
LOCAL_SRC_FILES := init_fortuna3g.c

include $(BUILD_SHARED_LIBRARY)
||||||| parent of 00650d7... remove dependency of init on qcom-common
=======
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES := system/core/init
LOCAL_CFLAGS := -Wall -DANDROID_TARGET=\"$(TARGET_BOARD_PLATFORM)\"
LOCAL_SRC_FILES := init_fortuna3g.c
LOCAL_MODULE := libinit_fortuna3g
include $(BUILD_STATIC_LIBRARY)
>>>>>>> 00650d7... remove dependency of init on qcom-common
