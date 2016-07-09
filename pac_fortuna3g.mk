# Check for target product
ifeq (pac_fortuna3g,$(TARGET_PRODUCT))

# Bootanimation
PAC_BOOTANIMATION_NAME := 960

# Include PAC common configuration
include vendor/pac/config/pac_common.mk

# Inherit CM device configuration
$(call inherit-product, device/samsung/fortuna3g/cm.mk)

endif
