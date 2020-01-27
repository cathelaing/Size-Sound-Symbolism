# Updated 10th January 2020

library(dplyr)
set.seed(10)

## Paradigms 1 and 2

sample_data_P1_1 <- data.frame("subj" = c(1:16), "age" = sample(14:16, size = 16, replace = T),  # simulate data for 16 participants for counter-balancing
                             "sex" = sample(c("F", "M"), size = 16, replace = T))    
sample_data_P1_2 <- data.frame("subj" = c(17:32), "age" = sample(14:16, size = 16, replace = T),  # simulate data for 16 participants
                                 "sex" = sample(c("F", "M"), size = 16, replace = T))  

# create dummy variables for item, size, and congruence across 8 trials

sample_data_T1A <- sample_data_P1_1 %>% mutate(item = "tree-fish",
                                               word = "tree",
                                               paradigm = -1)

sample_data_T1A$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T1A$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T1B <- sample_data_P1_2 %>% mutate(item = "tree-fish",
                                               word = "tree",
                                               paradigm = 1)

sample_data_T1B$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T1B$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T1C <- sample_data_P1_1 %>% mutate(item = "tree-fish",
                                               word = "fish",
                                               paradigm = -1)

sample_data_T1C$size <- c(-1, -1, -1, -1, 1, 1, 1, 1)
sample_data_T1C$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T1D <- sample_data_P1_2 %>% mutate(item = "tree-fish",
                                               word = "fish",
                                               paradigm = 1)

sample_data_T1D$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T1D$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T1 <- rbind(sample_data_T1A, sample_data_T1B, sample_data_T1C, sample_data_T1D)


sample_data_T2A <- sample_data_P1_1 %>% mutate(item = "pig-book",
                                               word = "pig",
                                               paradigm = -1)

sample_data_T2A$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T2A$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T2B <- sample_data_P1_2 %>% mutate(item = "pig-book",
                                               word = "pig",
                                               paradigm = 1)

sample_data_T2B$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T2B$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T2C <- sample_data_P1_1 %>% mutate(item = "pig-book",
                                               word = "book",
                                               paradigm = -1)

sample_data_T2C$size <- c(-1, -1, -1, -1, 1, 1, 1, 1)
sample_data_T2C$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T2D <- sample_data_P1_2 %>% mutate(item = "pig-book",
                                               word = "book",
                                               paradigm = 1)

sample_data_T2D$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T2D$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T2 <- rbind(sample_data_T2A, sample_data_T2B, sample_data_T2C, sample_data_T2D)

sample_data_T3A <- sample_data_P1_1 %>% mutate(item = "duck-cheese",
                                               word = "duck",
                                               paradigm = -1)

sample_data_T3A$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T3A$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T3B <- sample_data_P1_2 %>% mutate(item = "duck-cheese",
                                               word = "duck",
                                               paradigm = 1)

sample_data_T3B$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T3B$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T3C <- sample_data_P1_1 %>% mutate(item = "duck-cheese",
                                               word = "cheese",
                                               paradigm = -1)

sample_data_T3C$size <- c(-1, -1, -1, -1, 1, 1, 1, 1)
sample_data_T3C$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T3D <- sample_data_P1_2 %>% mutate(item = "duck-cheese",
                                               word = "cheese",
                                               paradigm = 1)

sample_data_T3D$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T3D$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T3 <- rbind(sample_data_T3A, sample_data_T3B, sample_data_T3C, sample_data_T3D)

sample_data_T4A <- sample_data_P1_1 %>% mutate(item = "sheep-apple",
                                               word = "sheep",
                                               paradigm = -1)

sample_data_T4A$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T4A$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T4B <- sample_data_P1_2 %>% mutate(item = "sheep-apple",
                                               word = "sheep",
                                               paradigm = 1)

sample_data_T4B$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T4B$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T4C <- sample_data_P1_1 %>% mutate(item = "sheep-apple",
                                               word = "apple",
                                               paradigm = -1)

sample_data_T4C$size <- c(-1, -1, -1, -1, 1, 1, 1, 1)
sample_data_T4C$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T4D <- sample_data_P1_2 %>% mutate(item = "sheep-apple",
                                               word = "apple",
                                               paradigm = 1)

