#!/bin/bash
# Reference:
# https://hyperledger-fabric.readthedocs.io/en/latest/install.html
# If needed, clone the hyperledger/fabric-samples repository
# Checkout the appropriate version tag

#If you want the latest production release, omit all version identifiers.
curl -sSL https://bit.ly/2ysbOFE | bash -s

# You may want to add that to your PATH environment variable so that these can be picked up without fully qualifying the path to each binary. e.g.:

export PATH=<path to download location>/bin:$PATH

# Binaries:
    # configtxgen,
    # configtxlator,
    # cryptogen,
    # discover,
    # idemixgen
    # orderer,
    # peer,
    # fabric-ca-client

