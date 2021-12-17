#!/bin/bash
echo "year,label,description,lon,lat,alt,name,uri" > dataone-nodes.csv
#cat nodelist.xml | xml sel -T -t \
curl -s "https://cn.dataone.org/cn/v2/node" | xml sel -T -t \
 -m "//node[(property/@key='CN_operational_status' and property='operational' or property='replicator') and identifier!='urn:node:CN']" \
 -v "substring(property[@key='CN_date_operational'],1,4)" -o ",\"" \
 -v "property[@key='CN_node_name']" -o "\",\"" \
 -v "normalize-space(description)" -o "\"," \
 -v "property[@key='CN_location_lonlat']" -o ",0," \
 -v identifier -o "," \
 -v "property[@key='CN_logo_url']" -n \
>> dataone-nodes.csv
