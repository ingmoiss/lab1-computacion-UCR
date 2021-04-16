op = 0

while(op != 5){
  print(".:Menu:.")
  
  print("1. Calcular ecuacion")
  print("2. Determinar triangulo")
  print("3. Identificar año bisiesto")
  print("4. Solicitar hora")
  print("5. Salir")
  
  #Se solicita una opcion
  op <- readline(prompt = "Digite una opcion => ")
  
  if(op == 1){
    a = as.numeric(readline(prompt = "Digite el valor de a => "))
    b = as.numeric(readline(prompt = "Digite el valor de b =>  "))
    c = as.numeric(readline(prompt = "Digite el valor de c => "))
    
    ecuacion(a, b, c)
    
  }
  if(op == 2){
    a = as.numeric(readline(prompt = "Digite el valor de a => "))
    b = as.numeric(readline(prompt = "Digite el valor de b => "))
    c = as.numeric(readline(prompt = "Digite el valor de c => "))
    
    triangulo(a, b, c)
  }
  if(op == 3){
    anio = as.numeric(readline(prompt = "Digite el anio que sea comprobar => "))
    
    bisiesto(anio)
    
  }
  if(op == 4){
    
  }

}

#Se crea la funcion para determinar la solucion de ecuacion
ecuacion <- function(a, b, c){
  d <- b^2-4*a*c
  
  if (d>=0){ 
    sol1=(-b+sqrt(d))/(2*a)	
    sol2=(-b-sqrt(d))/(2*a) 
    print(paste("solución 1: ", sol1))
    print(paste("solución 2: ", sol2))
    print(paste("valor del discriminante: ", d))
  }else{
    print("La ecuacion no tiene solución")

  }
}

#Se crea la funcion para determinar bisiesto
bisiesto <- function(anio){
  if(anio %% 4 == 0 ){
    print(paste("El año", anio,"es bisiesto"))
  }else{
    print(paste("El año", anio,"no es bisiesto"))
  }
}

#Se crea la funcion para determinar si es triangulo o no
triangulo <- function(a, b, c){
  if(((a + b) > c) || ((a + c) > b)){
    print("Si es un triangulo")
  }else{
    print("No es un triangulo")
  }
}

#rm(a)
#rm(b)
#rm(c)
#rm(ecucion)










