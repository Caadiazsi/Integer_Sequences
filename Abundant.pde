class Abundant extends Sequence {
  int p = 0;
  String author() {
    String str1 = "//ABUNDANT-NUMBERS// Unknown//";
    return str1;
  }

  String description() {
    String str1 = "//ABUNDANT-NUMBERS// In number theory, an abundant number or excessive number is a number for which the sum of its proper divisors is greater than the number itself. The integer 12 is the first abundant number. Its proper divisors are 1, 2, 3, 4 and 6 for a total of 16. The amount by which the sum exceeds the number is the abundance. The number 12 has an abundance of 4, for example.";
    if(p==0)
    p++;
    return str1;
  }

  int numero_divisores (int n) {
    int t =0;
    for (int i=1; i<=n; i++) {  
      if (n%i==0) { 
        t++;
      }
    }
    return t-1;
  }

  int [] encuentra_divisores (int n) { 
    int t = numero_divisores (n);
    int [] d= new int[t+1]; 
    int c = 0;
    for (int i=1; i<=(n/2); i++) {  
      if (n%i==0) { 
        d[c] = i;
        c++;
      }
    }
    return d;
  }

  int suma_divisores(int n) { 
    int [] a= encuentra_divisores(n);
    int t = numero_divisores(n);
    int x = 0;
    for (int i=0; i<=t-1; i++) {  
      x+=a[i];
    } 
    return x;
  }

  boolean abundant (int n) { 
    boolean t;
    int x= suma_divisores (n);
    if (n<x) {
      t=true;
    } else {
      t=false;
    }
    if (n==0||n==1||n==2)
      t=false;
    return t;
  } 

  int[] Abundant_numbers(int n) {
    int [] a = new int [n];
    int i = 0;
    int y = 0;
    while (i<=n-1) {
      if (abundant(y)==true) {
        a[i]=y;
        i++;
      }
      y++;
    }
    return a;
  }

  int compute(int n) {
    int [] a = new int [n];
    int i = 0;
    int y = 0;
    while (i<=n-1) {
      if (abundant(y)==true) {
        a[i]=y;
        i++;
      }
      y++;
    }
    return a[n-1];
  }

  /*Utilize q para decir cuantos circulos quiere imprimir,
   utilizando los primeros q numeros abundantes como radio*/
  int r = 0;
  int l = 0;
  void display(int n, int r, int l) {
    int d = r;
    background(l);
    stroke(0);
    int q = n;
    int[]e = Abundant_numbers(q);
  size(700,700);
  for (int k=q-1;k>=0;k--){
    fill(map(e[k],0,e[q-1],0,255));
    ellipse(width/2,height/2,map(e[k],0,e[q-1],0,width),map(e[k],0,e[q-1],0,height));
    }
  }
}