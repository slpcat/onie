# Celestica Seastone2E
# CPU Module: Intel Xeon D 1.5Ghz 12-core

ONIE_ARCH ?= x86_64
SWITCH_ASIC_VENDOR = bcm

VENDOR_REV ?= 0


# Translate hardware revision to ONIE hardware revision
ifeq ($(VENDOR_REV),0)
  MACHINE_REV = 0
else
  $(warning Unknown VENDOR_REV '$(VENDOR_REV)' for MACHINE '$(MACHINE)')
  $(error Unknown VENDOR_REV)
endif

# The VENDOR_VERSION string is appended to the overal ONIE version
# string.  HW vendors can use this to appended their own versioning
# information to the base ONIE version string.
VENDOR_VERSION = .0.0.4

# Vendor ID -- IANA Private Enterprise Number:
# http://www.iana.org/assignments/enterprise-numbers
# Open Compute Project IANA number
VENDOR_ID = 12244
# Add the onie-syseeprom command for this platform
I2CTOOLS_ENABLE = yes
I2CTOOLS_SYSEEPROM = no
IPMITOOL_ENABLE = yes

PARTED_ENABLE = yes

# Enable UEFI support
UEFI_ENABLE = yes

SKIP_ETHMGMT_MACS = yes

PARTITION_TYPE = gpt

# Set Linux kernel version
LINUX_VERSION           = 5.4
LINUX_MINOR_VERSION     = 74

# Older GCC required for older 3.2 kernel
GCC_VERSION = 8.3.0

#-------------------------------------------------------------------------------
#
# Local Variables:
# mode: makefile-gmake
# End:
