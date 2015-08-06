#
# Copyright 2014 The Android Open Source Project
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
# limitations under the Licens.

# Correct boot animation size for the screen
TARGET_SCREEN_HEIGHT := 854
TARGET_SCREEN_WIDTH := 480

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from u8950 device
$(call inherit-product, device/lge/h324/h324.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := cm_h324
PRODUCT_DEVICE := h324
PRODUCT_BRAND := LG
PRODUCT_MANUFACTURER := LG
PRODUCT_MODEL := Leon
