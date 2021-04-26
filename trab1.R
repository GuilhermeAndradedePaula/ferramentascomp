library(tidyr)
library(xaringan)

## ---- test-a --------
#md=Matriz de Decisão
#help("data.frame")
md <- data.frame(iphone = c(7000,1,256,30,200),
                 samsung = c(5000,24,128,18,320),
                 xiaomi = c(1500,48,64,5,180), 
                 row.names=c("custo","bateria","capacidade","camera","peso"))
md <- t.data.frame(md)
md 

## ---- test-b --------

n1 <- function(x) {
  x/max(x)
}
n2 <- function(x) {
  (x-min(x))/(max(x)-min(x))
}
n3 <- function(x) {
  x/sum(x)
}
n4 <- function(x) {
  x/sqrt(sum(x^2))
}

## ---- test-c --------
#mdnx=Matriz de Decisão normalzada pelo método x
mdn1 <- apply(md, 2, n1)
mdn2 <- apply(md, 2, n2)
mdn3 <- apply(md, 2, n3)
mdn4 <- apply(md, 2, n4)
list(mdn1,mdn2,mdn3,mdn4)
