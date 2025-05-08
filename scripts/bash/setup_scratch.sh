#!/bin/bash
sf org create scratch --definition-file config/project-scratch-def.json --alias MyScratchOrg --set-default 

sf package install --package 04tHn000001BK1p -w 20

sf project deploy start

sf apex run test

sf org open