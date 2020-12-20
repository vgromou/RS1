##Lab1 RS (V7)

h = 1e-2
x = seq(0, pi^2/2, h)

x = x[-length(x)]

##ТОЧНОЕ РЕШЕНИЕ
y = (log(abs(cos(x/pi))) + 2) * cos(x/pi) + (x/pi)*sin(x/pi)
##Для построения графика
plot(x,y,col = "lightblue")
##lines(x,y,col="lightblue")

##РАЗНОСТНАЯ СХЕМА (ЧИСЛЕННОЕ РЕШЕНИЕ)
n = 3:(length(x))
u = c(2 , 2)
for(n in 3:(length(x))){
  u = c(u,(-u[n-2] + u[n-1] * (2 - (h^2/pi^2)) + (h^2)/(cos(x[n]/pi) * pi^2)))
}
##Для построения графика
##points(x,u, col="black", pch = "x")
lines(x,u, col="black")

##Разница между точным решением и численным
res = round(y-u, 1e-6)
ares = abs(res) ##Модуль разницы
maxRes = max(ares) ##Максимальная разница

##plot(x, ares)
