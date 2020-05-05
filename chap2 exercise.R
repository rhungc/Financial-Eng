dat = read.csv("Stock_bond.csv", header = TRUE)
names(dat)
attach(dat)
par(mfrow = c(1,2))
plot(GM_AC, type = 'b')
plot(F_AC, type = 'b')
n = dim(dat)[1]
GMReturn = GM_AC[-1] / GM_AC[-n] - 1
FReturn = F_AC[-1]/ F_AC[-n] -1 
par(mfrow = c(1,1))
plot(GMReturn,FReturn)
cor.test(GMReturn, FReturn)
