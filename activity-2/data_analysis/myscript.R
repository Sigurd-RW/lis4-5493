mydata = read.csv("example_data.csv")
plot(mydata$xdata,mydata$ydata,col='red')
p1 = 1
p2 = 0.2
fit = nls(ydata ~ p1*cos(p2*xdata) + p2*sin(p1*xdata), data = mydata, start = list(p1=p1,p2=p2))
new = data.frame(xdata = seq(min(mydata$xdata),max(mydata$xdata),len=200))
lines(new$xdata,predict(fit,newdata=new))
