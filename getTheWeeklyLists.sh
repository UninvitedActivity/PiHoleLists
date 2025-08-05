
#!/bin/sh

cd PiHoleLists/3rdPartyLists

wget --tries=1 --timeout=3 -O AA_hosts.txt			https://adaway.org/hosts.txt
wget --tries=1 --timeout=3 -O anudeepND_adservers.txt		https://raw.githubusercontent.com/anudeepND/blacklist/master/adservers.txt
wget --tries=1 --timeout=3 -O AssoEchap_hosts			https://raw.githubusercontent.com/AssoEchap/stalkerware-indicators/master/generated/hosts
wget --tries=1 --timeout=3 -O bigdargon_hosts			https://raw.githubusercontent.com/bigdargon/hostsVN/master/hosts
wget --tries=1 --timeout=3 -O crazy-max_spy.txt			https://raw.githubusercontent.com/crazy-max/WindowsSpyBlocker/master/data/hosts/spy.txt
wget --tries=1 --timeout=3 -O cyberhost_malware.txt		https://lists.cyberhost.uk/malware.txt
wget --tries=1 --timeout=3 -O DS_AntiMalwareHosts.txt		https://raw.githubusercontent.com/DandelionSprout/adfilt/master/Alternate%20versions%20Anti-Malware%20List/AntiMalwareHosts.txt	
wget --tries=1 --timeout=3 -O ethanr_Mandiant_APT1_RAD.txt	https://bitbucket.org/ethanr/dns-blacklists/raw/8575c9f96e5b4a1308f2f12394abd86d0927a4a0/bad_lists/Mandiant_APT1_Report_Appendix_D.txt
wget --tries=1 --timeout=3 -O FB_AdguardDNS.txt			https://v.firebog.net/hosts/AdguardDNS.txt
wget --tries=1 --timeout=3 -O FB_Admiral.txt			https://v.firebog.net/hosts/Admiral.txt
wget --tries=1 --timeout=3 -O FB_Easylist.txt			https://v.firebog.net/hosts/Easylist.txt
wget --tries=1 --timeout=3 -O FB_Easyprivacy.txt		https://v.firebog.net/hosts/Easyprivacy.txt
wget --tries=1 --timeout=3 -O FB_Prigent-Ads.txt		https://v.firebog.net/hosts/Prigent-Ads.txt
wget --tries=1 --timeout=3 -O FB_Prigent-Adult.lfs		https://v.firebog.net/hosts/Prigent-Adult.txt
wget --tries=1 --timeout=3 -O FB_Prigent-Crypto.txt		https://v.firebog.net/hosts/Prigent-Crypto.txt
wget --tries=1 --timeout=3 -O FB_w3kbl.txt			https://v.firebog.net/hosts/static/w3kbl.txt
wget --tries=1 --timeout=3 -O FB_RPiList-Malware.txt		https://v.firebog.net/hosts/RPiList-Malware.txt
wget --tries=1 --timeout=3 -O FE_firstparty-trackers-hosts.txt	https://hostfiles.frogeye.fr/firstparty-trackers-hosts.txt
wget --tries=1 --timeout=3 -O FM_UncheckyAds_hosts		https://raw.githubusercontent.com/FadeMind/hosts.extras/master/add.Spam/hosts
wget --tries=1 --timeout=3 -O FM_2o7Net_hosts			https://raw.githubusercontent.com/FadeMind/hosts.extras/master/add.2o7Net/hosts	
wget --tries=1 --timeout=3 -O FM_Risk_hosts			https://raw.githubusercontent.com/FadeMind/hosts.extras/master/add.Risk/hosts
wget --tries=1 --timeout=3 -O PA_blocklist_extended.txt		https://phishing.army/download/phishing_army_blocklist_extended.txt
wget --tries=1 --timeout=3 -O PFT_KADhosts.txt			https://raw.githubusercontent.com/PolishFiltersTeam/KADhosts/master/KADhosts.txt
wget --tries=1 --timeout=3 -O PGLY_adservers			https://pgl.yoyo.org/adservers/serverlist.php?hostformat=hosts&showintro=0&mimetype=plaintext	
wget --tries=1 --timeout=3 -O quidsup_notrack-malware.txt	https://gitlab.com/quidsup/notrack-blocklists/raw/master/notrack-malware.txt
wget --tries=1 --timeout=3 -O SB_fakenews-only_hosts		https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-only/hosts
wget --tries=1 --timeout=3 -O SB_gambling-only_hosts		https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/gambling-only/hosts
wget --tries=1 --timeout=3 -O SB_hosts				https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts
wget --tries=1 --timeout=3 -O SB_porn-only_hosts		https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/porn-only/hosts
wget --tries=1 --timeout=3 -O SB_social-only_hosts		https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/social-only/hosts
wget --tries=1 --timeout=3 -O Spam404_main-blakclist.txt	https://raw.githubusercontent.com/Spam404/lists/master/main-blacklist.txt
wget --tries=1 --timeout=3 -O TF_hostfile			https://threatfox.abuse.ch/downloads/hostfile
wget --tries=1 --timeout=3 -O urlhaus_abuse_hostfile		https://urlhaus.abuse.ch/downloads/hostfile

# Defunct Lists / Graveyard

# wget --tries=1 --timeout=3 -O DS_latestdomains.txt		https://osint.digitalside.it/Threat-Intel/lists/latestdomains.txt
# wget --tries=1 --timeout=3 -O ZD_CBL_hosts_browser            https://zerodot1.gitlab.io/CoinBlockerLists/hosts_browser
# wget --tries=1 --timeout=3 -O ZD_CBL_list_browser.txt         https://zerodot1.gitlab.io/CoinBlockerLists/list_browser.txt
# wget --tries=1 --timeout=3 -O ZD_CBL_list_optional.txt        https://zerodot1.gitlab.io/CoinBlockerLists/list_optional.txt
# wget --tries=1 --timeout=3 -O ZD_CBL_list.txt                 https://zerodot1.gitlab.io/CoinBlockerLists/list.txt

# Do the stuff for pushing to github

git add *
git commit -m "Weekly update: `date +%Y-%m-%d`"
git push 

# Backup the lists and script to the parent directory

/usr/bin/cp * ../../3rdPartyLists/

cd ../..
/usr/bin/cp getTheWeeklyLists.sh PiHoleLists/
