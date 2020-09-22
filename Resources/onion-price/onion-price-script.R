library(tidyverse)
library(magick)

price.image.list <- list.files(./Re

onion.prices.local <- list.files("./Resources/onion-price/", pattern="local")
onion.prices.imported <- list.files("./Resources/onion-price/", pattern="imported")

local.image <- map(onion.prices.local, image_read) 
imported <- map(onion.prices.imported, image_read) 

local.image %>% 
    as.character()
    image_append(stack=TRUE) %>% 
    image_display()

local.image.vec <- local.image[[1]] 
for(i in 2:length(local.image)){
  local.image.vec <- c(local.image.vec ,local.image[[i]] )
}

local.image.vec1 <- c(local.image[[1]],local.image[[2]],local.image[[3]],
  local.image[[4]])

local.image.vec2  <- c(local.image[[5]],local.image[[6]],
  local.image[[7]],local.image[[8]])

local.image.vec1 %>% 
    image_scale("500") %>% 
    image_append(stack = TRUE) -> local.image.13.16

local.image.vec2 %>% 
    image_scale("500") %>% 
    image_append(stack = TRUE) -> local.image.17.20

c(local.image.13.16, local.image.17.20) %>% 
    image_append() %>% 
    image_display()


                           
