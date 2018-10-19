#!/bin/sh

if [ -f /config/settings.conf ]; then
    TEST_BASEPATH=$(jq .BASEPATH /config/settings.conf)
    echo "[syter/hass-configurator] Home Assistant config directory set to $TEST_BASEPATH in /config/settings.conf..."
        if [ "$TEST_BASEPATH" = "\"/hass-config\"" ]; then
            echo "[syter/hass-configurator] Home Assistant config directory OK."
        else
            echo "[syter/hass-configurator] Home Assistant config directory must be set to \"/hass-config\"... setting automatically."
            mv /config/settings.conf /config/settings.conf.bak
            jq '.BASEPATH = "/hass-config"' /config/settings.conf.bak > /config/settings.conf
        fi
else
    echo "[syter/hass-configurator] No existing config file found... creating automatically."
    jq '.BASEPATH = "/hass-config"' /hass-configurator/settings.conf > /config/settings.conf
fi

echo "[syter/hass-configurator] Starting HASS Configurator..."
python3 /hass-configurator/configurator.py /config/settings.conf