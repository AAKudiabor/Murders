library(tidyverse)
load("R_Data/Murders.rda")

Murders %>% mutate(abb = reorder(abb, rate)) %>%
  ggplot(aes(abb, rate))+
  geom_bar(width = 0.5, color = "black", stat = "identity")+
  coord_flip()
ggsave("Figures/Murders Barplot.png")
