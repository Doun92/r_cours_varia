my_numbers <- c(1, 3, 4, 4, 5, 4, 8, 3, 4)
my_animals <- c("dog", "cat", "canary", "dog")
my_logicals <- c(TRUE, FALSE, FALSE, FALSE, TRUE)
tabyl(my_numbers)
tabyl(my_animals)
tabyl(my_logicals)

# First we define two `vector`s
vector1 <- c(1,4,6)
vector2 <- c(2,7,9)

# Then we use c() again to combine them
c(vector1, vector2)

vec1 <- c(1)
vec2 <- c(2,9)
vec3 <- c(43,52,1)
vec4 <- c(32,9,0,-1)
combined_vec <- c(vec1,vec2,vec3,vec4)

unique_value_search <- c("bread", "cake", "bread", "fruit", "lemon", "juice",
          "fruit", "cake", "lemon", "nail", "pen", "key", "pen")
unique(unique_value_search)
sort(combined_vec)
sort(combined_vec, decreasing=TRUE)
my_numbers <- c(5919, 846, 6765, -4227, -9300, -13527)
sum(my_numbers)

bunch_of_bools <- c(TRUE, TRUE, TRUE, FALSE, FALSE,
  TRUE, TRUE, FALSE, TRUE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE,
  FALSE, FALSE, TRUE, TRUE, FALSE, TRUE, FALSE, FALSE, TRUE, TRUE,
  TRUE, TRUE, FALSE, FALSE, TRUE, TRUE, FALSE, TRUE, FALSE, FALSE,
  TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, TRUE, TRUE, FALSE, TRUE,
  FALSE, FALSE, TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, TRUE, TRUE,
  FALSE, TRUE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE, FALSE, FALSE,
  TRUE, TRUE, FALSE, TRUE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE,
  FALSE, FALSE, TRUE, TRUE, FALSE, TRUE, FALSE, FALSE, TRUE, TRUE,
  TRUE, TRUE, FALSE, FALSE, TRUE, TRUE, FALSE, TRUE, FALSE, FALSE,
  TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, TRUE, TRUE, FALSE, TRUE,
  FALSE, FALSE, TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, TRUE, TRUE,
  FALSE, TRUE, FALSE, FALSE, TRUE)
sum(bunch_of_bools)

exam_grades <- c(32,45,10,49,90,96,83,29,87)
mean(exam_grades)

head(sort(exam_grades, decreasing = TRUE),3)
tail(sort(exam_grades, decreasing = TRUE),3)

my_animals[2]
my_animals[-2]

my_numbers <- c(34, 21, 5, 21, 98, 9, 0)
my_numbers[6:3]
sort(my_numbers,decreasing = TRUE)[6:3]
c(1,2,3) > 2

my_vec <- c(2,4,5,34,29,1,0,8,78)
sum(my_vec[my_vec > 25])

vect <- c(3235,23,12,56,42,68,32)
vect[3:length(vect)]

a_vector <- c("Hello,","I am a", "teapot!")
str_c(a_vector, collapse = " ")

# the code above is equivalent to this
str_c(c("Hello,","I am a", "teapot!"), collapse = " ")

# not to this
str_c("Hello,", "I am a", "teapot!", collapse = " ")


fst_names <- c("Harry", "Hermione", "Ronald", "Sirius")
mid_names <- c("James", "Jean", "Bilius", "Orion")
lst_names <- c("Potter", "Granger", "Weasley", "Black")
str_glue("{fst_names} {str_sub(mid_names,1,2)}. {lst_names}")


dates1 <- c("1996-06-18","2008-12-21","2009-11-24","2015-01-28",
            "1978-06-04","1998-03-13","1977-11-05","1970-02-04",
            "1973-11-15","2013-02-17")

dates2 <- c("June 18 1996","December 21 2008","November 24 2009",
            "January 28 2015","June 04 1978","March 13 1998",
            "November 05 1977","February 04 1970","November 15 1973",
            "February 17 2013")

dates3 <- c("06181996","12212008","11242009","01282015",
            "06041978","03131998","11051977","02041970",
            "11151973","02172013")

dates4 <- c("1996/Jun-18","2008/Dec-21","2009/Nov-24",
            "2015/Jan-28","1978/Jun-04","1998/Mar-13",
            "1977/Nov-05","1970/Feb-04","1973/Nov-15",
            "2013/Feb-17")

ymd(dates1)
parse_date_time(dates2, orders="bdy")
parse_date_time(dates3, orders="mdy")
parse_date_time(dates4, orders="y/m-d")

complexe_date <- "Tuesday 11 September 2018"
parse_date_time(complexe_date, "dby")

dates <- c("June 18 1996","December 21 2008","November 24 2009",
           "January 28 2015","June 04 1978","March 13 1998",
           "November 05 1977","February 04 1970","November 15 1973",
           "February 17 2013")
parse_date_time(dates,"mdy") + months(2) + days(1)

#Get the Monday of the week
floor_date(parse_date_time(dates,"bdy"),"week", week_start = 1)
#Get the next Monday
ceiling_date(parse_date_time(dates,"bdy"),"week", week_start = 1)
#Get the nearest Monday
round_date(parse_date_time(dates,"bdy"),"week", week_start = 1)
