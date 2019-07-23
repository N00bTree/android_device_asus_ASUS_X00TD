# Release name
PRODUCT_RELEASE_NAME := X00T

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.keystore=sdm660

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := X00T
PRODUCT_NAME := omni_X00T
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_X00TD
PRODUCT_MANUFACTURER := asus

PRODUCT_PROPERTY_OVERRIDES += \
    ro.secure=1 \
    ro.adb.secure=0 \
    ro.allow.mock.location=0 \
    ro.treble.enabled=true \
    sys.usb.controller=a800000.dwc3 \
    sys.usb.rmnet.func.name=rmnet_bam \
    sys.usb.rndis.func.name=rndis_bam

# for stock ROM
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.CID=CID_ERROR \
    ro.hq.project=ZQL1650
