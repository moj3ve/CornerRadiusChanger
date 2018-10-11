include $(THEOS)/makefiles/common.mk

TWEAK_NAME = CornerRadiusChanger
CornerRadiusChanger_FILES = Tweak.xm
CornerRadiusChanger_EXTRA_FRAMEWORKS += Cephei
CornerRadiusChanger_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += cornerradiuschanger
include $(THEOS_MAKE_PATH)/aggregate.mk
