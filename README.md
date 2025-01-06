# About

This is a 3d printer enclosure controlling system using esp32 devices using
[esphome](https://esphome.io/) via [HomeAssistant](https://www.home-assistant.io/).

TODO: add image of the LCD controler

## Why

I have a 3d printer with an enclosure in an appartment where it is hard to make
a proper air ventilation to have a constant negative pressure in the 3d enclosure
so that air polluted during printing can be sent outside of an apartment.

This means that I need to use air cleaning setup and also provide a feedback to
the user that it may be not a good idea to open the enclosure if the air quality
inside is not good.

[nervermore-controller](https://github.com/SanaaHamel/nevermore-controller)
was an inspiration(used with
[nevermore mini](https://github.com/nevermore3d/Nevermore_Mini)),
but I already had a setup with HomeAssistant/Node-Red and
esp32 devices all around with esphope and thus I did not feel I want custom firmware
on the device just for air control of the 3d printer enclosure.
[rudd-o](https://rudd-o.com/linux-and-free-software/making-a-smart-enclosure-for-the-original-prusa-mk4)
also did some smart enclosure but it did not fit my needs, but there is a lot of
great things in there to use.

All in all this project was born.

## Scope

- phase 1 - present current status of the air in the enclosure
- phase 2 - control air quality by triggering fans to force air circulation
  through the air filters such as [nevermore3d](https://github.com/nevermore3d) systems

## Requirements

## Phase 1

- [HomeAssistant](https://www.home-assistant.io/)
- esphome compatible boards such as esp32-wrover or newer (esp32 with PSRAM recommended)
- LCD display (recommended with touch) such as [Waveshare 1.69inch touch LCD](https://www.waveshare.com/product/1.69inch-touch-lcd-module.htm)
- temperature / humidity sensor compatible with [AHT10](https://esphome.io/components/sensor/aht10.html)
- air particulate sensor compatible with [PMSX003](https://esphome.io/components/sensor/pmsx003.html)

## Phase 2

- [relay switches](https://devices.esphome.io/devices/Generic-Relay)
  for printer power, fan and light control
- replace relay switches with MOSFET switches for fan and light control to allow
  speed control and brightness adjustments similar as
  rudd-o did it.

## Architecture diagram

TODO: add arcitecture diagram

Generally I have few different esp32 devices with senors connected to HomeAssistant.
Thus another device can fetch objects from HomeAssistant and process/control them.

Example:

- particulate matter sensor and calculating the generic value depending on the factors
  assuming the smaller the particulate the worse air conditions
- temperature and humidity sensors
- on/off power of the printer, lights and fans
- automatic fan on/off if the particulate level is too high + delay for additional ventilation delay

## Code

For local development see[host.yaml](./host.yaml) # TODO: host.yaml has very old code for different display, update it
For real device see [esp32-c-ed97e4.yaml](./esp32-c-ed97e4.yaml)

## Todo

TODO: actuall BOM
TODO: docs redesign for gh-pages
TODO: gh-pages automation
