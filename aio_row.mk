# 64-bit support
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Full base
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Call device specific makefile
$(call inherit-product, device/lenovo/aio_row/device.mk)

LOCAL_PATH := device/lenovo/aio_row

# IO Scheduler
PRODUCT_PROPERTY_OVERRIDES += \
    sys.io.scheduler=bfq    
       
PRODUCT_DEVICE := A7000-a
PRODUCT_NAME := aio_row
PRODUCT_BRAND := lenovo
PRODUCT_MODEL := Lenovo A7000-a
PRODUCT_MANUFACTURER := lenovo

DEVICE_RESOLUTION := 720x1280

# Correct bootanimation size for the screen
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common CM stuff.
CM_BUILD := aio_row
