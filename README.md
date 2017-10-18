# DataONE Repository Maps

- __Author__: Matthew B. Jones
- __Created__: 2017-10-17
- __View Maps__: https://dataoneorg.github.io/dataone-repo-map/dataone-repo-map.html

R scripts and location data for generating maps of 
[DataONE repositories](https://www.dataone.org/current-member-nodes).
Location data are found in the dataone-nodes.csv file in the main directory, and 
the `dataone-repo-map.Rmd` can be run to generate maps using Leaflet.js to
display maps of the
[DataONE Member Nodes and Coordinating nodes](https://dataoneorg.github.io/dataone-repo-map/dataone-repo-map.html).

## Customization

Maps are generated using the [Leaflet](https://rstudio.github.io/leaflet/) package
for R, which in turn generates maps using the `leaflet.js` library. Leaflet is
rapidly customizable, and has a lot of options.  See the documentation, but note
in particular that changing the Base map is particularly easy with the
`addProviderTiles()` function, which lets you choose from any of the 
[leaflet providers](http://leaflet-extras.github.io/leaflet-providers/preview/index.html) 
basemaps.  While we are using the `Stamen.Watercolor` tile set for a particular 
presentation, more maps can be seen with the `Thunderforest.OpenCycleMap`, 
`OpenTopoMap`, and `Stamen.TerrainBackground` tile sets, among others.
