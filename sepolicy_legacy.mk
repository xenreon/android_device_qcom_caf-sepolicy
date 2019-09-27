# all socs bellow sdm845 or sdm710
BOARD_PLAT_PUBLIC_SEPOLICY_DIR += \
    device/qcom/sepolicy/generic/public \
    device/qcom/sepolicy/qva/public

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/qcom/sepolicy/generic/private \
    device/qcom/sepolicy/qva/private


BOARD_SEPOLICY_DIRS += \
    device/qcom/sepolicy/legacy/vendor/common/sysmonapp \
    device/qcom/sepolicy/legacy/vendor/ssg \
    device/qcom/sepolicy/legacy/timeservice \
    device/qcom/sepolicy/legacy/vendor/timeservice \
    device/qcom/sepolicy/legacy/vendor/common \
    device/qcom/sepolicy/legacy/vendor/$(TARGET_SEPOLICY_DIR)
    ifneq (,$(filter userdebug eng, $(TARGET_BUILD_VARIANT)))
        BOARD_SEPOLICY_DIRS += \
             device/qcom/sepolicy/legacy/vendor/test
    endif
