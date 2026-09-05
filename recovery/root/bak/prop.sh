#!/system/bin/sh
# YUE~
sleep 0.1
rm -f /prop.default
cp /bak/prop.default /
sleep 0.3
chown 0:0 /prop.default
chmod 644 /prop.default
sleep 0.3
ls -a /prop.default > /tmp/prop.log
cat /prop.default > /tmp/propfile.log
resetprop ro.secure 0
resetprop ro.adb.secure 0
resetprop ro.debuggable 1