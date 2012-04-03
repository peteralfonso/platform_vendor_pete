# Inherit AOSP device configuration for crespo4g.
$(call inherit-product, device/samsung/crespo4g/full_crespo4g.mk)

# Inherit common product files.
$(call inherit-product, vendor/pete/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := pete_crespo4g
PRODUCT_BRAND := google
PRODUCT_DEVICE := crespo4g
PRODUCT_MODEL := Nexus S 4G
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=sojus BUILD_FINGERPRINT=google/sojus/crespo4g:4.0.4/IMM76D/299849:user/release-keys PRIVATE_BUILD_DESC="sojus-user 4.0.4 IMM76D 299849 release-keys" BUILD_NUMBER=299849

# Inherit common build.prop overrides
-include vendor/pete/products/common_versions.mk

# Extra crespo4g overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/pete/overlay/crespo4g

# Copy crespo4g specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/pete/proprietary/crespo/app/Thinkfree.apk:system/app/Thinkfree.apk \
    vendor/pete/proprietary/crespo/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/pete/proprietary/tuna/media/audio/notifications/Nexus.mp3:system/media/audio/notifications/Nexus.mp3 \
    vendor/pete/proprietary/common/app/Microbes.apk:system/app/Microbes.apk \
    vendor/pete/proprietary/common/app/Wallet.apk:system/app/Wallet.apk \
    vendor/pete/proprietary/common/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    vendor/pete/proprietary/common/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar \
    vendor/pete/proprietary/common/lib/libfilterpack_facedetect.so:system/lib/libfilterpack_facedetect.so \
    vendor/pete/proprietary/common/lib/libmicrobes_jni.so:system/lib/libmicrobes_jni.so \
    vendor/pete/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/pete/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Inherit Face lock security blobs
-include vendor/pete/products/common_facelock.mk

# Inherit drm blobs
# -include vendor/pete/products/common_drm.mk

