# Why

I have a 3d printer with an enclosure in an appartment where it is hard to make
a proper air ventilation to have a constant negative pressure in the 3d enclosure
so that air polluted during printing can be sent outside of an apartment.

This means that I need to use air cleaning setup and also provide a feedback to
the user that it may be not a good idea to open the enclosure if the air quality
inside is not good.

- [nervermore-controller](https://github.com/SanaaHamel/nevermore-controller)
was an inspiration(used with [nevermore mini](https://github.com/nevermore3d/Nevermore_Mini)),
but I already had a setup with HomeAssistant/Node-Red and
esp32 devices all around with ESPHome and thus I did not feel I want custom firmware
on the device just for air control of the 3d printer enclosure.

- [Rudd-O blog](https://rudd-o.com/linux-and-free-software/making-a-smart-enclosure-for-the-original-prusa-mk4)
and related [Rudd-O/prusa-mk4-smart-enclosure](https://github.com/Rudd-O/prusa-mk4-smart-enclosure)
also did some smart enclosure but it did not fit my needs, but there is a lot of
great things in there to use.

- [tuct/smart-control-for-prusa-enclosure](https://github.com/tuct/smart-control-for-prusa-enclosure/)
also looks interesting as a source of automation etc.

All in all this project was born.
