A<-read.csv("C:/Users/jack1/Desktop/화장품(최종).csv")
A<-A[,c(-3,-4,-5,-6)]
dim(A)
summary(A)
B<-subset(A,CLAC2_NM=="남성케어")
C<-subset(A,CLAC2_NM=="메이크업")
D<-subset(A,CLAC2_NM=="미용소품")
E<-subset(A,CLAC2_NM=="선케어")
F<-subset(A,CLAC2_NM=="스킨케어")
G<-subset(A,CLAC2_NM=="향수")

summary(B)
summary(C)
summary(D)
summary(E)
summary(F)
summary(G)
B.num<-nlevels(as.factor(B$CLNT_ID))
C.num<-nlevels(as.factor(C$CLNT_ID))
D.num<-nlevels(as.factor(D$CLNT_ID))
E.num<-nlevels(as.factor(E$CLNT_ID))
F.num<-nlevels(as.factor(F$CLNT_ID))
G.num<-nlevels(as.factor(G$CLNT_ID))

###U score, 가중치 둘
##U score는 상품을 얼마나 선호하는지에 대한 Ultimate, P는 평균 대
U1<-round(dim(B)*mean(B$PD_BUY_CT))[1]
U2<-round(dim(C)*mean(C$PD_BUY_CT))[1]
U3<-round(dim(D)*mean(D$PD_BUY_CT))[1]
U4<-round(dim(E)*mean(E$PD_BUY_CT))[1]
U5<-round(dim(F)*mean(F$PD_BUY_CT))[1]
U.mean<-(U1+U2+U3+U4+U5)/5
P1<-U1/U.mean
P2<-U2/U.mean
P3<-U3/U.mean
P4<-U4/U.mean
P5<-U5/U.mean

M1<-U1/B.num
M2<-U2/C.num
M3<-U3/D.num
M4<-U4/E.num
M5<-U5/F.num
c(U1,U2,U3,U4,U5)
c(P1,P2,P3,P4,P5)
c(M1,M2,M3,M4,M5)

pet<-read.csv("C:/Users/jack1/Desktop/애완동물(최종).csv")
summary(pet)
A<-pet[,c(-3,-4,-5,-6)]
summary(A)
B<-subset(A,CLAC2_NM=="고양이용품")
C<-subset(A,CLAC2_NM=="애견용품")
B.num<-nlevels(as.factor(B$CLNT_ID))
C.num<-nlevels(as.factor(C$CLNT_ID))
U1<-round(dim(B)*mean(B$PD_BUY_CT))[1]
U2<-round(dim(C)*mean(C$PD_BUY_CT))[1]
U.mean<-(U1+U2)/2
P1<-U1/U.mean
P2<-U2/U.mean
M1<-U1/B.num
M2<-U2/C.num
c(U1,U2)
c(P1,P2)
c(M1,M2)

