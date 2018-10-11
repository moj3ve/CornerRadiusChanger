include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = CornerRadiusChanger
CornerRadiusChanger_FILES = CRCRootListController.m
CornerRadiusChanger_INSTALL_PATH = /Library/PreferenceBundles
CornerRadiusChanger_FRAMEWORKS = UIKit
CornerRadiusChanger_PRIVATE_FRAMEWORKS = Preferences
CornerRadiusChanger_EXTRA_FRAMEWORKS = Cephei CepheiPrefs

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/CornerRadiusChanger.plist$(ECHO_END)