sample_data_T4D$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T4D$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T4 <- rbind(sample_data_T4A, sample_data_T4B, sample_data_T4C, sample_data_T4D)

sample_data_T5A <- sample_data_P1_1 %>% mutate(item = "bed-nappy",
                                               word = "bed",
                                               paradigm = -1)

sample_data_T5A$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T5A$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T5B <- sample_data_P1_2 %>% mutate(item = "bed-nappy",
                                               word = "bed",
                                               paradigm = 1)

sample_data_T5B$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T5B$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T5C <- sample_data_P1_1 %>% mutate(item = "bed-nappy",
                                               word = "nappy",
                                               paradigm = -1)

sample_data_T5C$size <- c(-1, -1, -1, -1, 1, 1, 1, 1)
sample_data_T5C$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T5D <- sample_data_P1_2 %>% mutate(item = "bed-nappy",
                                               word = "nappy",
                                               paradigm = 1)

sample_data_T5D$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T5D$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T5 <- rbind(sample_data_T5A, sample_data_T5B, sample_data_T5C, sample_data_T5D)

sample_data_T6A <- sample_data_P1_1 %>% mutate(item = "dog-banana",
                                               word = "dog",
                                               paradigm = -1)

sample_data_T6A$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T6A$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T6B <- sample_data_P1_2 %>% mutate(item = "dog-banana",
                                               word = "dog",
                                               paradigm = 1)

sample_data_T6B$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T6B$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T6C <- sample_data_P1_1 %>% mutate(item = "dog-banana",
                                               word = "banana",
                                               paradigm = -1)

sample_data_T6C$size <- c(-1, -1, -1, -1, 1, 1, 1, 1)
sample_data_T6C$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T6D <- sample_data_P1_2 %>% mutate(item = "dog-banana",
                                               word = "banana",
                                               paradigm = 1)

sample_data_T6D$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T6D$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T6 <- rbind(sample_data_T6A, sample_data_T6B, sample_data_T6C, sample_data_T6D)


sample_data_T7A <- sample_data_P1_1 %>% mutate(item = "elephant-sock",
                                               word = "elephant",
                                               paradigm = -1)

sample_data_T7A$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T7A$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T7B <- sample_data_P1_2 %>% mutate(item = "elephant-sock",
                                               word = "elephant",
                                               paradigm = 1)

sample_data_T7B$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T7B$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T7C <- sample_data_P1_1 %>% mutate(item = "elephant-sock",
                                               word = "sock",
                                               paradigm = -1)

sample_data_T7C$size <- c(-1, -1, -1, -1, 1, 1, 1, 1)
sample_data_T7C$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T7D <- sample_data_P1_2 %>% mutate(item = "elephant-sock",
                                               word = "sock",
                                               paradigm = 1)

sample_data_T7D$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T7D$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T7 <- rbind(sample_data_T7A, sample_data_T7B, sample_data_T7C, sample_data_T7D)


sample_data_T8A <- sample_data_P1_1 %>% mutate(item = "lion-hat",
                                               word = "lion",
                                               paradigm = -1)

sample_data_T8A$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T8A$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T8B <- sample_data_P1_2 %>% mutate(item = "lion-hat",
                                               word = "lion",
                                               paradigm = 1)

sample_data_T8B$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T8B$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T8C <- sample_data_P1_1 %>% mutate(item = "lion-hat",
                                               word = "hat",
                                               paradigm = -1)

sample_data_T8C$size <- c(-1, -1, -1, -1, 1, 1, 1, 1)
sample_data_T8C$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T8D <- sample_data_P1_2 %>% mutate(item = "lion-hat",
                                               word = "hat",
                                               paradigm = 1)

sample_data_T8D$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T8D$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T8 <- rbind(sample_data_T8A, sample_data_T8B, sample_data_T8C, sample_data_T8D)

sample_data_T9A <- sample_data_P1_1 %>% mutate(item = "car-brush",
                                               word = "car",
                                               paradigm = -1)

sample_data_T9A$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T9A$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T9B <- sample_data_P1_2 %>% mutate(item = "car-brush",
                                               word = "car",
                                               paradigm = 1)

