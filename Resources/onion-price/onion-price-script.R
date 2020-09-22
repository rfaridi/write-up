library(tidyverse)
library(magick)

dir <- "./Resources/onion-price/"

onion.prices.local <- list.files(dir, pattern="local")
onion.prices.import <- list.files(dir, pattern="imported")

local.onion <- map(glue::glue("{dir}/{onion.prices.local}"), image_read) 
import.onion <- map(glue::glue("{dir}/{onion.prices.import}"), image_read) 

local.onion.vec <- local.onion[[1]] 
for(i in 2:length(local.onion)){
  local.onion.vec <- c(local.onion.vec ,local.onion[[i]] )
}

local.image.vec1 <- local.onion.vec[c(1:4)]

local.image.vec2  <- c(local.image[[5]],local.image[[6]],
  local.image[[7]],local.image[[8]])

local.onion.vec %>% 
    image_scale("300") %>% 
    image_montage()  %>% 
    image_display()

local.onion.vec %>% 
    image_scale("500") %>% 
    image_composite()  %>% 
    image_display()




local.image.vec1 %>% 
    image_scale("500") %>% 
    image_append(stack = TRUE) -> local.image.13.16

local.image.vec2 %>% 
    image_scale("500") %>% 
    image_append(stack = TRUE) -> local.image.17.20

c(local.image.13.16, local.image.17.20) %>% 
    image_append() %>% 
    image_display()


                           
