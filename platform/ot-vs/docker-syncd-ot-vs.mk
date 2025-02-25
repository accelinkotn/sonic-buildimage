# docker image for vs syncd

DOCKER_SYNCD_PLATFORM_CODE = ot-vs
include $(PLATFORM_PATH)/../template/docker-syncd-bullseye.mk

$(DOCKER_SYNCD_BASE)_DEPENDS += $(SYNCD_OT_VS)

$(DOCKER_SYNCD_BASE)_DBG_DEPENDS += $(SYNCD_OT_VS_DBG) \
                                $(LIBSWSSCOMMON_DBG) \
                                $(LIBOTAIMETADATA_DBG) \
                                $(LIBOTAIREDIS_DBG) \
                                $(LIBOTAIVS_DBG)

$(DOCKER_SYNCD_BASE)_VERSION = 1.0.0
$(DOCKER_SYNCD_BASE)_PACKAGE_NAME = syncd-ot
$(DOCKER_SYNCD_BASE)_CONTAINER_NAME = syncd-ot

$(DOCKER_SYNCD_BASE)_RUN_OPT += -v /host/warmboot:/var/warmboot
