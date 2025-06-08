# AndroidProducts.mk
# List of products for the 'broker_rice' device

PRODUCT_MAKEFILES := \
	$(LOCAL_DIR)/broker_rice.mk

COMMON_LUNCH_CHOICES := \
	broker_rice-trunk_staging-user \
	broker_rice-trunk_staging-userdebug \
	broker_rice-trunk_staging-eng