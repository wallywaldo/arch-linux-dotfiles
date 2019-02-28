#!/bin/bash

for i in "$@"
do
case $i in
    -g=*|--genus=*)
    GENUS="${i#*=}"
    shift		 # past argument=value
    ;;
    -s=*|--species=*)
    SPECIES="${i#*=}"
    shift		 # past argument=value
    ;;
    -p=*|--pos=*)
    POSITION="${i#*=}"
    shift		 # past argument=value
    ;;
#   -s=*|--species=*)
#   SPECIES="${i#*=}"
#   shift		 # past argument=value
#   ;;
esac
done

# Append query/s to search url
URL="www.antweb.org/images.do?genus=${GENUS}&species=${SPECIES}&rank=species&project=allantwebants&caste=normal"
echo "   GENUS        =  =        ${GENUS}"
echo " SPECIES        =  =        ${SPECIES}"
echo "POSITION        =  =        ${POSITION}"
echo "	   URL        =  =        ${URL}"


# command to pull image urls
mkdir ~/ant-data/${GENUS} || cd ~/ant-data/${GENUS} && cd ~/ant-data/${GENUS} && wget $(curl -s "${URL}" | grep "_${POSITION}_1_" | awk -F'src=' '{print$2}' | awk -F'//' '{print$2}' | awk -F'" ' '{print$1}')

# curl https://www.antweb.org/images.do?genus=paratrechina | grep thumbview.jpg | awk -F'" ' '{print$2}' | awk -F'src="' '{print$2}' | grep "_p_"
# { mkdir "$@" && cd "$@" && wget  $(curl -s https://www.antweb.org/images.do?genus="$@" | grep thumbview.jpg | awk -F'" ' '{print$2}' | awk -F'src="' '{print$2}' | grep "_p_")
