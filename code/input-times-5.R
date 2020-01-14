library(magrittr)
library(tidyverse)

input <- read_csv("data/input-file.csv")

output <-
  input %>%
  mutate(
    data_type = "output",
    value = value * 5
  )

write_csv(output, "data/input-times-5.csv")
