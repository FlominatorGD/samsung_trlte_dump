#!/bin/bash

cat system/priv-app/SecSettings/SecSettings.apk.* 2>/dev/null >> system/priv-app/SecSettings/SecSettings.apk
rm -f system/priv-app/SecSettings/SecSettings.apk.* 2>/dev/null
cat system/framework/arm/boot.oat.* 2>/dev/null >> system/framework/arm/boot.oat
rm -f system/framework/arm/boot.oat.* 2>/dev/null
cat system/app/Chrome/Chrome.apk.* 2>/dev/null >> system/app/Chrome/Chrome.apk
rm -f system/app/Chrome/Chrome.apk.* 2>/dev/null
