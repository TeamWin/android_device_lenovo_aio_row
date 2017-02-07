$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# call the proprietary setup
$(call inherit-product, vendor/lenovo/aio_row/aio_row-blobs.mk)

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

LOCAL_PATH := device/lenovo/aio_row

DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Recovery allowed devices
TARGET_OTA_ASSERT_DEVICE := Lenovo A7000-a,aio_row,A7000-a

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml


PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.manual_sensor.xml:system/etc/permissions/android.hardware.camera.manual_sensor.xml


# Audio	
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml

	
PRODUCT_TAGS += dalvik.gc.type-precise

# RAMDISK
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/root/init.project.rc:root/init.project.rc \
    $(LOCAL_PATH)/rootdir/root/init.modem.rc:root/init.modem.rc \
    $(LOCAL_PATH)/rootdir/root/factory_init.rc:root/factory_init.rc \
    $(LOCAL_PATH)/rootdir/root/ueventd.mt6752.rc:root/ueventd.mt6752.rc \
    $(LOCAL_PATH)/rootdir/root/init.mt6752.usb.rc:root/init.mt6752.usb.rc \
    $(LOCAL_PATH)/rootdir/root/init.mt6752.rc:root/init.mt6752.rc \
    $(LOCAL_PATH)/rootdir/root/fstab.mt6752:root/fstab.mt6752 \
    $(LOCAL_PATH)/rootdir/root/enableswap.sh:root/enableswap.sh \
    $(LOCAL_PATH)/rootdir/root/init.rc:root/init.rc \
    $(LOCAL_PATH)/rootdir/root/sbin/busybox:root/sbin/busybox

PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libaudio-resampler \
    libtinymix \
    libtinyxml \
    libtinyalsa \
    libtinycompress

PRODUCT_PACKAGES += \
    lib_driver_cmd_mt66xx    
    
 PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf
	
PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory

PRODUCT_PACKAGES += \
    charger \
    charger_res_images \
    libnl_2

PRODUCT_PACKAGES += \
    libgralloc_extra

PRODUCT_PACKAGES += \
    YGPS \
    Snap \
    Gello
   
PRODUCT_PACKAGES += FMRadio \
	libfmjni
		
# RIL	
PRODUCT_PACKAGES += \
    epdg_wod \
    gsm0710muxd \
    gsm0710muxdmd2 \
    mtkrild \
    mtkrildmd2 \
    mtk-ril \
    mtk-rilmd2

    
#PRODUCT_PACKAGES += \
#    volte_imsm \
#    libmal \
#    libmal_datamngr \
#    libmal_epdga \
#    libmal_imsmngr \
#    libmal_mdmngr \
#    libmal_nwmngr \
#    libmal_rds \
#    libmal_rilproxy \
#    libmal_simmngr

    
#PRODUCT_PACKAGES += \
#    mtkmal \
#    volte_xdmc \
#    volte_core \
#    volte_stack \
#    volte_imcb \
#    volte_ua \
#    libipsec_ims
 
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/rootdir/root/init.volte.rc:root/init.volte.rc \
#    $(LOCAL_PATH)/rootdir/root/init.mal.rc:root/init.mal.rc
    
#PRODUCT_PACKAGES += ImsService


PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	ro.mount.fs=EXT4 \
	ro.adb.secure=0 \
	ro.secure=0 \
	ro.allow.mock.location=0 \
	ro.debuggable=1 \
	dalvik.vm.dex2oat-Xms=64m \
	dalvik.vm.dex2oat-Xmx=512m \
	dalvik.vm.image-dex2oat-Xms=64m \
	dalvik.vm.image-dex2oat-Xmx=64m \
	ro.dalvik.vm.native.bridge=0 \
	persist.service.acm.enable=0 \
	ro.config.low_ram=false \
	camera.disable_zsl_mode=1

ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
#ADDITIONAL_DEFAULT_PROPERTIES += persist.logd.logpersistd=logcatd

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp
    
PRODUCT_PROPERTY_OVERRIDES += \
  service.adb.root=1 \
  persist.service.adb.enable=1 \
  persist.service.debuggable=1 \
  persist.sys.root_access=0 \
  persist.sys.usb.config=mtp,adb

# Dalvik/HWUI
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)
