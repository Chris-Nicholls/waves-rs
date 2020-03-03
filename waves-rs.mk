######################################
#
# waves-rs
#
######################################

WAVES_RS_VERSION = v1.0
WAVES_RS_SITE_METHOD = local
WAVES_RS_SITE = $($(PKG)_PKGDIR)/
WAVES_RS_BIN_COMPAT = $(MOD_BIN_COMPAT)

WAVES_RS_BUNDLES = waves-rs.lv2

define WAVES_RS_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/usr/lib/lv2/$(WAVES_RS_BUNDLES)
    cp -r $(@D)/bundles/common/* $(TARGET_DIR)/usr/lib/lv2/$(WAVES_RS_BUNDLES)/
    cp $(@D)/bundles/$(WAVES_RS_BIN_COMPAT)/*.so $(TARGET_DIR)/usr/lib/lv2/$(WAVES_RS_BUNDLES)/
endef

$(eval $(generic-package))
