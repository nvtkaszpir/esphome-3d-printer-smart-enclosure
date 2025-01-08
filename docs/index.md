# Welcome to ESPHome 3D Printer Smart Enclosure

![logo](./static/lcd_display-fs8.png){: style="height:250px;width:250px;"}

This is a 3d printer enclosure controlling system using esp32 devices using
[esphome](https://esphome.io/) via [HomeAssistant](https://www.home-assistant.io/).

## Known limitations

- for smooth transitions esp32 device with PSRAM recommended,
  notice that esp8266 was not tested at all and probably will never be
- you may need two boards, one for the display and another for other controls due to pinout limits... and convenience

## Scope of work

### Done

Phase 1:

- temperature / humidity sensor - gather data from the enclosure and expose in HA
- air particulate sensor - gather data from the enclosure and expose in HA
- LCD display to present the data
- [relay switches](https://devices.esphome.io/devices/Generic-Relay)
  for printer power and light control

### Todo

### General

- TODO: migrate to LVGL swiping widgets, easier to navigate multiple pages,
  because right now you need to wait for timeout to default page or click next next next

- TODO: LCD backlight based on ambient light and printer printing status? would require light sensor
  or activate via ToF is someone is near the printer, can be issue with the doors of the cabinet, though

#### Control power of the printer and lights

- TODO: add power/light control in LVGL (those are devices from HA, not directly attached)

- right now external smart socket is used to power the printer on/off, this stays as is I guess

- replace relay switches with MOSFET switches for fan and light control to allow
  speed control and brightness adjustments similar as
  rudd-o did it. Use for example HW-532 = mosfet with opto-isolation

#### Control air quality

- TODO: add fan with filter such as [nevermore3d](https://github.com/nevermore3d) system

- TODO: filter usage (fan time * fan speed)

- TODO: other air quality sensors - for detecting gases when printing other materials such as ABS/ASA (not tested)

#### Spool weight sensor

- for knowing how much filament you have left on the spool so you can decide what to print without
  the need to install a new spool, later on to integrate with [filament usage](https://github.com/nvtkaszpir/3d-print/tree/main/filament-usage)
