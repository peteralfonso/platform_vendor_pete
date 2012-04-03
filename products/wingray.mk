# Inherit AOSP device configuration for wingray.
$(call inherit-product, device/moto/wingray/full_wingray.mk)

# Inherit common product files.
$(call inherit-product, vendor/pete/products/common.mk)

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

