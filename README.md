# Size-Sound-Symbolism
Data and code for size sound symbolism study (Khattab, Laing, Keren-Portnoy &amp; Sloggett) - currently in pre-registration stage

# Updated 9th January 2020

1. **dummy data RR.R**
This file generates dummy data for the Markdown file, allowing users to run the code prior to data collection. This creates two datasets, *sample_data_P1P2* (data for Paradigms 1 and 2) and *sample_data_P3* (data for Paradigm 3). Dummy values for mother's pitch in Hz (*MOTpitch*) are included for all three paradigms.

Variables in these data are as follows:

**sample_data_P1P2**

* *item*: the pair of two items presented to the participants
* *word*: the word within the item-pair that is being tested
* *size*: refers to the size (1 = small, -1 = large) of **word**
* *cong*: refers to the congruence of the pair of items, whether they match their expected size difference (1) or do not (-1)
* *paradigm*: Paradigm 1 (-1) or Paradigm 2 (1)


**sample_data_P3**

* *item*: the two items presented to the participants; as both items are identical in object type, only one item is listed in this dataset
* *size*: refers to whether the tested word is the smaller (1) or larger (-1) of the pair; NAs show items that are identical size
* *colour*: refers to whether the colour of the items is different (-1) or the same (1); NAs show items that are identical colour
* *paradigm*: Paradigm 3 in all cases

