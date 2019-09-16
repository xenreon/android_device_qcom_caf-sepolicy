# all socs above sdm845 or sdm710
BOARD_PLAT_PUBLIC_SEPOLICY_DIR += \
    device/qcom/sepolicy/generic/public \
    device/qcom/sepolicy/qva/public

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/qcom/sepolicy/generic/private \
    device/qcom/sepolicy/qva/private


BOARD_SEPOLICY_DIRS += \
    device/qcom/sepolicy/generic/vendor/common \
    device/qcom/sepolicy/qva/vendor/common/sysmonapp \
    device/qcom/sepolicy/qva/vendor/ssg \
    device/qcom/sepolicy/generic/vendor/timeservice \
    device/qcom/sepolicy/qva/vendor/common \
    device/qcom/sepolicy/generic/vendor/$(TARGET_BOARD_PLATFORM) \
    device/qcom/sepolicy/qva/vendor/$(TARGET_BOARD_PLATFORM)
    ifneq (,$(filter userdebug eng, $(TARGET_BUILD_VARIANT)))
         BOARD_SEPOLICY_DIRS += \
              device/qcom/sepolicy/generic/vendor/test \
              device/qcom/sepolicy/qva/vendor/test
    endif

