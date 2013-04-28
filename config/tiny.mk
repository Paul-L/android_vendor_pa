
# goo.im properties
ifneq ($(DEVELOPER_VERSION),true)
    PRODUCT_PROPERTY_OVERRIDES += \
      ro.goo.developerid=paranoidandroid \
      ro.goo.rom=paranoidandroid \
      ro.goo.version=$(shell date +%s)
endif

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false



# Required CM packages
PRODUCT_PACKAGES += \
    LatinIME \
    SpareParts \
    Superuser \
    su

# Optional CM packages
PRODUCT_PACKAGES += \
    Basic \
    LiveWallpapersPicker

# Custom CM packages
PRODUCT_PACKAGES += \
    Trebuchet \
    Camera \
    libcyanogen-dsp \
    audio_effects.conf \
    Music \
    MusicFX \
    Stk

# Extra tools in CM
PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs \
    bash \
    lsof

