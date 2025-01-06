# Architecture

Well, for now this is more kind of a mind map anyway :D

```mermaid
mindmap
  root[HomeAssistant]

    esp32-dev-alpha
      (send data about temperature/humidity)
      (send data about particulate)
      (send data about smoke alarm trigger)

    esp32-dev-beta
      (relay control fan)
      (relay control leds)

    esp32-dev-charlie
      (get pictures of the print bed)
      (take picture magnetic button)
      (printer is printing led)
      (picture taken led)

    esp32-dev-delta
      (gather data about spool weight)

    esp32-dev-echo
      (display data on the LCD)
      (use touch display to control relays via esp32-dev-beta)

```

Generally I have few different esp32 devices with senors connected to HomeAssistant.
Thus another device can fetch objects from HomeAssistant and process/control them.

Example:

- particulate matter sensor and calculating the generic value depending on the factors
  assuming the smaller the particulate the worse air conditions
- temperature and humidity sensors
- on/off power of the printer, lights and fans
- automatic fan on/off if the particulate level is too high + delay for additional ventilation delay

TODO: decrease number of esp32 devices :D
