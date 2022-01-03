#!/bin/bash

# To copy all the root files to your laptop, do
if [ -z $1 ]; then
    echo "==================================================="
    echo " Script to download Fireworks exercise root files."
    echo "==================================================="
    echo "Usage:"
    echo "   $0 LPCUSERNAME"
    echo ""
    exit
fi
export LPCUSERNAME=${1}
#PRINCIPAL=$(klist | grep Principal | grep FNAL.GOV)
#while [ -z "${PRINCIPAL}" ]; do
#    echo "No kerberos ticket found!"
#    echo "Running kinit..."
#    kinit ${LPCUSERNAME}@FNAL.GOV
#    PRINCIPAL=$(klist | grep Principal | grep FNAL.GOV)
#done
## PRINCIPAL=$(klist | grep Principal | grep FNAL.GOV)
mkdir -p rootfiles
scp ${LPCUSERNAME}@cmslpc-sl7.fnal.gov:"/eos/uscms/store/user/cmsdas/2020/short_exercises/Visualization/dy.root" rootfiles/
scp ${LPCUSERNAME}@cmslpc-sl7.fnal.gov:"/eos/uscms/store/user/cmsdas/2020/short_exercises/Visualization/ggh4l.root" rootfiles/
scp ${LPCUSERNAME}@cmslpc-sl7.fnal.gov:"/eos/uscms/store/user/cmsdas/2020/short_exercises/Visualization/ttjets.root" rootfiles/
scp ${LPCUSERNAME}@cmslpc-sl7.fnal.gov:"/eos/uscms/store/user/cmsdas/2020/short_exercises/Visualization/data_*.root" rootfiles/
scp ${LPCUSERNAME}@cmslpc-sl7.fnal.gov:"/eos/uscms/store/user/cmsdas/2020/short_exercises/Visualization/BadEvents_Run2016*" rootfiles/
