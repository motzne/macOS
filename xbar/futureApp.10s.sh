#!/usr/bin/env bash
#
# cd ~/Library/Application\ Support/xbar/plugins/; ln -s ${GD}/macOS/xbar/futureApp.10s.sh .
#
BASEPATH_42="$HOME/Projects/forty-two"
LOCAL_PROXY_SCRIPT="${BASEPATH_42}/mobile-apps/infrastructure/local-iam-proxy/run.sh"
NGINX_CONF="${BASEPATH_42}/mobile-apps/infrastructure/local-iam-proxy/conf.d/default.conf"
CHOSEN_ENV=$(cat ${NGINX_CONF} | grep "CHOSEN_ENV" | cut -d"=" -f2 | awk '{ print toupper($0)}')
LOCAL_WIRELESS_IP=`ifconfig en0 | grep inet | grep netmask | grep -v 127.0.0.1 | awk '{print $2}'`

#echo "${LOCAL_WIRELESS_IP} < / > | color=#0093d1"
echo " | image=iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAYAAACNiR0NAAAAAXNSR0IArs4c6QAAAERlWElmTU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAA6ABAAMAAAABAAEAAKACAAQAAAABAAAAFKADAAQAAAABAAAAFAAAAACy3fD9AAACs0lEQVQ4EV2US0hUURyHvVqGaQ/ToKchVrQobFFErVSIFhFURquIVkGIRCsXtjHa1iaqVTCLthLRsggloowgsJKChIaMnpqIZaLO9H1n7rnM9Idvzv91fuece+6dpKrMisViYpgkSdGReBvDZmgCa5PwmfpHRusV/eZCIhbLhPaR64IayMMUaOugBVxwiP4RRoWr8Qv6QdCVFLNA7gI0wyAotAdCM6P1t7AaToH128xdiqLV/4n10/CbhgF4g78dTsIMTEM37KQ2BlfSXD8aNcQFtbLnQNAD52gKhu9iNXARGqAR+sCcx4mnO4Pf6yRznp2xuJ+4CT8XC64IS8SzsAmOQa05iJeGm9wlvwaNg+Z9JloHPNCh4PbDBGPMnkWYg+wS054Y36fWAVUey1uro+GVCUZ3VW6KK1qXjlmN3tLNJslrk2i12bgRvqWJuKJhNHN/wNv1+BWGSJzjjW9R0JfWQAvF2MRYT24t/IJRWCDnTrPLxI2Ck/j1Cpoof2aEWdNR/FGONgcL+F/hLGhRqBSVfhMFVfYL0NhA6a1nPE18Hqbx2+ESfh9cx+/2+TE6P27Gk84u4+cLHAaNvtDYiX8HGqAV1sNjcNJKyCE2Q+/DMtFG8hO+h3mceQp7UzH/DG6BYoPwHD7Be1D0EVi7yZyWdM5uYrXG3bI2BMd1sEOwC+bhCfg4nkEX+NzMecwdcAS0EzCsE7/lF/hTrOhzG4HvsAKugf84LqyAr9gAKOybMcwcN+L3/xQ/fHf42T/NZYrvYAy8zQOwAf7CKlAoDy8hBy7SDlfRWAyCBF5t+D9jdDc9UAv3aBontzyN/YIW04mt+B7To99Ic0HDFYNFUQN8n2MnFOAn/AB7veVm8O0YRsjnmW1IPxNMCyGmMbxbCLeR3wrequanN0H9gwH1in5z/wB+RmmisTtFcwAAAABJRU5ErkJggg=="
echo "---"
echo "${LOCAL_WIRELESS_IP} | color=#0093d1"
echo "🚀 Start fPortal | bash='npmStartFromDir.sh' param1='${BASEPATH_42}/ebanking/portal/frontend/uPortal' terminal=true"
echo "🛡 Start IAM-SPA | bash='npmStartFromDir.sh' param1='${BASEPATH_42}/ebanking/auth/frontend' terminal=true"
echo "🐳 Mobiledev proxy"
for ((n=1;n<=5;n++)); do
	if [[ ${CHOSEN_ENV} ==  "EB${n}" ]]; then  CHECKED="✓"; else CHECKED=""; fi
	echo "-- EB${n} ${CHECKED}| bash='${LOCAL_PROXY_SCRIPT}' param1='-r -env eb${n}' terminal=false"
done
