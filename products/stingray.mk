# Inherit AOSP device configuration for stingray.
$(call inherit-product, device/moto/stingray/full_stingray.mk)

# Inherit common product files.
$(call inherit-product, vendor/pete/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := pete_stingray
PRODUCT_BRAND := verizon
PRODUCT_DEVICE := stingray
PRODUCT_MODEL := Xoom
PRODUCT_MANUFACTURER := Motorola

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=trygon BUILD_FINGERPRINT=verizon/trygon/stingray:3.2.4/HLK75F/221360:user/release-keys PRIVATE_BUILD_DESC="trygon-user 3.2.4 HLK75F 221360 release-keys" BUILD_NUMBER=221360

# Inherit common build.prop overrides
-include vendor/pete/products/common_versions.mk

# Extra stingray overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/pete/overlay/stingray

# Copy stingray specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/pete/proprietary/stingray/app/StingrayQuickOffice.apk:system/app/StingrayQuickOffice.apk \
    vendor/pete/proprietary/common/app/SetupWizardTablet.apk:system/app/SetupWizard.apk \
    vendor/pete/proprietary/common/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    vendor/pete/proprietary/common/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar \
    vendor/pete/proprietary/common/lib/libfilterpack_facedetect.so:system/lib/libfilterpack_facedetect.so \
    vendor/pete/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/pete/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Inherit Face lock security blobs
-include vendor/pete/products/common_facelock.mk

# Inherit drm blobs
# -include vendor/pete/products/common_drm.mk

