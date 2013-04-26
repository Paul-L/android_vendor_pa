# Copyright (C) 2012 ParanoidAndroid Project
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

# Check for target product
ifeq (pa_tass,$(TARGET_PRODUCT))

# Define PA bootanimation size
PARANOID_BOOTANIMATION_NAME := LDPI

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_ldpi

# Build paprefs from sources
PREFS_FROM_SOURCE ?= false

# Include ParanoidAndroid common configuration
include vendor/pa/config/pa_common.mk

# Include CM-10.1 thingys

include vendor/pa/packages/cm.mk

# And then tass specifics

include vendor/pa/packages/tass.mk

# LDPI

include device/ldpi-common/ldpi.mk

# Inherit AOSP device configuration
$(call inherit-product, device/samsung/tass/full_tass.mk)

# Override AOSP build properties
PRODUCT_NAME := pa_tass
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := GT-S5570
PRODUCT_MANUFACTURER := Samsung

endif

