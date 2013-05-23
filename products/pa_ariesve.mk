# Check for target product
ifeq (pa_ariesve,$(TARGET_PRODUCT))

# Define PA bootanimation size
PARANOID_BOOTANIMATION_NAME := HDPI

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_hdpi

# Build paprefs from sources
PREFS_FROM_SOURCE ?= false

# include ParanoidAndroid common configuration
include vendor/pa/config/pa_common.mk

# Inherit CM device configuration
$(call inherit-product, device/samsung/ariesve/full_ariesve.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/pa/config/gsm.mk)

# Product Package Extras - Repos can be added manually or via addprojects.py
-include vendor/pa/packages/cm.mk

PRODUCT_RELEASE_NAME := ariesve

# Setup device configuration
PRODUCT_NAME := pa_ariesve
PRODUCT_DEVICE := ariesve
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := GT-I9001

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=samsung/GT-I9001/GT-I9001:2.3.6/GINGERBREAD/XXKQI:user/release-keys PRIVATE_BUILD_DESC="GT-I9001-user 2.3.6 GINGERBREAD XXKQI release-keys"

GET_CM_PROJECT_ADDS := $(shell vendor/pa/tools/addprojects.py cm.adds)


endif
