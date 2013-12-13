LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := nativeutil
LOCAL_SRC_FILES := nativeutil.cpp

LOCAL_CFLAGS    :=

include $(BUILD_SHARED_LIBRARY)

include jni/stockfish/Android.mk

include jni/gtb/Android.mk
