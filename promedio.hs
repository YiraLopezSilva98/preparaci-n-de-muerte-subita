suma::[Int]->Int
suma[]=0
suma (x:xs)= x+suma(xs)

promedio::[Int]->Int
promedio[]=0
promedio x = div(suma(x))(length x)

buscar:: [Int]->Int->Int
buscar [x] y =x
buscar (x:xs) y = if abs(y-x)<abs(y-buscar xs y)
                  then x
                  else buscar xs y

promediar::[[Int]]->[Int]
promediar x= [buscar xx (promedio xx)|xx<-x]