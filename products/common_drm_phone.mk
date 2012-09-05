# Blobs necessary for drm
PRODUCT_COPY_FILES +=  \
    vendor/pete/proprietary/common/etc/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml \
    vendor/pete/proprietary/common/framework/com.google.widevine.software.drm.jar:system/framework/com.google.widevine.software.drm.jar \
    vendor/pete/proprietary/common_drm/phone/lib/libfrsdk.so:system/lib/libfrsdk.so \
    vendor/pete/proprietary/common_drm/phone/vendor/etc/smc_normal_world_android_cfg.ini:system/vendor/etc/smc_normal_world_android_cfg.ini \
    vendor/pete/proprietary/common_drm/phone/vendor/firmware/smc_pa_wvdrm.ift:system/vendor/firmware/smc_pa_wvdrm.ift \
    vendor/pete/proprietary/common_drm/phone/vendor/lib/libwvdrm_L1.so:system/vendor/lib/libwvdrm_L1.so \
    vendor/pete/proprietary/common_drm/phone/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so \
    vendor/pete/proprietary/common_drm/phone/vendor/lib/libWVStreamControlAPI_L1.so:system/vendor/lib/libWVStreamControlAPI_L1.so \
    vendor/pete/proprietary/common_drm/phone/vendor/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so \

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

