#!/bin/bash

# Token Code provided by the Customer during the Wizard configuration
metaTokenCode=$1

# Initiating Onboarding Process
sudo -u mpadmin -i metaport onboard $metaTokenCode > metaport_onboard.txt