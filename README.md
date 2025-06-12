I'm planning to host, here, copies of PiHole-compatible lists that I use on my few PiHole instances.

The reason for this is that I want to update a couple of my PiHole lists (specifically the NRDs - Newly Registered Domains) on a daily basis but PiHole is setup by default to only update from the lists once a week in order to be a good Internet citizen ond not flood the kind hosts of these lists on a daily basic.

As such, my plan is:
1. Replicate the lists here, and update them weekly
2. Point my PiHole to the lists hosted here
3. Add a cron job that 'updates gravity' on the PiHoles on a daily basis (soon after my daily NRD lists have updated).

Currently my NRD lists are stored within my "Uninvited Activity" repository, which was created for IP Address, Network Range, and AS blocking, not DNS. So the plan is to separate out DNS blocking to its own repository.
