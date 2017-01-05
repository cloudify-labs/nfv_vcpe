# nfv_vcpe

#Configure Openvpn

Download base on the client.ovpn configuration, and place replace [lab ip] with ip of the lab found at outputs
Please not that port 1111 shoulb be open in te firewall

Before connecting to the vpn search "what is my ip", show the IP address

Connect to vpn 

# Run the Demo

Show the results of "what is my ip", see that it has changed to the ip of the lab.

Explain that all traffic is now forwarded thrue the vcpe nfv

Browse to any non ssl website, show it lods

In new tab type the url of the server with "bush" in the path, show that the site will not laod.

Dispable filtering

Open cloudify manager, go to the deploymnet, click run workflow, select the run operation.
In the node fill "filter" in the operation fill "cloudify.interfaces.lifecycle.stop"
wait for the workflow to finish.

refresh the URL containing the word "bush", show that the RUL now loads

enable the fileter agaiun by executing the operation with value "cloudify.interfaces.lifecycle.start"

show thet the URL is again un avalable


Michael Shnizer
Gigaspaces, Cloudify 2017

