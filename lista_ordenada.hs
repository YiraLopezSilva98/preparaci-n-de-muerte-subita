mayor::[Int]->Int
mayor[]=0
mayor (x:xs)= max x (mayor xs)

mayor2::[[Int]]->[Int]
mayor2 x= [mayor(xx)|xx<-x]