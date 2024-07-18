# Neberg Aurora 830
# CPU Module: Intel Skylake-D

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
# ONIE Version = onie-release version + VENDOR_VERSION
VENDOR_VERSION = v01

# Enable UEFI support
UEFI_ENABLE = yes

# This platform requires the PXE_EFI64 installer
PXE_EFI64_ENABLE = yes

# Vendor ID -- IANA Private Enterprise Number:
# http://www.iana.org/assignments/enterprise-numbers
# Open Compute Project IANA number
VENDOR_ID = 50424

# Enable the i2c/impi tools
I2CTOOLS_ENABLE = yes
IPMITOOL_ENABLE = yes

# Enable ioget/ioset tools
IOACCESS_ENABLE = yes

#
# Console parameters can be defined here (default values are in
# build-config/arch/x86_64.make).
#
CONSOLE_SPEED = 115200
CONSOLE_DEV = 0

# Set Linux kernel version
LINUX_VERSION       = 4.9
LINUX_MINOR_VERSION = 95

# Older GCC required for older 3.2 kernel
GCC_VERSION = 8.3.0

#-------------------------------------------------------------------------------
#
# Local Variables:
# mode: makefile-gmake
# End:
