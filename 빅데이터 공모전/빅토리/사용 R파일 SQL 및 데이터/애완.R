pet<-read.csv("C:/Users/jack1/Desktop/애완동물(최종).csv")
summary(pet)
A<-pet
A1<-subset(A,CLAC3_NM=="애견간식")
A2<-subset(A,CLAC3_NM=="애견사료")
A3<-subset(A,CLAC3_NM=="애견목욕/위생용품")
A4<-subset(A,CLAC3_NM=="애견의류/악세서리")
A5<-subset(A,CLAC3_NM=="고양이사료")
A6<-subset(A,CLAC3_NM=="고양이간식")
buy.pet1<-c(length(grep("201804",A1$SESS_DT)),
           length(grep("201805",A1$SESS_DT)),
           length(grep("201806",A1$SESS_DT)),
           length(grep("201807",A1$SESS_DT)),
           length(grep("201808",A1$SESS_DT)),
           length(grep("201809",A1$SESS_DT)))
buy.pet2<-c(length(grep("201804",A2$SESS_DT)),
           length(grep("201805",A2$SESS_DT)),
           length(grep("201806",A2$SESS_DT)),
           length(grep("201807",A2$SESS_DT)),
           length(grep("201808",A2$SESS_DT)),
           length(grep("201809",A2$SESS_DT)))
buy.pet3<-c(length(grep("201804",A3$SESS_DT)),
           length(grep("201805",A3$SESS_DT)),
           length(grep("201806",A3$SESS_DT)),
           length(grep("201807",A3$SESS_DT)),
           length(grep("201808",A3$SESS_DT)),
           length(grep("201809",A3$SESS_DT)))
buy.pet4<-c(length(grep("201804",A4$SESS_DT)),
            length(grep("201805",A4$SESS_DT)),
            length(grep("201806",A4$SESS_DT)),
            length(grep("201807",A4$SESS_DT)),
            length(grep("201808",A4$SESS_DT)),
            length(grep("201809",A4$SESS_DT)))
buy.pet5<-c(length(grep("201804",A5$SESS_DT)),
            length(grep("201805",A5$SESS_DT)),
            length(grep("201806",A5$SESS_DT)),
            length(grep("201807",A5$SESS_DT)),
            length(grep("201808",A5$SESS_DT)),
            length(grep("201809",A5$SESS_DT)))

buy.pet1
buy.pet2
buy.pet3
buy.pet4
buy.pet5
plot(c(buy.pet1),type='o')
A<-pet[,c(1,9)]
A<-pet[,c(-3,-4,-5,-6)]
A
B<-table(A$SESS_DT)###요일별 카운트 하기
C<-as.data.frame(B)

D<-matrix(data=C$Freq,ncol=7,byrow=T)
apply(D,1,mean)####주별 평균
apply(D,2,mean)###요일별 평균
E<-c(D[,1],D[,2],D[,3],D[,4],D[,5],D[,6],D[,7])
n<-rep(27,7)
group<-rep(1:7,n)
group_df<-data.frame(E,group)
sapply(group_df,class)
group_df<-transform(group_df,group=factor(group))
attach(group_df)
par(mfrow = c(1,1))
boxplot(E ~ group, 
        main = "Difference of Day of week", 
        xlab = "Day of weeak", 
        ylab = "Count of buying")
####주별 박스플롯

K<-read.csv("C:/Users/jack1/Desktop/pet.csv")
t.test(D,K$반려동물)

tsdata1<-ts(C$Freq,frequency=7)
tsdata2<-ts(K$반려동물,frequency=7)
ts.plot(tsdata1)
plot(stl(tsdata1,"periodic"))
m1<-decompose(tsdata1)
attributes(m1)
plot(m1$trend)

ts.plot(tsdata2)
plot(stl(tsdata2,"periodic"))
m2<-decompose(tsdata2)
attributes(m2)
plot(m2$trend)


K<-read.csv("C:/Users/jack1/Desktop/pet.csv")
t.test(D,K$반려동물)
par(mfrow = c(2,1))
plot(D,type="o")
plot(K$반려동물,type="o")




####조건부 추출
A<-subset(pet,CLAC2_NM=="고양이용품")
A<-subset(pet,CLAC2_NM=="애견용품")
