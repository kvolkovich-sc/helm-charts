#!/usr/bin/env bash

echo "hello!"

while true; do gtimeout 7 docker run -it \
		   -v $PWD:/fluent-bit/etc:delegated \
		   fluent/fluent-bit /fluent-bit/bin/fluent-bit \
		   -c /fluent-bit/etc/fluent-bit.conf \
		   -R /fluent-bit/etc/parsers.conf && echo "===================================="; done;
