# Copyright (C) 2025.

# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

# Alibaba AS13-32H-F-RJ

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
VENDOR_VERSION = .0.15

# Vendor ID -- IANA Private Enterprise Number:
# http://www.iana.org/assignments/enterprise-numbers
# Alibaba
VENDOR_ID = 19621

# Enable the i2ctools and the onie-syseeprom command for this platform
I2CTOOLS_ENABLE = yes
I2CTOOLS_SYSEEPROM = no
IPMITOOL_ENABLE = no

# Console parameters
CONSOLE_SPEED = 115200
CONSOLE_DEV = 0

PARTED_ENABLE = yes
#Enable UEFI support
UEFI_ENABLE = yes

# Set Linux kernel version
LINUX_VERSION           = 5.4
LINUX_MINOR_VERSION = 86

# Older GCC required for older 3.2 kernel
GCC_VERSION = 8.3.0

#Extra kernel command line
EXTRA_CMDLINE_LINUX ?= verbose

#-------------------------------------------------------------------------------
#
# Local Variables:
# mode: makefile-gmake
# End:

