# Inherit AOSP device configuration for maguro.
$(call inherit-product, device/samsung/maguro/full_maguro.mk)

# Inherit common product files.
$(call inherit-product, vendor/pete/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := pete_maguro
PRODUCT_BRAND := google
PRODUCT_DEVICE := maguro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=takju BUILD_FINGERPRINT=google/takju/maguro:4.1.1/JRO03C/398337:user/release-keys PRIVATE_BUILD_DESC="takju-user 4.1.1 JRO03C 398337 release-keys" BUILD_NUMBER=398337

PRODUCT_PROPERTY_OVERRIDES += \
    camera.flash_off=0 \
    ro.com.google.mcc_fallback=262

# Inherit common build.prop overrides
-include vendor/pete/products/common_versions.mk

# Copy toro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/pete/proprietary/tuna/app/Thinkfree.apk:system/app/Thinkfree.apk \
    vendor/pete/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/pete/proprietary/tuna/media/audio/notifications/Nexus.mp3:system/media/audio/notifications/Nexus.mp3 \
    vendor/pete/proprietary/common/app/Wallet.apk:system/app/Wallet.apk

# Inherit media effect blobs
-include vendor/pete/products/common_media_effects.mk

# Inherit Face lock security blobs
-include vendor/pete/products/common_facelock.mk

# Inherit drm blobs
-include vendor/pete/products/common_drm_phone.mk

# Inherit speech recognition blobs
-include vendor/pete/products/common_speech_recognition.mk

