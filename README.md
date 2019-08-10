# MITM Adblock

An adblocker that runs as a proxy server! (And works on HTTPS connections.)

Use this to block ads on your mobile device, or just monitor its traffic.

## Installation
<code language="bash">docker run --restart=unless-stopped \
-d \
--name mitm \
-p 8118:8118 \
-v ${pwd}/config:/root/.mitmproxy\
 andrasfindt/mitm-adblock</code>

If you'd like to change any of the mitmproxy settings (like port, and where/whether it logs your connections), edit the `go` script.

