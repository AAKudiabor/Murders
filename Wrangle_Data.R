library(tidyverse)
Murders <- read.csv(Dest_File)
Murders <- Murders %>% mutate(region = factor(region), rate = (total/population*10^5))
save(Murders, file = "R_Data/Murders.rda")
