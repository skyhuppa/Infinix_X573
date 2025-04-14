#
#	This file is part of the OrangeFox Recovery Project
# 	Copyright (C) 2023-2024 The OrangeFox Recovery Project
#
#	OrangeFox is free software: you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation, either version 3 of the License, or
#	any later version.
#
#	OrangeFox is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#
# 	This software is released under GPL version 3 or any later version.
#	See <http://www.gnu.org/licenses/>.
#
# 	Please maintain this if you use this script or any part of it
#

# OrangeFox-specific settings #

# screen
OF_SCREEN_H := 1440
OF_STATUS_H := 170
OF_STATUS_INDENT_LEFT := 64
OF_STATUS_INDENT_RIGHT := 48

# other stuff
OF_DONT_PATCH_ENCRYPTED_DEVICE := 1
OF_NO_TREBLE_COMPATIBILITY_CHECK := 1
OF_FBE_METADATA_MOUNT_IGNORE := 1
OF_USE_GREEN_LED := 0

# patch avb20 - some ROM recoveries try to overwrite custom recoveries
OF_PATCH_AVB20 := 1

# quick backup defaults
ifeq ($(FOX_USE_DYNAMIC_PARTITIONS),1)
   OF_QUICK_BACKUP_LIST := /boot;/data;
else
   OF_QUICK_BACKUP_LIST := /boot;/data;/system_image;/vendor_image;
endif

# necessary to decrypt most begonia ROMs (trigger "TW_PREPARE_DATA_MEDIA_EARLY")
OF_FIX_DECRYPTION_ON_DATA_MEDIA := 1

# ensure that /sdcard is bind-unmounted before f2fs data repair or format
OF_UNBIND_SDCARD_F2FS := 1

# flashlight doesn't work
OF_FLASHLIGHT_ENABLE := 0

# no MIUI stuff
OF_DISABLE_OTA_MENU := 1

# legacy services for battery
OF_USE_LEGACY_BATTERY_SERVICES := 1

# number of list options before scrollbar creation
OF_OPTIONS_LIST_NUM := 12
#
