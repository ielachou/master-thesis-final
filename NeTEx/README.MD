# NeTEx


To import NeTEx data in MobilityDB, we apply an extra step allowing us to convert it to GTFS. 
Currently, only NeTEx feeds with the [nordic specification](https://enturas.atlassian.net/wiki/spaces/PUBLIC/pages/728891481/Nordic+NeTEx+Profile)

## Requirements
- [netex-gtfs-converter-java](https://github.com/entur/netex-gtfs-converter-java)

## User guide

The first step is to use NeTEx GTFS Converter to convert the feed into a GTFS feed.
Then, simply follow the steps for [GTFS](../GTFS%20Static/).

Following image represents the [Ruter](https://ruter.no/en/) NeTEx feed visualised with QGIS.

![oslo ruter](img/oslo%20ruter%20netex.png)

