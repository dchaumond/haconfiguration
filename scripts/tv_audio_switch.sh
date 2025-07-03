#!/bin/bash

case "$1" in
  on)
    curl --silent -XPOST http://192.168.1.120/sony/audio -H X-Auth-PSK:1234 -d '{"method":"setSoundSettings","params": [{"settings": [{ "value": "audioSystem", "target": "outputTerminal" }]}],"id":10,"version":"1.1"}'
    ;;
  off)
    curl --silent -XPOST http://192.168.1.120/sony/audio -H X-Auth-PSK:1234 -d '{"method":"setSoundSettings","params": [{"settings": [{ "value": "speaker", "target": "outputTerminal" }]}],"id":10,"version":"1.1"}'
    ;;
  *)
    echo "Usage: $0 {on|off}"
    exit 1
    ;;
esac

exit 0
