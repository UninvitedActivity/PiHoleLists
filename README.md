I'm planning to host, here, copies of PiHole-compatible lists that I use on my few PiHole instances.

The reason for this is that I want to update a couple of my PiHole lists (specifically the NRDs - Newly Registered Domains) on a daily basis but PiHole is setup by default to only update from the lists once a week in order to be a good Internet citizen ond not flood the kind hosts of these lists on a daily basic.

As such, my plan is:
1. Replicate the lists here, and update them weekly
2. Point my PiHole to the lists hosted here
3. Add a cron job that 'updates gravity' on the PiHoles on a daily basis (soon after my daily NRD lists have updated).

Currently my NRD lists are stored within my "Uninvited Activity" repository, which was created for IP Address, Network Range, and AS blocking, not DNS. So the plan is to separate out DNS blocking to its own repository.

A by-product of 'centralising' my PiHole lists is that it'll be easier to remember them all.

FYI, below is my current set of PiHole DNS block lists. Be warned, there are over 9.5 million domain names blocked, almost all of which come from two lists, the bottom two: My NRD list (~4.35 million) and the Firebog Prigent-Adult list (~4.64 million):
- https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts
- https://v.firebog.net/hosts/Easyprivacy.txt
- https://v.firebog.net/hosts/Easylist.txt
- https://v.firebog.net/hosts/AdguardDNS.txt
- https://gitlab.com/quidsup/notrack-blocklists/raw/master/notrack-malware.txt
- https://zerodot1.gitlab.io/CoinBlockerLists/list.txt
- https://zerodot1.gitlab.io/CoinBlockerLists/list_browser.txt
- https://zerodot1.gitlab.io/CoinBlockerLists/list_optional.txt
- https://raw.githubusercontent.com/crazy-max/WindowsSpyBlocker/master/data/hosts/spy.txt
- https://raw.githubusercontent.com/anudeepND/blacklist/master/adservers.txt
- https://raw.githubusercontent.com/bigdargon/hostsVN/master/hosts
- https://v.firebog.net/hosts/static/w3kbl.txt
- https://v.firebog.net/hosts/Prigent-Crypto.txt
- https://hostfiles.frogeye.fr/firstparty-trackers-hosts.txt
- https://osint.digitalside.it/Threat-Intel/lists/latestdomains.txt
- https://bitbucket.org/ethanr/dns-blacklists/raw/8575c9f96e5b4a1308f2f12394abd86d0927a4a0/bad_lists/Mandiant_APT1_Report_Appendix_D.txt
- https://phishing.army/download/phishing_army_blocklist_extended.txt
- https://zerodot1.gitlab.io/CoinBlockerLists/hosts_browser
- https://threatfox.abuse.ch/downloads/hostfile
- https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-only/hosts
- https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/gambling-only/hosts
- https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/social-only/hosts
- https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/porn-only/hosts
- https://v.firebog.net/hosts/Prigent-Adult.txt
- https://github.com/UninvitedActivity/UninvitedActivity/raw/refs/heads/main/11_NewlyRegisteredDomains/NRD-05_6month.nrd

Test....
