# DEGASLTESPR SM-T237P

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),degasltespr)

include $(call all-subdir-makefiles,$(LOCAL_PATH))

KEYMASTER_IMAGES := \
    keymaste.b00 keymaste.b01 keymaste.b02 keymaste.b03 keymaster.mdt

KEYMASTER_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/keymaster/,$(notdir $(KEYMASTER_IMAGES)))
$(KEYMASTER_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Keymaster firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/`echo $(notdir $@) | sed 's/r\././'` $@

ALL_DEFAULT_INSTALLED_MODULES += $(KEYMASTER_SYMLINKS)

endif
