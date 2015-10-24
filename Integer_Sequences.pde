// Object declaration
Sequence sequence;

boolean Lucky;
int r = 0;
int l = 0;
boolean f = true;
int x = -1;
int compute = 10;
int toString = 20;
int display_abundant = 20;
int display_lucky = 3;
int barChart = 20;
int lineChart = 20;
int curveFitting = 20;

void setup() {
  size(700,700);
  // Object init
  sequence = new Abundant();
}

void draw() {
  //object use
  if(x==-1){
    textSize(80);
    background(0);
    if(Lucky==false){
      fill(255,100,0);
      textSize(65);
      text("ABUNDANT NUMBERS",10,300,700,700);
    }else{
      fill(0,100,255);
      textSize(65);
      text("LUCKY NUMBERS",90,300,700,700);
    }
  }
  if(x==0){
      textSize(20);
      if(Lucky==true){
        fill(0,100,255);
      }else{
        fill(255,100,0);
      }
      background(0);
      text("AUTHOR",10,20,700,700);
      text(sequence.author(),10,50,700,700);
  }
  if(x==1){
    textSize(20);
    if(Lucky==true){
      fill(0,100,255);
    }else{
      fill(255,100,0);
    }
    background(0);
    text("DESCRIPTION",10,20,700,700);
    text(sequence.description(),10,50,700,700);
  }
  if(x==2){ 
    int y = sequence.compute(compute);
    String str1 = str(y);
    if(Lucky==true){
      fill(0,100,255);
    }else{
      fill(255,100,0);
    }
    textSize(20);
    background(0);
    text("//"+compute+" term of the sequence//",10,20,700,700);
    text(str1,10,50,700,700);
  }
  if(x==3){
    if(Lucky==true){
      fill(0,100,255);
    }else{
      fill(255,100,0);
    }
    textSize(20);
    background(0);
    text("//The first "+toString+" sequence terms are://",10,20,700,700);
    text(sequence.toString(toString),10,50,700,700);
  }
  if(x==4){
    int h;
    if(Lucky==true){
      h = display_lucky;
    }else{
      h = display_abundant;
    }
    sequence.display(h,r,l);
  }
  if(x==5)
  sequence.barChart(barChart);
  if(x==6)
  sequence.lineChart(lineChart);
  if(x==7)
  sequence.curveFitting(curveFitting,f);
}

void keyPressed() {
  double u = sqrt(display_lucky);
  int i;
  if (display_lucky/u==u){
     i = (int)u;
  }else{
     i = (int)u+1;
  }
  if(key=='p')
  println(i);
  if(key=='a'){
    Lucky = !Lucky;
    sequence = Lucky ? new Lucky() : new Abundant();
    f=true;
    r=0;
    l=0;
  }
  if(key=='d'){
    if(x==3 && display_lucky<=100){
      display_lucky = 3;
    }
    if(x==6){
      f=true;
    }
    if(x<=6){
      x++;
    }else{
      x=-1;
    }
  }
  if(key=='s'){
    if(x==5 && display_lucky<=100){
      display_lucky=3;
    }
    if(x==-1){
      f=true;
    }
    if(x>=0){
      x--;
    }else{
      x=7;
    }
  }
  if (key == CODED) {
    if (keyCode == UP) {
      if(Lucky==true){
        if(display_lucky<=99){
         display_lucky++;
        }
        if(l == 0){
          l=0;
        }else{
          l+=70;
        }
      }else{
        if(l<240){
          l+=20;
        }else{
          l=240; 
        }
      }
    } else if (keyCode == DOWN) {
      if(display_lucky>=3 && display_lucky<=100){
        display_lucky--;
      }
      if(Lucky==true){
        if(l == i*-70+770){
          l = i*-70+770;
        }else{
          l-=70;
        }
      }else{
        if(l>0){
          l-=20;
        }else{
          l=0; 
        }
      }
    } else if (keyCode == LEFT) {
      if(Lucky==true){
        if(r == 0){
          r=0;
        }else{
          r+=70;
        }
      }else{
        r=0;
      }
    } else if (keyCode == RIGHT){
      if(Lucky==true){
        if(r == i*-70+700){
          r = i*-70+700;
        }else{
          r-=70;
        }
      }else{
        r=-1; 
      }
    }else if (keyCode == ALT){
      r=0;
      l=0;
      if(f==true){
        f = false;
      }else{
        f = true;
      }
    }  
  } 
}