# Todo

## General

- TODO: use esphome packages and substitutions, everything is hardcoded now and some overrides are dumb
- TODO: show print progress bar overlay?

- TODO: LCD backlight based on ambient light and printer printing status? would require light sensor
  or activate via ToF is someone is near the printer, can be issue with the doors of the cabinet, though

## Control power of the printer and lights

- right now external smart socket is used to power the printer on/off, this stays as is I guess

- replace relay switches with MOSFET switches for fan and light control to allow
  speed control and brightness adjustments similar as
  rudd-o did it. Use for example HW-532 = mosfet with opto-isolation

## Control air quality

- TODO: add fan with filter such as [nevermore3d](https://github.com/nevermore3d) system

- TODO: filter usage (fan time * fan speed)

- TODO: other air quality sensors - for detecting gases when printing other materials such as ABS/ASA (not tested)
  and calculate it based on [this](https://atmotube.com/atmocube-support/indoor-air-quality-index-iaqi)
  or [that](https://airly.org/en/air-quality-index-caqi-and-aqi-methods-of-calculation/)

## Spool weight sensor

- for knowing how much filament you have left on the spool so you can decide what to print without
  the need to install a new spool, later on to integrate with [filament usage](https://github.com/nvtkaszpir/3d-print/tree/main/filament-usage)
  but this needs zeroing the weight based on the spool type so you need to know the empty spool weight.
