#!/usr/bin/env bash
#
# cd ~/Library/Application\ Support/xbar/plugins/; ln -s ${GD}/macOS/xbar/futureApp.10s.sh .
#
BASEPATH_42="$HOME/Projects/forty-two"
LOCAL_PROXY_SCRIPT="${BASEPATH_42}/mobile-apps/infrastructure/local-iam-proxy/run.sh"
NGINX_CONF="${BASEPATH_42}/mobile-apps/infrastructure/local-iam-proxy/conf.d/default.conf"
CHOSEN_ENV=$(cat ${NGINX_CONF} | grep "CHOSEN_ENV" | cut -d"=" -f2 | awk '{ print toupper($0)}')
LOCAL_WIRELESS_IP=`ifconfig en0 | grep inet | grep netmask | grep -v 127.0.0.1 | awk '{print $2}'`

echo "${LOCAL_WIRELESS_IP} < / > | color=#0093d1"
echo "---"
echo "🚀 Start fPortal | bash='npmStartFromDir.sh' param1='${BASEPATH_42}/ebanking/portal/frontend/uPortal' terminal=true"
echo "🛡 Start IAM-SPA | bash='npmStartFromDir.sh' param1='${BASEPATH_42}/ebanking/auth/frontend' terminal=true"
echo "🐳 Mobiledev proxy"
for ((n=1;n<=5;n++)); do
	if [[ ${CHOSEN_ENV} ==  "EB${n}" ]]; then  CHECKED="✓"; else CHECKED=""; fi
	echo "-- EB${n} ${CHECKED}| bash='${LOCAL_PROXY_SCRIPT}' param1='-r -env eb${n}' terminal=false"
done
