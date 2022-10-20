library(ggmap)
library(maptools)
library(rgdal)


MCW_pts <- read.csv("MCW_PC_Points.csv")

coordinates(MCW_pts)<-c("Longitude","Latitude")          #Build a SpatialPointsData Frame
proj4string(MCW_pts)<-CRS("+proj=longlat +datum=WGS84")

writeOGR(MCW_pts, dsn="MCW_pts.kml", layer= "MCW_pts", driver="KML")