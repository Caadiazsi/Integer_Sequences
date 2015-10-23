int numero_divisores (int n){
  int t =0;
  for(int i=1;i<=n;i++) {  
    if(n%i==0){ 
      t++;
    } 
  }
  return t-1;
}

int [] encuentra_divisores (int n) { 
  int t = numero_divisores (n);
  int [] d= new int[t+1]; 
  int c = 0;
  for(int i=1;i<=(n/2);i++) {  
    if(n%i==0){ 
      d[c] = i;
      c++;
    } 
  }
  return  d; 
}

int suma_divisores(int n) { 
   int [] a= encuentra_divisores(n);
   int t = numero_divisores(n);
   int x = 0;
   for(int i=0;i<=t-1;i++) {  
      x+=a[i];
  } 
return x;
}

boolean abundant (int n) { 
  boolean t;
  int x= suma_divisores (n);
  if (n<x){
    t=true;
  }else{
    t=false;
  }
  if(n==0||n==1||n==2)
  t=false;
  return t; 
} 

int[] Abundant_numbers(int n){
 int [] a = new int [n];
 int i = 0;
 int y = 0;
 while(i<=n-1){
   if(abundant(y)==true){
     a[i]=y;
     i++;
   }
   y++;
 }
 return a;
}
//Utilize n para imprimir los primeros n numeros abundantes 
//Utilize m para saber si m es un abundante
/*Utilize q para decir cuantos circulos quiere imprimir,
  utilizando los primeros q numeros abundantes como radio*/
void setup() {
  int n=10;
  int m=8;
  int q=20;
  int x = suma_divisores (m);
  println("Abundant Numbers");
  println("Respuestas dadas para n=");
  println(n);
  //Los n primeros numeros abundantes.
  println("Los primeros n numeros abundantes son:");
  println(Abundant_numbers(n));
  /*Determina si n es un numero abundante
  Ademas le imprime los siguientes datos:
  Los divisores.
  La suma de los divisores.
  La abundancia. 
  */
  println("Es'm'un numero abundante?");
  println("Respuesta dadas para m=");
  println(m);
  println("Rta//");
  println(abundant(m));
  println("Los divisores son:");
  println(encuentra_divisores(m));
  println("La suma de los divisores es de");
  println(suma_divisores(m));
  if(m<=x){
    println("La abundancia es de ");
    println(x-m);
  }else{
    println("EL numero m es mayor");
    println(m-x);
    println("unidades que la suma de sus divisores, por lo tanto, no es un numero abundante.");
  }
   println ("Jonatan Campo - Camilo Diaz - Manuel Miranda");
  int[]e = Abundant_numbers(q);
  size(700,700);
  for (int k=q-1;k>=0;k--){
    fill(map(e[k],0,e[q-1],0,255));
    ellipse(width/2,height/2,map(e[k],0,e[q-1],0,width),map(e[k],0,e[q-1],0,height));
  }
}