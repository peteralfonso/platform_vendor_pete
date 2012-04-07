# Inherit AOSP device configuration for wingray.
$(call inherit-product, device/moto/wingray/full_wingray.mk)

# Inherit common product files.
$(call inherit-product, vendor/pete/products/common.mk)

# Inherit additional audio package
$(call inherit-product, frameworks/base/data/sounds/AudioPackage6.mk)

# Setup device specific product configuration.
PRODUCT_NAME := pete_wingray
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := wingray
PRODUCT_MODEL := Xoom
PRODUCT_MANUFACTURER := Motorola

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=tervigon BUILD_FINGERPRINT=motorola/tervigon/wingray:4.0.4/IMM76/292727:user/release-keys PRIVATE_BUILD_DESC="tervigon-user 4.0.4 IMM76 292727 release-keys" BUILD_NUMBER=292727

# Inherit common build.prop overrides
-include vendor/pete/products/common_versions.mk

# Extra wingray overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/pete/overlay/wingray

# Copy wingray specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/pete/proprietary/stingray/app/StingrayQuickOffice.apk:system/app/StingrayQuickOffice.apk \
    vendor/pete/proprietary/common/app/SetupWizardTablet.apk:system/app/SetupWizard.apk

# Inherit media effect blobs
-include vendor/pete/products/common_media_effects.mk

# Inherit Face lock security blobs
-include vendor/pete/products/common_facelock.mk

# Inherit drm blobs
-include vendor/pete/products/common_drm_tablet.mk

