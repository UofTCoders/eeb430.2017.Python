library(readr)
library(dplyr)
mammals <- read_csv("data-raw/mammals.csv")
mammals_sub <- mammals %>%
    mutate(offspring.year = litter_size * litters_inyear) %>%
    mutate(log.oy = log(offspring.year)) %>%
    mutate(log.wm = log(weaning_month)) %>%
    mutate(log.ml = log(max_life_month)) %>%
    mutate(log.AFR = log(AFR_mo)) %>%
    filter(order == 'Artiodactyla' | order == 'Carnivora' | order == 'Cetacea' | order == 'Insectivora' | order == 'Lagomorpha' | order == 'Primates' | order == 'Rodentia' )


devtools::use_data(mammals, mammals_sub, overwrite = TRUE)

