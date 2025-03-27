print("For Loop:")
for (i in 1:5)
  print(paste("Iteration:",i))



print("While Loop:")
x<-3
while(x<=8){
  print(paste("While Loop- Value of x:",x))
  x<-x+1
}

 print("Repeat Loop:")
 y<-1
 repeat{
   print(paste("Repeat Loop-Value of y:",y))
   y<-y+1
   if(y>5)break
 }