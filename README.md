# Integer_Sequences
Program that declare Abundant and Lucky integer sequences as objects, and use it.

Interactividad:
La interactividad del codigo se realizo via keyCode (https://processing.org/reference/keyCode.html) 
y keyPressed (https://processing.org/reference/keyPressed_.html).

Para avanzar entre los diferentes ejercicios propuestos en clase, los cuales estan ubicados a modo de "diapositivas" 
utilizar las letras "d" y "s" para avanzar y retroceder respectivamente, y para cambiar entre las dos series 
trabajadas(Abundant numbers y Lucky Numbers) presionar la letra "a".
El orden en el cual se presentan los ejercicios es el siguiente:
1. Nombre de la serie.
2. Autor de la serie.
3. Descripcion de la serie.
4. Computar el n-esimo termino.
5. Computar los primeros n terminos.
6. Desplegar n terminos.
  6.1 Lucky Numbers
    6.1.1 Cuando se estan desplegando los Lucky numbers la interactividad cambia dependiendo del numero de datos que le pongamos 
    a imprimir, si le ingresamos un numero menor a 100 la serie iniciara imprimiendo 3 datos y posteriormente podremos aumentar
    este numero(con un maximo en 100) con la flecha de arriba(UP) y con la flecha de abajo(DOWN) lo disminuimos 
    (con un minimo en 2).
    6.1.2 Cuando lo ponemos a imprimir mas de 100 numeros el programa dejara de hacer el mapeo y podremos recorrer la totalidad 
    de los numeros con las flechas del teclado (UP, DOWN, LEFT, RIGHT).
  ** CADA FIGURA REPRESENTA UN NUMERO Y CUANDO LA FIGURA SE MUESTRA EN COLOR AZUL ES PORQUE EL NUMERO HACE PARTE DE LA SERIE.
  ** UTILIZAR LA TECLA "ALT" PARA REGRESAR A LAS COORDENADAS INICIALES.
  6.2 Abundant Numbers
    Cuando se estan desplegando los Abundant Numbers la interactividad se realiza a travez de las flechas del teclado, con "UP"
    y "DOWN cambiamos el color del background, con "RIGHT" mostramos otra representacion y con "LEFT" volveremos a la 
    representacion inicial.
    ** UTILIZAR LA TECLA "ALT" PARA REGRESAR A LOS VALORES INICIALES.
7. Relizar un barChart con los primeros n numeros de la serie, haciendo el respectivo mapeo.
8. Realizar un LineChart con los primeros n numeros de la serie, haciendo el respectivo mapeo.
9. Realizar  un CurveFitting de los primeros n numeros de la serie, haciendo el respectivo mapeo.
   9.1 Utilizar "ALT" para observar solo la curva, volver a presionar para mostrar los puntos.
   
Para que el programa sepa cuantos valores o que valor debe imprimir en cada caso, se deben utilizar los siguientes enteros que
estan ubicados al inicio del codigo en la pestaña "Integer_Sequences".

int compute;            ** El numero n de la secuencia, es utilizado en ambas series.
int toString;           ** Los primeros n numeros de la secuencia, es utilizado en ambas series.
int display_abundant;   ** El numero de datos que se desean imprimir cuando el objeto sea de tipo abundant. 
int display_lucky;      ** El numero de datos que se desean imprimir cuando el objeto sea de tipo lucky.
int barChart;           ** Los primeros n numeros de la secuencia impresos en un barChart, utilizados en ambas series.
int lineChart;          ** Los primeros n numeros de la secuencia impresos en un lineChart, utilizados en ambas series.
int curveFitting;       ** Los primeros n numeros de la secuencia impresos en un curveFitting, utilizados en ambas series.

Codigo realizado y presentado por:

-Camilo Andres Diaz Silva.          
  Usuario Github: Caadiazsi
  Correo: caadiazsi@unal.edu.co
-Jonathan Andres Campo Rangel.      
  Usuario Github: Joacampora
  Correo: joacampora@unal.edu.co
-Manuel Andres Miranda Contreras.   
  Usuario Github: Andres-Miranda
  Correo: mamirandac@unal.edu.co
Estudiantes de Ingenieria de Sistemas y Computacion de la Universidad Nacional de Colombia Sede Bogota.

