include $(PLATFORM_PATH)/syncd-ot-vs.mk
include $(PLATFORM_PATH)/sonic-version.mk
include $(PLATFORM_PATH)/docker-syncd-ot-vs.mk
include $(PLATFORM_PATH)/one-image.mk
include $(PLATFORM_PATH)/onie.mk
include $(PLATFORM_PATH)/kvm-image.mk
include $(PLATFORM_PATH)/platform-modules-vs.mk

SONIC_ALL += $(SONIC_ONE_IMAGE) $(SONIC_KVM_IMAGE) 
