echo "execute sing-box"
cd /data/local/tmp/sfb && nohup ./sing-box run -c $1 --disable-color >/dev/null 2>&1 &
echo "set http proxy"
settings put global http_proxy 127.0.0.1:2080