sample_data_T9B$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T9B$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T9C <- sample_data_P1_1 %>% mutate(item = "car-brush",
                                               word = "brush",
                                               paradigm = -1)

sample_data_T9C$size <- c(-1, -1, -1, -1, 1, 1, 1, 1)
sample_data_T9C$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T9D <- sample_data_P1_2 %>% mutate(item = "car-brush",
                                               word = "brush",
                                               paradigm = 1)

sample_data_T9D$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T9D$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T9 <- rbind(sample_data_T9A, sample_data_T9B, sample_data_T9C, sample_data_T9D)

sample_data_T10A <- sample_data_P1_1 %>% mutate(item = "tractor-balloon",
                                               word = "tractor",
                                               paradigm = -1)

sample_data_T10A$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T10A$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T10B <- sample_data_P1_2 %>% mutate(item = "tractor-balloon",
                                               word = "tractor",
                                               paradigm = 1)

sample_data_T10B$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T10B$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T10C <- sample_data_P1_1 %>% mutate(item = "tractor-balloon",
                                               word = "balloon",
                                               paradigm = -1)

sample_data_T10C$size <- c(-1, -1, -1, -1, 1, 1, 1, 1)
sample_data_T10C$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T10D <- sample_data_P1_2 %>% mutate(item = "tractor-balloon",
                                               word = "balloon",
                                               paradigm = 1)

sample_data_T10D$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T10D$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T10 <- rbind(sample_data_T10A, sample_data_T10B, sample_data_T10C, sample_data_T10D)


sample_data_T11A <- sample_data_P1_1 %>% mutate(item = "cow-spoon",
                                               word = "cow",
                                               paradigm = -1)

sample_data_T11A$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T11A$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T11B <- sample_data_P1_2 %>% mutate(item = "cow-spoon",
                                               word = "cow",
                                               paradigm = 1)

sample_data_T11B$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T11B$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T11C <- sample_data_P1_1 %>% mutate(item = "cow-spoon",
                                               word = "spoon",
                                               paradigm = -1)

sample_data_T11C$size <- c(-1, -1, -1, -1, 1, 1, 1, 1)
sample_data_T11C$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T11D <- sample_data_P1_2 %>% mutate(item = "cow-spoon",
                                               word = "spoon",
                                               paradigm = 1)

sample_data_T11D$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T11D$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T11 <- rbind(sample_data_T11A, sample_data_T11B, sample_data_T11C, sample_data_T11D)

sample_data_T12A <- sample_data_P1_1 %>% mutate(item = "horse-cup",
                                               word = "horse",
                                               paradigm = -1)

sample_data_T12A$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T12A$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T12B <- sample_data_P1_2 %>% mutate(item = "horse-cup",
                                               word = "horse",
                                               paradigm = 1)

sample_data_T12B$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T12B$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T12C <- sample_data_P1_1 %>% mutate(item = "horse-cup",
                                               word = "cup",
                                               paradigm = -1)

sample_data_T12C$size <- c(-1, -1, -1, -1, 1, 1, 1, 1)
sample_data_T12C$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T12D <- sample_data_P1_2 %>% mutate(item = "horse-cup",
                                               word = "cup",
                                               paradigm = 1)

sample_data_T12D$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T12D$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T12 <- rbind(sample_data_T12A, sample_data_T12B, sample_data_T12C, sample_data_T12D)

sample_data_T13A <- sample_data_P1_1 %>% mutate(item = "bus-keys",
                                               word = "bus",
                                               paradigm = -1)

sample_data_T13A$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T13A$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T13B <- sample_data_P1_2 %>% mutate(item = "bus-keys",
                                               word = "bus",
                                               paradigm = 1)

sample_data_T13B$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T13B$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T13C <- sample_data_P1_1 %>% mutate(item = "bus-keys",
                                               word = "keys",
                                               paradigm = -1)

sample_data_T13C$size <- c(-1, -1, -1, -1, 1, 1, 1, 1)
sample_data_T13C$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T13D <- sample_data_P1_2 %>% mutate(item = "bus-keys",
                                               word = "keys",
                                               paradigm = 1)

sample_data_T13D$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T13D$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T13 <- rbind(sample_data_T13A, sample_data_T13B, sample_data_T13C, sample_data_T13D)

