$(call inherit-product, device/sony/togari/aosp_c6833.mk)

# Inherit CM common GSM stuff.
#$(call inherit-product, vendor/cm/config/gsm.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit CM common Phone stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=C6603 BUILD_FINGERPRINT=Sony/C6603_1270-6697/C6603:4.2.2/10.3.A.0.423/WP5_rg:user/release-keys PRIVATE_BUILD_DESC="C6803-user 4.2.2 10.3.A.0.423 WP5_rg test-keys"

PRODUCT_NAME := cm_togari
PRODUCT_DEVICE := togari
