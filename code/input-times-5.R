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

# create a new variable and plot  to test git merge 
view(input)

input %>% 
  mutate(input_square= value^2) %>% 
    ggplot(aes(x=value, y=input_square))+
      geom_line()+
      geom_smooth(se=TRUE)+
      labs(title = "Data Visualization for testing git merge")

