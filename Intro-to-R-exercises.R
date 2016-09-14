#create a vector called y
y=c(8.3,8.6,10.7,10.8,11,11,11.1,11.2,11.3,11.4)
#ask R to tell us information about y
sum(y)
mean(y)
max(y)
length(y)
summary(y)
#vectors can even be characters
names=c("Harry","Ron")
names
#vectors can be logical
b=c(TRUE,FALSE)
b
#R will tell you what classes of data vectors belong to
class(y)
#testing an object gives you a logical vector back that
#tells you whether the condition was true or false
#for each element
y>10
y>mean(y)
y==11
#this is how you test "not equal to"
y!=11
#when you add, etc vectors you are operating
#on elements in the vectors
a=1:3
b=4:6
a+b
#scalars can operate on vectors
a+1
a*1:2
#R recycles shorter vector enough to match
#length of vector
#these two are the same
1:4*1:2
1:4*c(1,2,1,2)
#to extract/subset elements of vector you can
y[1]
#or provide a logical vector of the same length
#as the vector you are subsetting
y>mean(y)
y[y>mean(y)]
#you get back all the values of the vector where
#the condition was TRUE 
#R treats missing data as missing data
a=c(5,3,6,NA)
a
is.na(a)
!is.na(a)
#not sure what this does - ask
na.exclude(a)
mean(a)
#there are 3 different ways to deal with when
#a function fails because of missing data
mean(a,na.rm=TRUE)
d=na.exclude(a)
mean(d)
#here is a character matrix
matrix(letters[1:4],ncol=2)
#here is a numeric matrix ordered by rows
m=matrix(1:4,nrow=2,byrow=TRUE)
m
#lets get crazy and do it diagonally
m2=diag(1,nrow=2)
#extraction of elements in matrices happens the same way as vectors
m[1,2]
#leaving rows or columns blan makes R return all rows or columns
m[,2]
#data frames are 2D but each column can be a different type of data, unlike matrices'
col1<-c("S.altissima","S.rugosa","E.graminifolia","A.pilosus")
col2<-factor(c("Control","Water","Control","Water"))
dat<-data.frame(species=col1,treatment=col2,
               height=c(1.1,0.8,0.9,1),width=c(1,1.7,0.6,0.2))
dat
#we can extract data from data frames
dat[2,]
#we can test elements in data frames
dat[,2]=="Water"
dat[dat[,2]=="Water",]
#we can also use the subset function
subset(dat,treatment=="Water")
