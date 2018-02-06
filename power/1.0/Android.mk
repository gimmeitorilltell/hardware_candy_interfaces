# This file is autogenerated by hidl-gen. Do not edit manually.

LOCAL_PATH := $(call my-dir)

################################################################################

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.candy.power-V1.0-java
LOCAL_MODULE_CLASS := JAVA_LIBRARIES

intermediates := $(call local-generated-sources-dir, COMMON)

HIDL := $(HOST_OUT_EXECUTABLES)/hidl-gen$(HOST_EXECUTABLE_SUFFIX)

LOCAL_JAVA_LIBRARIES := \
	android.hidl.base-V1.0-java \


#
# Build types.hal (CandyPowerHint)
#
GEN := $(intermediates)/vendor/candy/power/V1_0/CandyPowerHint.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/types.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
		$(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
		-Ljava \
		-randroid.hidl:system/libhidl/transport \
		-rvendor.candy:hardware/candy/interfaces \
		vendor.candy.power@1.0::types.CandyPowerHint

$(GEN): $(LOCAL_PATH)/types.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)
include $(BUILD_JAVA_LIBRARY)


################################################################################

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.candy.power-V1.0-java-static
LOCAL_MODULE_CLASS := JAVA_LIBRARIES

intermediates := $(call local-generated-sources-dir, COMMON)

HIDL := $(HOST_OUT_EXECUTABLES)/hidl-gen$(HOST_EXECUTABLE_SUFFIX)

LOCAL_STATIC_JAVA_LIBRARIES := \
	android.hidl.base-V1.0-java-static \


#
# Build types.hal (CandyPowerHint)
#
GEN := $(intermediates)/vendor/candy/power/V1_0/CandyPowerHint.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/types.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
		$(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
		-Ljava \
		-randroid.hidl:system/libhidl/transport \
		-rvendor.candy:hardware/candy/interfaces \
		vendor.candy.power@1.0::types.candyPowerHint

$(GEN): $(LOCAL_PATH)/types.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(call all-makefiles-under,$(LOCAL_PATH))
