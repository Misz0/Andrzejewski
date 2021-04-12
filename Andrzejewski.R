#1

install.packages("stringr")
library("stringr")

zd1 = "TERYT 18; podkarpackie; Rzeszów; 0.2 He; A"
zd2 = "TERYT 22; pomorskie;   Gdańsk; 12 C ; B"

str_sub (zd1, start = -5, end = -4)
str_sub (zd2, start = -5, end = -4)

#2
horoskop = function(imie, miesiac){
   if (miesiac%%2 == 0) (
  paste("Osoba o imieniu", imie, "będzie miała jutro szczęście.")
  )
  else  (
  paste("Osoba o imieniu", imie, "będzie miała jutro nieszczęście.")
  )
    
}

horoskop("Mikołaj",5)

#3
hooroskop = function(imie, miesiac){

if (str_detect(imie, pattern = "^K|M|Z") || ((miesiac %% 2) == 0)) {
  paste("Osoba o imieniu", imie, "będzie miała jutro szczęście.")
}
  else  {
    paste("Osoba o imieniu", imie, "będzie miała jutro nieszczęście.")
  }
}

horoskop("Kinga",9)

#4

dane = "2019-03-11: 23.5, 19/03/12: 12.7, 2019.03.13: 11.1, 
2019-marzec-14: 14.3"

data = str_extract_all(dane,
  pattern = "[0-9]+[\\-|/|.][a-z0-9]+[\\-|/|.][0-9]+"
)
data

wartosci = str_extract_all(dane,
            pattern = "[0-9]+[\\.][0-9]?[\\,]"               
           )
wartosci