sample_data_T14A <- sample_data_P1_1 %>% mutate(item = "monkey-ball",
                                               word = "monkey",
                                               paradigm = -1)

sample_data_T14A$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T14A$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T14B <- sample_data_P1_2 %>% mutate(item = "monkey-ball",
                                               word = "monkey",
                                               paradigm = 1)

sample_data_T14B$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T14B$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T14C <- sample_data_P1_1 %>% mutate(item = "monkey-ball",
                                               word = "ball",
                                               paradigm = -1)

sample_data_T14C$size <- c(-1, -1, -1, -1, 1, 1, 1, 1)
sample_data_T14C$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T14D <- sample_data_P1_2 %>% mutate(item = "monkey-ball",
                                               word = "ball",
                                               paradigm = 1)

sample_data_T14D$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T14D$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T14 <- rbind(sample_data_T14A, sample_data_T14B, sample_data_T14C, sample_data_T14D)

sample_data_T15A <- sample_data_P1_1 %>% mutate(item = "chair-bird",
                                               word = "chair",
                                               paradigm = -1)

sample_data_T15A$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T15A$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T15B <- sample_data_P1_2 %>% mutate(item = "chair-bird",
                                               word = "chair",
                                               paradigm = 1)

sample_data_T15B$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T15B$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T15C <- sample_data_P1_1 %>% mutate(item = "chair-bird",
                                               word = "bird",
                                               paradigm = -1)

sample_data_T15C$size <- c(-1, -1, -1, -1, 1, 1, 1, 1)
sample_data_T15C$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T15D <- sample_data_P1_2 %>% mutate(item = "chair-bird",
                                               word = "bird",
                                               paradigm = 1)

sample_data_T15D$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T15D$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T15 <- rbind(sample_data_T15A, sample_data_T15B, sample_data_T15C, sample_data_T15D)

sample_data_T16A <- sample_data_P1_1 %>% mutate(item = "bike-shoe",
                                               word = "bike",
                                               paradigm = -1)

sample_data_T16A$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T16A$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T16B <- sample_data_P1_2 %>% mutate(item = "bike-shoe",
                                               word = "bike",
                                               paradigm = 1)

sample_data_T16B$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T16B$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T16C <- sample_data_P1_1 %>% mutate(item = "bike-shoe",
                                               word = "shoe",
                                               paradigm = -1)

sample_data_T16C$size <- c(-1, -1, -1, -1, 1, 1, 1, 1)
sample_data_T16C$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T16D <- sample_data_P1_2 %>% mutate(item = "bike-shoe",
                                               word = "shoe",
                                               paradigm = 1)

sample_data_T16D$size <- c(1, 1, 1, 1, -1, -1, -1, -1)
sample_data_T16D$cong <- c(1, 1, 1, 1, -1, -1, -1, -1)

sample_data_T16 <- rbind(sample_data_T16A, sample_data_T16B, sample_data_T16C, sample_data_T16D)


sample_data_P1P2 <- rbind(sample_data_T1, 
                          sample_data_T2,
                          sample_data_T3,
                          sample_data_T4,
                          sample_data_T5,
                          sample_data_T6,
                          sample_data_T7,
                          sample_data_T8,
                          sample_data_T9,
                          sample_data_T10,
                          sample_data_T11,
                          sample_data_T12,
                          sample_data_T13,
                          sample_data_T14,
                          sample_data_T15,
                          sample_data_T16)

sample_data_P1P2 <- sample_data_P1P2 %>% mutate(MOTpitch = ifelse(size == 1 & paradigm == 1, sample(300:700, size = 1024, replace = T), sample(50:350, size = 1024, replace = T)),
                                                MOTpitch = ifelse(size == 1 & paradigm == -1, sample(200:500, size = 1024, replace = T), MOTpitch),
                                                MOTpitch = ifelse(size == -1, sample(50:350, size = 1024, replace = T), MOTpitch))


# Paradigm 3

sample_data_P3_base <- data.frame("subj" = c(1:32), "age" = sample(14:16, size = 32, replace = T),  # simulate data for 32 participants
                               "sex" = sample(c("F", "M"), size = 16, replace = T))    

