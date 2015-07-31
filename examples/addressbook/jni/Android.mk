LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE:=protobuf
LOCAL_SRC_FILES:=../../../3rd/lib/$(TARGET_ARCH_ABI)/libprotobuf.a
include $(PREBUILT_STATIC_LIBRARY)

### Write address book ###
include $(CLEAR_VARS)

LOCAL_MODULE:=write_addressbook

LOCAL_CPP_EXTENSION := .cc .cpp .cxx

LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES:= ../../source/addressbook.pb.cc \
                                     ../../source/write_addressbook.cc
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../source \
                                          $(LOCAL_PATH)/../../../3rd/include
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_C_INCLUDES)
LOCAL_STATIC_LIBRARIES := protobuf
LOCAL_CFLAGS += -fvisibility=hidden

#include $(BUILD_SHARED_LIBRARY)
include $(BUILD_EXECUTABLE)

### Read address book ###
include $(CLEAR_VARS)

LOCAL_MODULE:=read_addressbook

LOCAL_CPP_EXTENSION := .cc .cpp .cxx

LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES:= ../../source/addressbook.pb.cc \
                                     ../../source/read_addressbook.cc
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../source \
                                          $(LOCAL_PATH)/../../../3rd/include
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_C_INCLUDES)
LOCAL_STATIC_LIBRARIES := protobuf
LOCAL_CFLAGS += -fvisibility=hidden

include $(BUILD_EXECUTABLE)