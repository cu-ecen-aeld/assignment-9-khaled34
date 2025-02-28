
##############################################################
#
# AESD_CHAR_DEV
#
##############################################################

AESD_CHAR_DEV_VERSION = 'dfbaa6bc94804273b90dfe4d7925cea6cc1225ac'
AESD_CHAR_DEV_SITE = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-khaled34.git'
AESD_CHAR_DEV_SITE_METHOD = git
AESD_CHAR_DEV_GIT_SUBMODULES = YES
AESD_CHAR_DEV_MODULE_SUBDIRS = aesd-char-driver

define AESD_CHAR_DEV_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin
endef

$(eval $(kernel-module))
$(eval $(generic-package))
