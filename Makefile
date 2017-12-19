#!/usr/bin/env make

test:
	@id > /tmp/test
	@juju bootstrap localhost
	@juju deploy ubuntu
	@juju kill-controller -y -t 2m localhost-localhost
