# About

This is a 3d printer enclosure controlling system using esp32 devices using
[esphome](https://esphome.io/) via [HomeAssistant](https://www.home-assistant.io/).

![preview](./docs/static/lcd_display-fs8.png)

## Docs

See [here](https://nvtkaszpir.github.io/esphome-3d-printer-smart-enclosure).

## Code

- Most of the code is in [include.lcd-touch.yaml](./include.lcd-touch.yaml), which is
then included in other files, and there some sections are overriden and/or extended.

- For local development see [host.yaml](./host.yaml)
- For real device see [esp32-c-ed97e4.yaml](./esp32-c-ed97e4.yaml)

make sure to have esphome installed locally to be able to compile and upload it.

```shell
pip3 install -r requirements.txt

make host
make esp32-c-ed97e4
```

## Development

Those are generally notes to myself :)

### Build esphome

```shell
pyenv vitualenv esphome
pyenv activate esphome
pip install -r requirements.txt

make host # run locally via SDL
make esp32-c-ed97e4 # deploys to device
```

### Build Docs

Preview documentation locally

```shell
pip install -r requirements-docs.txt
mkdocs serve

```

Auto-published by github action when pushed to master.

### Code commits

ensure to have [pre-commit](https://pre-commit.com/) installed.

```shell
npm install -g markdown-link-check
pip install pre-commit

pip install -r requirements.txt
pip install -r requirements-docs.txt
pre-commit install
git add .
pre-commit run --all
```
