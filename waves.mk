######################################
#
# waves-rs
#
######################################

WAVESRS_VERSION = 0.2.0
WAVESRS_SITE = https://github.com/Chris-Nicholls/waves-rs/
WAVESRS_SOURCE = archive/0.2.0.tar.gz
WAVESRS_BUNDLES = waves-rs.lv2
WAVESRS_AUTORECONF = YES


$(eval $(autotools-package))