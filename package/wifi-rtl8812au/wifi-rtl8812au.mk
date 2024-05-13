WIFI_RTL8812AU_SITE_METHOD = git
WIFI_RTL8812AU_SITE = https://github.com/svpcom/rtl8812au
WIFI_RTL8812AU_SITE_BRANCH = master
WIFI_RTL8812AU_VERSION = $(shell git ls-remote $(WIFI_RTL8812AU_SITE) $(WIFI_RTL8812AU_SITE_BRANCH) | head -1 | cut -f1)

WIFI_RTL8812AU_LICENSE = GPL-2.0
WIFI_RTL8812AU_LICENSE_FILES = COPYING

WIFI_RTL8812AU_MODULE_MAKE_OPTS = CONFIG_RTL8812AU=m \
	KVER=$(LINUX_VERSION_PROBED) \
	KSRC=$(LINUX_DIR)

$(eval $(kernel-module))
$(eval $(generic-package))
