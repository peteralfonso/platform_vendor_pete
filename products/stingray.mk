# Inherit AOSP device configuration for stingray.
$(call inherit-product, device/moto/stingray/full_stingray.mk)

# Inherit common product files.
$(call inherit-product, vendor/pete/products/common.mk)

# Inherit additional audio package
$(call inherit-product, frameworks/base/data/sounds/AudioPackage6.mk)

# Setup device specific product configuration.
PRODUCT_NAME := pete_stingray
PRODUCT_BRAND := verizon
PRODUCT_DEVICE := stingray
PRODUCT_MODEL := Xoom
PRODUCT_MANUFACTURER := Motorola

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=trygon BUILD_FINGERPRINT=verizon/trygon/stingray:4.0.4/IMM76L/345519:user/release-keys PRIVATE_BUILD_DESC="trygon-user 4.0.4 IMM76L 345519 release-keys" BUILD_NUMBER=345519

# Inherit common build.prop overrides
-include vendor/pete/products/common_versions.mk

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.com.android.dataroaming=false

# Extra stingray overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/pete/overlay/stingray

# Copy stingray specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/pete/proprietary/stingray/app/StingrayQuickOffice.apk:system/app/StingrayQuickOffice.apk \
    vendor/pete/proprietary/common/app/SetupWizardTablet.apk:system/app/SetupWizard.apk

# Inherit media effect blobs
-include vendor/pete/products/common_media_effects.mk

# Inherit Face lock security blobs
-include vendor/pete/products/common_facelock.mk

# Inherit drm blobs
-include vendor/pete/products/common_drm_tablet.mk

