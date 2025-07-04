#
# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
PRODUCT_USE_DYNAMIC_PARTITIONS := true

BOARD_EMULATOR_DYNAMIC_PARTITIONS_SIZE ?= $(shell expr 1800 \* 1048576 )
BOARD_SUPER_PARTITION_SIZE := $(shell expr $(BOARD_EMULATOR_DYNAMIC_PARTITIONS_SIZE) + 8388608 )  # +8M

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

# Enable mainline checking for this excat product name
#ifeq (sdk_phone64_x86_64,$(TARGET_PRODUCT))
PRODUCT_ENFORCE_ARTIFACT_PATH_REQUIREMENTS := relaxed
#endif

PRODUCT_SDK_ADDON_SYS_IMG_SOURCE_PROP := \
    device/generic/goldfish/64bitonly/product/phone_source.prop_template

$(call inherit-product, device/generic/goldfish/board/emu64x/details.mk)
$(call inherit-product, device/generic/goldfish/product/phone.mk)

PRODUCT_BRAND := broker_rice
PRODUCT_NAME := broker_rice
PRODUCT_DEVICE := emu64x
PRODUCT_MODEL := Android SDK built for x86_64 broker_rice

PRODUCT_PACKAGES += \
    helloworld \
    busybox \
    hellojava \
    FirstSystemApp \
    JNIApp \
