help:
	@grep -E '(^[0-9a-zA-Z_-]+:.*?##.*$$)|(^##)' Makefile | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}' | sed -e 's/\[32m##/[33m/'

.PHONY: docs
docs:
	mkdocs serve

.PHONY: git_version
git_version: ## generate git version string
	echo -n "\"Build: " >.git_version
	git describe --match=NeVeRmAtCh --always --dirty >> .git_version
	echo "\"" >> .git_version

host: git_version ## run on the laptop via host.yaml
	esphome run host.yaml

esp32-c-ed97e4: git_version ## upload to esp32-c-ed97e4
	esphome run esp32-c-ed97e4.yaml

wrover: git_version ## upload to esp32-wrover-044f30
	esphome run esp32-wrover-044f30.lcd.yaml

devices: git_version ## upload to devices
	esphome run --no-logs esp32-c-ed97e4.yaml
	esphome run --no-logs esp32-wrover-044f30.lcd.yaml
