library(tibble)
library(dplyr)
library(readr)
library(lubridate)

mtcars
class(mtcars)
View(mtcars)

#Different datasets with visdat
vis_dat(mtcars)
vis_dat(CO2)
vis_dat(airquality)
vis_miss(airquality)
vis_miss(airquality,
         sort_miss = TRUE,
         cluster = TRUE)

as_tibble(mtcars)
vis_dat(as_tibble(rownames_to_column(mtcars,'model')))

new_mtcars <- rownames_to_column(mtcars,'model')

names(new_mtcars)

head(new_mtcars,3)
tail(new_mtcars,7)
glimpse(new_mtcars)


cosmic_table <- tribble(
  ~Planet, ~Distance,
  "Mars",      228,
  "Earth",      150,
  "Venus",      108,
  "Mercury",       58
)
cosmic_table

tibble::tribble(
                      ~Amazing.Grace,
            "6mN8nzCXWUeT5LWEcG1Utx",
                                 "5",
                            "555521",
                             "album",
                                 "9",
             "Deep Peace Experience",
           "2015-06-09 00:00:00 UTC",
                "Mountain Music Inc",
                      "Silent Night",
            "58sgjtx3FOnBBEOd3BQE6C",
                                 "8",
                            "535041",
                             "album",
                                 "9",
             "Deep Peace Experience",
           "2015-06-09 00:00:00 UTC",
                "Mountain Music Inc",
                   "Ancient Canyons",
            "45tQJhm0WSk5VWMZK3FsLK",
                                 "1",
                            "545855",
                             "album",
                                 "9",
             "Deep Peace Experience",
           "2015-06-09 00:00:00 UTC",
                "Mountain Music Inc",
               "Pacha Mama Medicina",
            "3VFD7QqkJSg0OR6yBwKl7A",
                                 "6",
                            "305241",
                             "album",
                                 "9",
             "Deep Peace Experience",
           "2015-06-09 00:00:00 UTC",
                "Mountain Music Inc",
                   "Palace Of Light",
            "7LwJV5BEIC9BQnzvaBSyCc",
                                 "7",
                            "351060",
                             "album",
                                 "9",
             "Deep Peace Experience",
           "2015-06-09 00:00:00 UTC",
                "Mountain Music Inc",
  "Jeweled Lotus (Om Mani Peme Hum)",
            "3I9hXJVjdNYnNfJ5PjgxKA",
                                 "2",
                            "562887",
                             "album",
                                 "9",
             "Deep Peace Experience",
           "2015-06-09 00:00:00 UTC",
                "Mountain Music Inc",
    "Loka (May All Beings Be Happy)",
            "0K3bvVuJZTrhK8S4yT9Z7g",
                                 "9",
                            "417908",
                             "album",
                                 "9",
             "Deep Peace Experience",
           "2015-06-09 00:00:00 UTC",
                "Mountain Music Inc",
   "Shiva Radiance (I Am That I Am)",
            "3Vke9b8vKfG5evYn5vcDvW",
                                 "4",
                            "553509",
                             "album",
                                 "9",
             "Deep Peace Experience",
           "2015-06-09 00:00:00 UTC",
                "Mountain Music Inc",
                     "Dream Healing",
            "0z2oH4GgrXdWE0FicrIwYs",
                                 "3",
                            "581434",
                             "album",
                                 "9",
             "Deep Peace Experience",
           "2015-06-09 00:00:00 UTC",
                "Mountain Music Inc",
                "See The World Burn",
            "6cCOUBWo2uSz8Eio8ztDSh",
                                 "9",
                            "164217",
                             "album",
                                "13",
  "Black Sands: Official Soundtrack",
           "2019-12-20 00:00:00 UTC",
               "1521914 Records DK2",
                       "Black Sands",
            "6T0w8wrJhIMiBqVmC4UhrV",
                                "12",
                            "151287",
                             "album",
                                "13",
  "Black Sands: Official Soundtrack",
           "2019-12-20 00:00:00 UTC",
               "1521914 Records DK2",
                                "蔀ȵ"
  )

stones <- read_csv("Data/rolling_stones.csv")
View(stones)

select(stones)
select(stones, song_name, banana)


sales_report <- read_tsv("Data/sales_data.tsv")
#View(sales_report)
sales_report <- rename(sales_report,
               order_id="Data Report Date: 2018-01-01",
               "quantity"="...2",
               "unit_price"="...3",
               "order_date"="...4",
               "status"="...5",
               "product_type"="...6",
               "country"="...7",
               "deal_size"="...8")

sales_report <- filter(sales_report,
               order_id != "Report Analyst: John Sand",
               order_id != "order_id",
               )
arrange(sales_report, desc(quantity))
View(sales_report)

sales_report %>%
  mutate(sales = unit_price * quantity,
         year = year(dmy(order_date))) # Then extract year

france_sales = filter(sales_report,
                      country == "France",
                      status == "In Process",
                      product_type == "Classic Cars")
View(france_sales)
glimpse(france_sales)

filter(stones, live)


sales_report %>%
  select(-product_type,-country,-deal_size)

