#
# Copyright (C) 2011 The Android Open-Source Project
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

$(call inherit-product, device/allwinner/p85/full_p85.mk)

# Inherit some common CM9 stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)
$(call inherit-product, device/allwinner/p85/p85-blobs.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_p85
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := p85
PRODUCT_MODEL := GT-I9300
PRODUCT_MANUFACTURER := samsung
PRODUCT_RELEASE_NAME := p85
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m0xx TARGET_DEVICE=m0 BUILD_FINGERPRINT="samsung/m0xx/m0:4.1.1/JRO03C/I9300XXDLJ1:user/release-keys" PRIVATE_BUILD_DESC="m0xx-user 4.1.1 JRO03C I9300XXDLJ1 release-keys"
