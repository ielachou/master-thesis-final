This repository will store all the necessary code to import/export for mobility data exchange standards with MobilityDB.

This work is the result of the research for my master thesis that can be found [here](Master_thesis_Iliass_Public_Transports.pdf).

## Requirements

- MobilityDB 1.1
- Other requirements depending on the standard

## Public Transport Standards

A wide range of mobility standards exist, enabling the exchange of timetables and information on the topology of public transport networks.
These include the well-known GTFS Static and Realtime, as well as more local standards such as NeTEx and SIRI in Europe.

This repository first explains how to import these types of data into MobilityDB (refer to the READMEs available in the corresponding folders). This is followed by a Use Cases section which shows what uses can be made of this data using MobilityDB.

## Use Cases

The following are some examples of the Use Cases we have developed.

### Dynamic Visualisation of Delays by Line
Using a dynamic visualisation tool for MobilityDB like MOVE on QGIS allows to watch the different public transports runs. The following visualisation shows the journey of a realtime catched train, and its theoretical trip extracted from the GTFS Static feed. In blue the theoretical train, and in red the train catched in realtime.

![](GTFS%20Realtime/img/new%20york%20lirr%20run.gif)

### Compute Static and Realtime Arrival and Departure Times

This query compute the arrival and departure times at each stop for a given trip. The potential delays can be therefore estimated.

![](Use%20Cases/img/arrival-departures.png)