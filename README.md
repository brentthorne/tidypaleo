
<!-- README.md is generated from README.Rmd. Please edit that file -->
[![Travis-CI Build Status](https://travis-ci.org/paleolimbot/agedepth.svg?branch=master)](https://travis-ci.org/paleolimbot/agedepth) [![Coverage Status](https://img.shields.io/codecov/c/github/paleolimbot/agedepth/master.svg)](https://codecov.io/github/paleolimbot/agedepth?branch=master)

agedepth
========

Given a known depths and known (or modelled) ages, it is often convenient to approximate age as a function of depth in an archive. This package provides tools to flexibly create age-depth relationships with various rules for interpolating age within known age-depth values, and extrapolating above and below these values. Typically, this is interpolation between known values and extrapolating using average sedimentation rates.

Installation
------------

You can install agedepth from github with:

``` r
# install.packages("devtools")
devtools::install_github("paleolimbot/agedepth")
```

Example
-------

Using the built-in dataset `alta_lake_210Pb_ages`, which contains a Lead-210 (CRS) age-depth relationship for a core from [Alta Lake, Whistler, British Columbia](https://en.wikipedia.org/wiki/Alta_Lake_(British_Columbia)), we can formally create an age-depth model (note that `age` and `depth` are evaluated within `.data`, if it is provided, and support tidy evaluation):

``` r
library(agedepth)
alta_lake_adm <- age_depth_model(
  alta_lake_210Pb_ages,
  depth = depth_cm, age = age_year_ad,
  age_max = age_year_ad + age_error_yr, 
  age_min = age_year_ad - age_error_yr
)
```

Then, we can plot the relationship:

``` r
plot(alta_lake_adm)
```

![](README-alta_lake_adm_plot-1.png)

...Or predict raw data:

``` r
predict(alta_lake_adm, depth = seq(-1, 10, 0.5))
```

|  depth|       age|  age\_min|  age\_max| method             |
|------:|---------:|---------:|---------:|:-------------------|
|   -1.0|  2031.701|        NA|        NA| extrapolate\_above |
|   -0.5|  2023.150|        NA|        NA| extrapolate\_above |
|    0.0|  2014.600|   2014.60|   2014.60| interpolate        |
|    0.5|  2011.300|        NA|        NA| interpolate        |
|    1.0|  2008.000|   2007.66|   2008.34| interpolate        |
|    1.5|  2003.400|   2002.84|   2003.96| interpolate        |
|    2.0|  1998.100|   1997.24|   1998.96| interpolate        |
|    2.5|  1989.950|        NA|        NA| interpolate        |
|    3.0|  1981.800|   1979.55|   1984.05| interpolate        |
|    3.5|  1973.700|        NA|        NA| interpolate        |
|    4.0|  1965.600|   1960.87|   1970.33| interpolate        |
|    4.5|  1956.400|        NA|        NA| interpolate        |
|    5.0|  1947.200|   1938.99|   1955.41| interpolate        |
|    5.5|  1934.750|        NA|        NA| interpolate        |
|    6.0|  1922.300|   1895.28|   1949.32| interpolate        |
|    6.5|  1909.150|        NA|        NA| interpolate        |
|    7.0|  1896.000|   1838.81|   1953.19| interpolate        |
|    7.5|  1887.450|        NA|        NA| extrapolate\_below |
|    8.0|  1878.899|        NA|        NA| extrapolate\_below |
|    8.5|  1870.349|        NA|        NA| extrapolate\_below |
|    9.0|  1861.798|        NA|        NA| extrapolate\_below |
|    9.5|  1853.248|        NA|        NA| extrapolate\_below |
|   10.0|  1844.697|        NA|        NA| extrapolate\_below |
