
##############################################################
#
# AESD_CHAR_DEV
#
##############################################################

AESD_CHAR_DEV_VERSION = 'a7029850bb867117f637c8afeb4fb60b0e8d01a1'
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
