frozen<-read.csv("C:/Users/jack1/Desktop/냉동식품(최종).csv")
personal<-read.csv("C:/Users/jack1/Desktop/퍼스널케어완성.csv")
cosmetic<-read.csv("C:/Users/jack1/Desktop/화장품(최종).csv")
pet<-read.csv("C:/Users/jack1/Desktop/애완동물(최종).csv")
summary(pet)
frozen1<-frozen[,c(1,10)]
personal1<-personal[,c(1,7)]
cosmetic1<-cosmetic[,c(1,9)]
pet1<-pet[,c(1,4)]
month<-c(4,5,6,7,8,9)

buy.frozen<-c(length(grep("201804",frozen1$SESS_DT)),
                               length(grep("201805",frozen1$SESS_DT)),
                               length(grep("201806",frozen1$SESS_DT)),
                               length(grep("201807",frozen1$SESS_DT)),
                               length(grep("201808",frozen1$SESS_DT)),
                               length(grep("201809",frozen1$SESS_DT)))
buy.personal<-c(length(grep("201804",personal1$SESS_DT)),
       length(grep("201805",personal1$SESS_DT)),
       length(grep("201806",personal1$SESS_DT)),
       length(grep("201807",personal1$SESS_DT)),
       length(grep("201808",personal1$SESS_DT)),
       length(grep("201809",personal1$SESS_DT)))
buy.cosmetic<-c(length(grep("201804",cosmetic1$SESS_DT)),
                length(grep("201805",cosmetic1$SESS_DT)),
                length(grep("201806",cosmetic1$SESS_DT)),
                length(grep("201807",cosmetic1$SESS_DT)),
                length(grep("201808",cosmetic1$SESS_DT)),
                length(grep("201809",cosmetic1$SESS_DT)))
buy.pet<-c(length(grep("201804",pet1$SESS_DT)),
              length(grep("201805",pet1$SESS_DT)),
              length(grep("201806",pet1$SESS_DT)),
              length(grep("201807",pet1$SESS_DT)),
              length(grep("201808",pet1$SESS_DT)),
              length(grep("201809",pet1$SESS_DT)))


custom<-c(108*2,107.1*2,107.9*2,105.5*2,101.1*2,99.2*2)
custom<-c(7.1,7.9,5.5,1.1,-0.8,0.2)
B<-data.frame(month,buy.frozen,buy.personal,buy.cosmetic,buy.pet,custom)
summary(lm(B$buy.cosmetic~B$custom))
x
cor.test(B$custom,B$buy.cosmetic)
cor.test(B$custom,B$buy.personal)
cor.test(B$custom,B$buy.frozen)
cor.test(B$custom,B$buy.pet)

analysis<-aov(buy.cosmetic~custom, data=B)
summary(analysis)
