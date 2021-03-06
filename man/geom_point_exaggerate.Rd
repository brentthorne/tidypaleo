% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ggstrat-geoms.R
\name{geom_point_exaggerate}
\alias{geom_point_exaggerate}
\alias{geom_line_exaggerate}
\alias{geom_lineh_exaggerate}
\alias{geom_area_exaggerate}
\alias{geom_areah_exaggerate}
\title{Exaggerated geometries that do not train scales}
\usage{
geom_point_exaggerate(mapping = NULL, data = NULL, stat = "identity",
  position = "identity", ..., exaggerate_x = 1, exaggerate_y = 1,
  na.rm = FALSE, show.legend = NA, inherit.aes = TRUE)

geom_line_exaggerate(mapping = NULL, data = NULL, stat = "identity",
  position = "identity", ..., exaggerate_x = 1, exaggerate_y = 1,
  na.rm = FALSE, show.legend = NA, inherit.aes = TRUE)

geom_lineh_exaggerate(mapping = NULL, data = NULL, stat = "identity",
  position = "identity", ..., exaggerate_x = 1, exaggerate_y = 1,
  na.rm = FALSE, show.legend = NA, inherit.aes = TRUE)

geom_area_exaggerate(mapping = NULL, data = NULL, stat = "identity",
  position = "identity", ..., exaggerate_x = 1, exaggerate_y = 1,
  na.rm = FALSE, show.legend = NA, inherit.aes = TRUE)

geom_areah_exaggerate(mapping = NULL, data = NULL, stat = "identity",
  position = "identity", ..., exaggerate_x = 1, exaggerate_y = 1,
  na.rm = FALSE, show.legend = NA, inherit.aes = TRUE)
}
\arguments{
\item{mapping, data, stat, position, na.rm, show.legend, inherit.aes, ...}{See
parent geometries}

\item{exaggerate_x, exaggerate_y}{The factor by which to exaggerate x or y values}
}
\description{
Exaggerated geometries that do not train scales
}
