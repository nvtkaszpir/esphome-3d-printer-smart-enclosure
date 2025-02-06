# Todo

## General

- TODO: if air quality gets worse and backlight is on, then it is not off on idle , need to touch screen
- TODO: use esphome packages and substitutions, everything is hardcoded now and some overrides are dumb
- TODO: show print progress bar overlay?
- TODO: show ETA for air cleanup, how to calculate it?

- BUG: sometimes display is always on and needs to be touched to allow it to turn off to 0
  add global value to check the screen idle and last time it was on/off?
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
  and [this](https://www.breeze-technologies.de/blog/calculating-an-actionable-indoor-air-quality-index/)

  <!-- markdownlint-disable line_length -->
  ```text
  Label              | IAQI      | CO2(ppm)    | TVOC(Index)  | NOx(Index) | CH2O(ppm)  | PM1(µg/m3) | PM2.5(µg/m3) | PM10(µg/m3) | CO(ppm)     | O3(ppm)        |
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------
  Good               |   0 - 100 |  400 -  599 |     1 -  199 |    1 - 49  |   0 -   50 |     0 - 14 |      0 - 20  |     0 -  30 |  0   -  1.7 | 0 - 0.025      |
  Moderate           | 101 - 200 |  600 - 999  |   200 -  660 |   50 - 99  |  51 -  150 |    15 - 34 |     21 - 50  |    31 -  75 |  1.8 -  8.7 | 0.026 - 0.06   |
  Polluted           | 201 - 300 | 1000 - 1499 |   661 - 1100 |  100 - 299 | 151 -  300 |    35 - 61 |     51 - 90  |    76 - 125 |  8.8 - 10   | 0.061 - 0.075  |
  Very Polluted      | 301 - 400 | 1500 - 2499 |  1101 - 1651 |  300 - 349 | 301 -  500 |    62 - 95 |     91 - 140 |   126 - 200 | 10.1 - 15   | 0.076 - 0.1    |
  Severely Polluted  | 401 - 500 | 2500 - 5000 |  1651 - 2000 |  350 - 500 | 501 - 1000 |   96 - 150 |    141 - 200 |   201 - 300 | 15.1 - 30   | 0.101 - 0.3    |
  ```
  <!-- markdownlint-enable line_length -->

## Spool weight sensor

- for knowing how much filament you have left on the spool so you can decide what to print without
  the need to install a new spool, later on to integrate with [filament usage](https://github.com/nvtkaszpir/3d-print/tree/main/filament-usage)
  but this needs zeroing the weight based on the spool type so you need to know the empty spool weight.
