# maxxxy

```
install.packages("devtools")
devtools::install_github("hadley/multidplyr")
devtools::install_github("MaximilianBernkopf/maxxxy")
maxxxy_packages <- maxxxy::get_maxxxy_packages()
new_packages <- maxxxy_packages[!(maxxxy_packages %in% installed.packages()[,"Package"])]
install.packages(new_packages)
```
