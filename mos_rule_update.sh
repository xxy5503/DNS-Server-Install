#!/bin/bash

MAX_RETRIES=3
RETRY_INTERVAL=20

declare -A files=(
  [geosite_cn.txt]="https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/direct-list.txt"
  [geoip_cn.txt]="https://raw.githubusercontent.com/Hackl0us/GeoIP2-CN/release/CN-ip-cidr.txt"
  [geosite_geolocation_noncn.txt]="https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/proxy-list.txt"
  [gfw.txt]="https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/gfw.txt"
)

for file in "${!files[@]}"; do
  url="${files[$file]}"
  destination="/DNS/mosdns/$file"
  success=false

  echo "开始下载: $file"

  for ((i=1; i<=MAX_RETRIES; i++)); do
    echo "尝试第 $i 次下载..."
    curl -s -o "$destination" "$url"

    if [ $? -ne 0 ]; then
      echo "下载失败，无法连接"
    else
      if [ ! -s "$destination" ]; then
        echo "下载的文件为空: $destination"
      else
        echo "文件下载成功: $destination"
        success=true
        break
      fi
    fi

    if [ "$i" -lt "$MAX_RETRIES" ]; then
      echo "等待 $RETRY_INTERVAL 秒后重试..."
      sleep "$RETRY_INTERVAL"
    fi
  done

  if [ "$success" = false ]; then
    echo "下载失败，跳过更新: $file"
  fi
done

exit
