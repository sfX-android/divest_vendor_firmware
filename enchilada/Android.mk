LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),enchilada)

AB_OTA_PARTITIONS += \
    abl \
    aop \
    bluetooth \
    cmnlib \
    cmnlib64 \
    devcfg \
    dsp \
    fw_4j1ed \
    fw_4u1ea \
    hyp \
    keymaster \
    LOGO \
    modem \
    qupfw \
    storsec \
    tz \
    xbl \
    xbl_config
#oem_stanvbk is excluded, as it fails to flash

# This does not include vendor.img in the output
BOARD_PREBUILT_VENDORIMAGE = vendor/firmware/enchilada/vendor.img
#AB_OTA_PARTITIONS += vendor

include vendor/firmware/enchilada/AndroidBoardVendor.mk

endif