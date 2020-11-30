A<-read.csv("C:/Users/jack1/Desktop/날씨.csv")
A$X<-as.Date(A$X)
Apr<-subset(A,X>="2018-04-01"& X<"2018-05-01")
May<-subset(A,X>="2018-05-01"& X<"2018-06-01")
Jun<-subset(A,X>="2018-06-01"& X<"2018-07-01")
Jul<-subset(A,X>="2018-07-01"& X<"2018-08-01")
Aug<-subset(A,X>="2018-08-01"& X<"2018-09-01")
Oct<-subset(A,X>="2018-09-01"& X<"2018-10-01")
##비가 오지 않은날의 합
rain<-c(sum(is.na(Apr$강수량)),
sum(is.na(May$강수량)),
sum(is.na(Jun$강수량)),
sum(is.na(Jul$강수량)),
sum(is.na(Aug$강수량)),
sum(is.na(Oct$강수량)))
##평균 기온
tem<-c(mean(Apr$평균기온),
mean(May$평균기온),
mean(Jun$평균기온),
mean(Jul$평균기온),
mean(Aug$평균기온),
mean(Oct$평균기온))
##평균 습도
hum<-c(mean(Apr$상대습도),
       mean(May$상대습도),
       mean(Jun$상대습도),
       mean(Jul$상대습도),
       mean(Aug$상대습도),
       mean(Oct$상대습도))

summary(lm(buy.pet~rain))
