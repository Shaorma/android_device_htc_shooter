PRODUCT_COPY_FILES += device/htc/shooter/config/audio_effects.conf:system/etc/audio_effects.conf

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/cdma.mk)

# Inherit device configuration
$(call inherit-product, device/htc/shooter/shooter.mk)

# Device naming
PRODUCT_DEVICE := shooter
PRODUCT_NAME := cm_shooter
PRODUCT_MANUFACTURER := HTC
PRODUCT_MODEL := Evo 3D CDMA

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_shooter BUILD_FINGERPRINT="htc/htc_shooter/shooter:4.0.3/IML74K/560205.6:user/release-keys" PRIVATE_BUILD_DESC="2.95.651.6 CL560205 release-keys"

# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

# Release name
PRODUCT_RELEASE_NAME := shooter
