echo "mkdir sing-box"
mkdir /sdcard/sing-box
cd /sdcard/sing-box

echo "download sing-box binary"
curl -LO https://github.com/SagerNet/sing-box/releases/download/v1.3.5/sing-box-1.3.5-android-arm64.tar.gz

echo "unzip sing-box.tar.gz"
tar -xf sing-box-1.3.5-android-arm64.tar.gz

echo "rename folder to sfb"
mv sing-box-1.3.5-android-arm64 sfb

echo "download shell script to sfb folder"
cd /sdcard/sing-box/sfb
curl -LO https://raw.githubusercontent.com/iyarivky/sfb/main/re-install.sh
curl -LO https://raw.githubusercontent.com/iyarivky/sfb/main/start.sh
curl -LO https://raw.githubusercontent.com/iyarivky/sfb/main/stop.sh
curl -LO https://raw.githubusercontent.com/iyarivky/sfb/main/install.sh

echo "copy sfb folder to /data/local/tmp"
cp /sdcard/sing-box/sfb /data/local/tmp

echo "chmod sing-box"
chmod +x /data/local/tmp/sfb/sing-box

echo "done"
