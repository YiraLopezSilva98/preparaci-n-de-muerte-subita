mayor::[Int]->Int
mayor[x]=x
mayor (x:xs)= max x (mayor xs)

menor::[Int]->Int
menor[x]=x
menor (x:xs)= min x (menor xs)

multiplos::[Int]->Int->Int
multiplos [] y=0
multiplos (x:xs) y= if(mod x y)== 0 && y/=x
                      then 1+multiplos xs y
                      else multiplos xs y

divisores::[Int]->Int->Int
divisores [] y=0
divisores (x:xs) y= if(mod y x)== 0 && y/=x
                      then 1+divisores xs y
                      else divisores xs y

lista::[[Int]]->[(Int,Int,Int,Int)]
lista x= [(mayor xx, menor xx, multiplos xx (menor xx), divisores xx (mayor xx))| xx<-x]