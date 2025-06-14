I'm planning to host, here, copies of PiHole-compatible lists that I use on my few PiHole instances.

The reason for this is that I want to update a couple of my PiHole lists (specifically the NRDs - Newly Registered Domains) on a daily basis but PiHole is setup by default to only update from the lists once a week in order to be a good Internet citizen ond not flood the kind hosts of these lists on a daily basic.

As such, my plan is:
1. Replicate the lists here, and update them weekly
2. Point my PiHole to the lists hosted here
3. Add a cron job that 'updates gravity' on the PiHoles on a daily basis (soon after my daily NRD lists have updated).

Currently my NRD lists are stored within my "Uninvited Activity" repository, which was created for IP Address, Network Range, and AS blocking, not DNS. So the plan is to separate out DNS blocking to its own repository.

A by-product of 'centralising' my PiHole lists is that it'll be easier to remember them all.

FYI, below is my current set of PiHole DNS block lists. Be warned, there are over 9.5 million domain names blocked, almost all of which come from two lists, the bottom two: My NRD list (~4.35 million) and the Firebog Prigent-Adult list (~4.64 million):

- https://adaway.org/hosts.txt
- https://raw.githubusercontent.com/anudeepND/blacklist/master/adservers.txt
- https://raw.githubusercontent.com/AssoEchap/stalkerware-indicators/master/generated/hosts
- https://raw.githubusercontent.com/bigdargon/hostsVN/master/hosts
- https://raw.githubusercontent.com/crazy-max/WindowsSpyBlocker/master/data/hosts/spy.txt
- https://lists.cyberhost.uk/malware.txt
- https://raw.githubusercontent.com/DandelionSprout/adfilt/master/Alternate%20versions%20Anti-Malware%20List/AntiMalwareHosts.txt
- https://bitbucket.org/ethanr/dns-blacklists/raw/8575c9f96e5b4a1308f2f12394abd86d0927a4a0/bad_lists/Mandiant_APT1_Report_Appendix_D.txt
- https://v.firebog.net/hosts/AdguardDNS.txt
- https://v.firebog.net/hosts/Admiral.txt
- https://v.firebog.net/hosts/Easylist.txt
- https://v.firebog.net/hosts/Easyprivacy.txt
- https://v.firebog.net/hosts/Prigent-Ads.txt
- https://v.firebog.net/hosts/Prigent-Adult.txt
- https://v.firebog.net/hosts/Prigent-Crypto.txt
- https://v.firebog.net/hosts/static/w3kbl.txt
- https://v.firebog.net/hosts/RPiList-Malware.txt
- https://hostfiles.frogeye.fr/firstparty-trackers-hosts.txt
- https://raw.githubusercontent.com/FadeMind/hosts.extras/master/add.Spam/hosts
- https://raw.githubusercontent.com/FadeMind/hosts.extras/master/add.2o7Net/hosts
- https://raw.githubusercontent.com/FadeMind/hosts.extras/master/add.Risk/hosts
- https://phishing.army/download/phishing_army_blocklist_extended.txt
- https://raw.githubusercontent.com/PolishFiltersTeam/KADhosts/master/KADhosts.txt
- https://pgl.yoyo.org/adservers/serverlist.php?hostformat=hosts&showintro=0&mimetype=plaintext
- https://gitlab.com/quidsup/notrack-blocklists/raw/master/notrack-malware.txt
- https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-only/hosts
- https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/gambling-only/hosts
- https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts
- https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/porn-only/hosts
- https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/social-only/hosts
- https://raw.githubusercontent.com/Spam404/lists/master/main-blacklist.txt
- https://threatfox.abuse.ch/downloads/hostfile
- https://urlhaus.abuse.ch/downloads/hostfile

These are sourced (almost?) entirely from Wally3K's great Firebog block list site: - https://firebog.net/
