OLED_DRIVER_ENABLE = yes   # Enables the use of OLED displays
RGBLIGHT_ENABLE = yes      # Enable keyboard RGB underglow
WPM_ENABLE = yes

# disable unused features to reduce firmware footprint
RGBLIGHT_ANIMATIONS = no
ENCODER_ENABLE = no       # Enables the use of one or more encoders
MOUSEKEY_ENABLE = no
TAP_DANCE_ENABLE = no
STENO_ENABLE = no
BOOTMAGIC_ENABLE =no
TERMINAL_ENABLE = no
GRAVE_ESC_ENABLE = no
MAGIC_ENABLE = no
SPACE_CADET_ENABLE = no
KEY_LOCK_ENABLE = no
AUDIO_ENABLE = no
CONSOLE_ENABLE = no
VELOCIKEY_ENABLE = no

ifeq ($(strip $(OLED_DRIVER_ENABLE)), yes)
	SRC += bongocat.c
	SRC += oled.c
endif