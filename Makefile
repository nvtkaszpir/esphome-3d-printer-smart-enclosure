help:
	@grep -E '(^[0-9a-zA-Z_-]+:.*?##.*$$)|(^##)' Makefile | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}' | sed -e 's/\[32m##/[33m/'

host: ## run on the laptop via host.yaml
	esphome run host.yaml

esp32-c-ed97e4: ## upload to esp32-c-ed97e4
	esphome run esp32-c-ed97e4.yaml

wrover: ## upload to esp32-wrover-044f30
	esphome run esp32-wrover-044f30.lcd.yaml
