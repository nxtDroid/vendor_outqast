# Inherit AOSP device configuration for shamu
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

# Inherit common product files
$(call inherit-product, vendor/noobbuilds/configs/common.mk)

# Setup device specific product configuration
PRODUCT_NAME := noobbuilds_n6
PRODUCT_DEVICE := google
PRODUCT_BRAND := shamu
PRODUCT_MODEL := Nexus 6
PRODUCT_MANUFACTURER := motorola

# Build prop fingerprint overrides
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME="shamu" BUILD_FINGERPRINT="google/shamu/shamu:5.1/LMY47I/1743759:user/release-keys" PRIVATE_BUILD_DESC="shamu-user 5.1 LMY47I 1743759 release-keys"

#fmas n6 specific 
PRODUCT_PROPERTY_OVERRIDES += \
    fmas.spkr_6ch=35,20,110 \
    fmas.spkr_2ch=35,25 \
    fmas.spkr_angles=10 \
    fmas.spkr_sgain=0 \
    media.aac_51_output_enabled=true