sample_data_P3T1A <- sample_data_P3_base %>% 
  mutate(item = "tiger",
         size = 1,
         colour = NA,
         paradigm = 3)

sample_data_P3T2A <- sample_data_P3_base %>% 
  mutate(item = "mouse",
         size = 1,
         colour = NA,
         paradigm = 3)

sample_data_P3T3A <- sample_data_P3_base %>% 
  mutate(item = "bottle",
         size = 1,
         colour = NA,
         paradigm = 3)

sample_data_P3T4A <- sample_data_P3_base %>% 
  mutate(item = "glasses",
         size = 1,
         colour = NA,
         paradigm = 3)

sample_data_P3T5A <- sample_data_P3_base %>% 
  mutate(item = "bowl",
         size = NA,
         colour = -1,
         paradigm = 3)

sample_data_P3T6A <- sample_data_P3_base %>% 
  mutate(item = "clock",
         size = NA,
         colour = -1,
         paradigm = 3)

sample_data_P3T7A <- sample_data_P3_base %>% 
  mutate(item = "flower",
         size = NA,
         colour = -1,
         paradigm = 3)

sample_data_P3T8A <- sample_data_P3_base %>% 
  mutate(item = "bathtub",
         size = NA,
         colour = -1,
         paradigm = 3)


sample_data_P3A <- rbind(sample_data_P3T1A,
                        sample_data_P3T2A,
                        sample_data_P3T3A,
                        sample_data_P3T4A,
                        sample_data_P3T5A,
                        sample_data_P3T6A,
                        sample_data_P3T7A,
                        sample_data_P3T8A)

sample_data_P3A <- sample_data_P3A %>% mutate(MOTpitch = ifelse(size == 1, sample(450:700, size = 512, replace = T), NA),
                                              MOTpitch = ifelse(is.na(size), sample(150:500, size = 512, replace = T), MOTpitch))

sample_data_P3T1B <- sample_data_P3_base %>% 
  mutate(item = "tiger",
         size = -1,
         colour = NA,
         paradigm = 3)

sample_data_P3T2B <- sample_data_P3_base %>% 
  mutate(item = "mouse",
         size = -1,
         colour = NA,
         paradigm = 3)

sample_data_P3T3B <- sample_data_P3_base %>% 
  mutate(item = "bottle",
         size = -1,
         colour = NA,
         paradigm = 3)

sample_data_P3T4B <- sample_data_P3_base %>% 
  mutate(item = "glasses",
         size = -1,
         colour = NA,
         paradigm = 3)

sample_data_P3T5B <- sample_data_P3_base %>% 
  mutate(item = "bowl",
         size = NA,
         colour = 1,
         paradigm = 3)

sample_data_P3T6B <- sample_data_P3_base %>% 
  mutate(item = "clock",
         size = NA,
         colour = 1,
         paradigm = 3)

sample_data_P3T7B <- sample_data_P3_base %>% 
  mutate(item = "flower",
         size = NA,
         colour = 1,
         paradigm = 3)

sample_data_P3T8B <- sample_data_P3_base %>% 
  mutate(item = "bathtub",
         size = NA,
         colour = 1,
         paradigm = 3)


sample_data_P3B <- rbind(sample_data_P3T1B,
                         sample_data_P3T2B,
                         sample_data_P3T3B,
                         sample_data_P3T4B,
                         sample_data_P3T5B,
                         sample_data_P3T6B,
                         sample_data_P3T7B,
                         sample_data_P3T8B)

sample_data_P3B <- sample_data_P3B %>% mutate(MOTpitch = ifelse(size == -1, sample(50:200, size = 512, replace = T), NA),
                                              MOTpitch = ifelse(is.na(size), sample(150:500, size = 512, replace = T), MOTpitch))


sample_data_P3 <- rbind(sample_data_P3A, sample_data_P3B)



# Aggregate data so that P1, P2 and P3 results can be compared

sample_data1_P123 <- sample_data_P3 %>%
  select(-colour) %>%
  rename("word" = "item")

sample_data2_P123 <-sample_data_P1P2 %>%
  select(-cong, -item)

sample_data_P123 <- rbind(sample_data1_P123, sample_data2_P123)

