# Copyright (C) 2012 The Android Open Source Project
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

device_path = device/allwinner/p85

DEVICE_PREBUILT := ${device_path}/prebuilt

# /system/app
PRODUCT_COPY_FILES += \
	$(DEVICE_PREBUILT)/app/Apex.apk:system/app/Apex.apk \
        $(DEVICE_PREBUILT)/app/Rotate.apk:system/app/Rotate.apk

# /system/bin
PRODUCT_COPY_FILES += \
	$(DEVICE_PREBUILT)/bin/fsck.exfat:system/bin/fsck.exfat \
	$(DEVICE_PREBUILT)/bin/mkfs.exfat:system/bin/mkfs.exfat \
	$(DEVICE_PREBUILT)/bin/mount.exfat:system/bin/mount.exfat \
	$(DEVICE_PREBUILT)/bin/ntfs-3g:system/bin/ntfs-3g \
	$(DEVICE_PREBUILT)/bin/ntfs-3g.probe:system/bin/ntfs-3g.probe \
	$(DEVICE_PREBUILT)/bin/mkntfs:system/bin/mkntfs \
	$(DEVICE_PREBUILT)/bin/usb_modeswitch:system/bin/usb_modeswitch

# /system/etc
PRODUCT_COPY_FILES += \
	$(DEVICE_PREBUILT)/etc/ppp/ip-down:system/etc/ppp/ip-down \
	$(DEVICE_PREBUILT)/etc/ppp/ip-up:system/etc/ppp/ip-up \
	$(DEVICE_PREBUILT)/etc/ppp/call-pppd:system/etc/ppp/call-pppd \
	$(DEVICE_PREBUILT)/etc/firmware/ath3k-1.fw:system/etc/firmware/ath3k-1.fw \
	$(DEVICE_PREBUILT)/etc/firmware/ath3k-1.fw:system/vendor/firmware/ath3k-1.fw \
	$(DEVICE_PREBUILT)/etc/3g_dongle.cfg:system/etc/3g_dongle.cfg \
	$(DEVICE_PREBUILT)/etc/camera.cfg:system/etc/camera.cfg \
	$(DEVICE_PREBUILT)/etc/gps.conf:system/etc/gps.conf \
	$(DEVICE_PREBUILT)/etc/media_profiles.xml:system/etc/media_profiles.xml \
	$(DEVICE_PREBUILT)/etc/usb_modeswitch.sh:system/etc/usb_modeswitch.sh \
	$(DEVICE_PREBUILT)/etc/vold.fstab:system/etc/vold.fstab

PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(DEVICE_PREBUILT)/etc/init.d,system/etc/init.d)

PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(DEVICE_PREBUILT)/etc/usb_modeswitch.d,system/etc/usb_modeswitch.d)

# /system/lib
PRODUCT_COPY_FILES += \
	$(DEVICE_PREBUILT)/lib/egl/libEGL_mali.so:system/lib/egl/libEGL_mali.so \
	$(DEVICE_PREBUILT)/lib/egl/libGLESv1_CM_mali.so:system/lib/egl/libGLESv1_CM_mali.so \
	$(DEVICE_PREBUILT)/lib/egl/libGLESv2_mali.so:system/lib/egl/libGLESv2_mali.so \
	$(DEVICE_PREBUILT)/lib/liballwinner-ril.so:system/lib/liballwinner-ril.so \
	$(DEVICE_PREBUILT)/lib/libMali.so:system/lib/libMali.so \
	$(DEVICE_PREBUILT)/lib/libUMP.so:system/lib/libUMP.so \
	external/cedarx/CedarAndroidLib/LIB_ICS_F23/libstagefright_soft_cedar_h264dec.so:system/lib/libstagefright_soft_cedar_h264dec.so \
	$(DEVICE_PREBUILT)/lib/libMali.so:obj/lib/libMali.so \
	$(DEVICE_PREBUILT)/lib/libUMP.so:obj/lib/libUMP.so \
        $(DEVICE_PREBUILT)/lib/hw/camera.sun4i.so:system/lib/hw/camera.sun4i.so 

# /system/usr
PRODUCT_COPY_FILES += \
	$(DEVICE_PREBUILT)/usr/idc/ft5x_ts.idc:system/usr/idc/ft5x_ts.idc \
	$(DEVICE_PREBUILT)/usr/keylayout/axp20-supplyer.kl:system/usr/keylayout/axp20-supplyer.kl \
	$(DEVICE_PREBUILT)/usr/keylayout/sun4i-keyboard.kl:system/usr/keylayout/sun4i-keyboard.kl

# prebuilt kernel modules
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/allwinner/p85/prebuilt/lib/modules,system/lib/modules)

#PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=GT-I9100 PRODUCT_BRAND=samsung BUILD_ID=IML74K BUILD_FINGERPRINT=samsung/GT-I9100/GT-I9100:4.0.3/IML74K/BGLP8:user/release-keys PRIVATE_BUILD_DESC="GT-I9100-user 4.0.3 IML74K BGLP8 release-keys" BUILD_NUMBER=BGLP8
