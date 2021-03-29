#Zadanie 1

install.packages("stringr")
library(stringr)

tekst = "TERYT 18; podkarpackie; Rzeszów; 0.2 He; A"
tekst1 = "TERYT 22; pomorskie;   Gdańsk; 12 C ; B"

str_sub (tekst, start = -5, end = -4)
str_sub (tekst1, start = -5, end = -4)

#Zadanie 2

horoskop = function(imie, miesiac){
  if((miesiac %% 2)== 0) {
    cat(paste("Osoba o imieniu", imie, "będzie miała jutro szczęście"))
  }else(cat(paste("Osoba o imieniu", imie, "będzie miała jutro nieszczęście")))
r.na = TRUE
  }

horoskop("Łukasz",11)
horoskop("Damian",10)

#Zadanie 3

horoskop = function(imie, miesiac){
  if(str_detect(imie, pattern = "^K|M|Z") || ((miesiac %% 2) == 0)){
    cat(paste("Osoba o imieniu", imie, "będzie miała jutro szczęście."))
  }else(cat(paste("Osoba o imieniu", imie, "będzie miała jutro nieszczęście.")))
  r.na = TRUE
}

horoskop("Katarzyna",9)

#Zadanie 4

pomiary = "2019-03-11: 23.5, 19/03/12: 12.7, 2019.03.13: 11.1, 
2019-marzec-14: 14.3"

daty = str_extract_all(pomiary,
                       pattern = "[0-9]+[\\-|/|.][a-z0-9]+[\\-|/|.][0-9]+")
daty

#Zadanie5

wartosci = str_extract_all(pomiary, pattern = "[0-9]+[\\.][0-9]?[^\\,]")
wartosci

wartosci = as.data.frame(wartosci[[1]][-3])
wartosci













