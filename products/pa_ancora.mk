# Check for target product
ifeq (pa_ancora,$(TARGET_PRODUCT))

# Define PA bootanimation size
PARANOID_BOOTANIMATION_NAME := HDPI

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_hdpi

# Build paprefs from sources
PREFS_FROM_SOURCE ?= false

# include ParanoidAndroid common configuration
include vendor/pa/config/pa_common.mk

# Inherit CM device configuration
$(call inherit-product, device/samsung/ancora/full_ancora.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/pa/config/gsm.mk)

# Product Package Extras - Repos can be added manually or via addprojects.py
-include vendor/pa/packages/cm.mk

PRODUCT_RELEASE_NAME := ancora

# Setup device configuration
PRODUCT_NAME := pa_ancora
PRODUCT_DEVICE := ancora
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := GT-I8150

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=samsung/GT-I8150/GT-I8150:2.3.6/GINGERBREAD/XXLMD:user/release-keys PRIVATE_BUILD_DESC="GT-I8150-user 2.3.6 GINGERBREAD XXLMD release-keys"

GET_CM_PROJECT_ADDS := $(shell vendor/pa/tools/addprojects.py cm.adds)


endif
