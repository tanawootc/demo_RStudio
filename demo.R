1+1
10+2
log(10)

# 
# x <-10
# y <-20
# x+y
# 
# rm(x)


x <-c(10,12)
class(x)
x > 10
ans =x > 10
ans

f <-c("x","y")
class(f)
a <-factor(f)
a

id <- 1:10
id
class(id)
length(id)
id[1]


mat <- matrix(1:9,ncol=3)
mat <- matrix(1:9,ncol=3,byrow=TRUE)
mat

df  <- data.frame(id,f)
df

df[1,]
df[2,1]
df[1:5,1]

x <- 1:10
sum(x)
mean(x)

plus2 <- function(x){x+2}
plus2(10)

plus3 <- function(x){
  x+3
}
cube <- function(number) {
  number **3
}
cube(3)

hello <-function(){
  name <- readline(prompt="hi")
  paste("hi ",name)
}

hello()

data()
data('iris')
head(iris)
tail(iris)

str(iris)
##structure

summary(iris)


mean(iris$Sepal.Length)
max(iris$Petal.Length)

cor(iris$Sepal.Length,iris$Petal.Length)
cor(iris[,1:4])

plot(iris$Sepal.Length,iris$Petal.Length)
hist(iris$Sepal.Length,col="red")


# install.packages("dplyr")

library(dplyr)

head(mtcars)

## pipe operator

mtcars %>% head()
mtcars %>% select(mpg,hp,wt)
mtcars %>% select(1:3,10)
select(mtcars,mpg,hp)

mtcars %>% 
  filter(hp<100 & am==0)

mtcars %>% 
  arrange(hp)

mtcars %>% 
  arrange(desc(hp))
          
mtcars %>% 
  select(mpg,hp,am) %>%
  filter(am==0) %>%
  arrange(desc(hp))

mtcars %>% 
  select(hp) %>%
  mutate(hp_double=hp*2) %>% 
  head(10)  
  
mtcars %>%
  summarise(mean_mpg=mean(mpg),min_mpg=min(mpg))


  