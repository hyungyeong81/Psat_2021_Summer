library(tidyverse)
library(data.table)
set.seed(2021)

test <- fread("test.csv", data.table = FALSE)

test_pca <- predict(pca_fit, test) %>% as.data.frame %>% select(PC1 : PC189)

test_pca %>% write.csv("test_pca.csv", row.names = FALSE)