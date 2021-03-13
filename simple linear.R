#import a csv file of your own choice
D<-read.csv("a.csv")
D
x<-c(D$x)
x
y<-c(D$y)
y
#lm is linear regression function
R<-lm(y~x)
R
summary(R)
a<-data.frame(x=1178)
#for a new x value predict the y
res<-predict(R,a)
res
plot(y,x,col = "blue",main = "X and Y Regression",abline(lm(x~y)),cex = 1.3,pch = 16,xlab = "X",ylab = "Y")
library(gganimate)
p<-ggplot(data,aes(x=x,y=y))+geom_point()
plot(p)
anim<-p+transition_states(x,transition_length = 2,state_length = 1)
anim+ease_aes(y='bounce-out')
