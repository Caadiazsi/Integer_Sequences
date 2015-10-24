// Super abstract class Sequence
import java.util.Arrays;

abstract class Sequence {
  /**
   * The sequence author
   */
  abstract String author();

  /**
   * The sequence description
   */
  abstract String description();

  /**
   * Computes the nth sequence term
   */
  abstract int compute(int n);

  /**
   * Returns the first n seq terms as an array.
   */
  int [] toArray(int n) {
    int[] seq = new int[n];
    for (int i=0; i<n; i++)
      seq[i] = compute(i+1);
    return seq;
  }

  /**
   * Returns the first n seq terms as a string.
   * Sequence may then simply be printed as: println(sequence.toString(n))
   */
  String toString(int n) {
    return Arrays.toString(toArray(n));
  }

  // All display functions must scale the canvas properly

  /**
   * Display n seq terms as you wish
   */
  abstract void display(int n, int r, int l);

  /**
   * Display n seq terms as a bar chart: https://en.wikipedia.org/wiki/Bar_chart
   * Warning: Should be implemented here in the super class!
   */
  void barChart(int q) {
    background(255);
    int [] e = toArray(q);
    if (e[0]==1) {
      fill(0, 100, 255);
    } else {
      fill(255, 100, 0);
    }
    int y = height/q;
    int i = 0;
    for (int k=q-1; k>=0; k--) {
      float x= map(e[k], 0, e[q-1], 0, width);
      stroke(0);
      rect(0, i*y, x, y);
      i++;
    }
    fill(255,0,0);
    textSize(32);
    text("Bar Chart",250,height-10);
  }

  /**
   * Display n seq terms as a line chart: https://en.wikipedia.org/wiki/Line_chart
   * Warning: Should be implemented here in the super class!
   */
  void lineChart(int n) {
    int q = n;
    background(255);
    int [] e = toArray(q);
    float x = width/q;
    int i = 0;
    float x1 = 0;
    float y1 = height;
    for (int k=0; k<=q-1; k++) {
      float y = map(e[k], 0, e[q-1], height, 0);
      if (e[0]==1) {
        stroke(0, 100, 255);
        fill(0, 100, 255);
      } else {
        stroke(255, 100, 0);
        fill(255, 100, 0);
      }
      ellipse(i*x, y, x/2, x/2);
      //stroke(255, 255, 255);
      line(x1, y1, i*x, y);
      fill(0);
      textSize(12);
      text(e[k], i*x, y+x/2);
      x1 = i*x;
      y1 = y;
      i++;
    }
    fill(255,0,0);
    textSize(32);
    text("Line Chart",250,height-10);  
}

  /**
   * Display n seq terms as a curve firring: https://en.wikipedia.org/wiki/Curve_fitting
   * Hint: refer to the section 'Curves' here: https://processing.org/reference/
   * Warning: Should be implemented here in the super class!
   */
  void curveFitting(int n, boolean f) {
    int q = n;
    background(255);
    int [] e = toArray(q+2);
    float x = width/q;
    int i = 0;
    float x1 = 0;
    float y1 = height;
    for (int k=0; k<=q-1; k++) {
      float y = map(e[k], 0, e[q-1], height, 0);
      if(f==true){
        if (e[0]==1) {
          stroke(0, 100, 255);
          fill(0, 100, 255);
        } else {
          stroke(255, 100, 0);
          fill(255, 100, 0);
        }
        ellipse(i*x, y, x/4, x/4);
      }
        int w = k;
        stroke(0);
        noFill();
        curve(x1,y1,i*x,y,(i+1)*x,map(e[w+1], 0, e[q-1], height, 0),(i+2)*x,map(e[w+2], 0, e[q-1], height, 0));
      //line(x1, y1, i*x, y);
      x1 = i*x;
      y1 = y;
      i++;
    }
    fill(255,0,0);
    textSize(32);
    text("Curve Fitting",250,height-10);
 }
}