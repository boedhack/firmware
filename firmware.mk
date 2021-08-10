LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),mojito)

RADIO_FILES := $(wildcard $(LOCAL_PATH)/radio/*)
$(foreach f, $(notdir $(RADIO_FILES)), \
    $(call add-radio-file,radio/$(f)))

FIRMWARE_IMAGES := \
    abl \
    aop \
    bluetooth \
    cmnlib \
    cmnlib64 \
    devcfg \
    dsp \
    hyp \
    imagefv \
    keymaster \
    modem \
    qupfw \
    tz \
    uefisecapp \
    xbl \
    xbl_config

AB_OTA_PARTITIONS += $(FIRMWARE_IMAGES)

endif