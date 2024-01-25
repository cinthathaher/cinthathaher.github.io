library("tidyverse")
library("readxl")
data<-('dat.xlsx')
head(dat)
library("ggplot2")
library("readxl")
library("dplyr")
ggplot(data=dat,aes(x=PDB,y=M))+
  geom_point(color="blue",size=2)+
  labs(title="tabel 1. Hubungan Antara Perekonomian Indonesia dan Nilai Ekspor Minyak Mentah",
       x="Perekonomian Indonesia",
       y="Nilai Ekspor Minyak Mentah",
       caption = "sumber : Badan Pusat Statistik")+
  theme_classic()
reg1<-lm(PDB~M,data=dat)
summary(reg1)


