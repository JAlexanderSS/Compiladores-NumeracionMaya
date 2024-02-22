# Reconocimiento de numeracion maya

## Descripción
El compilador debera de reconcoer si un numero pertenece a la numeracion maya, estos numeros deben de estar dentro de un archivo de texto plano.

## Comprensión de la numeración maya

> La numeración maya es un sistema de numeración vigesimal, es decir, de base 20, que se utilizaba en la civilización maya. Se basa en el uso de puntos, rayas y el caracol, y cada número se representa mediante un conjunto de estos simbolos que se agrupan en bloques. Los mayas utilizaban un sistema de numeración posicional, es decir, el valor de cada símbolo depende de su posición en el número.
![imagen](https://nemdigitalstorage.blob.core.windows.net/nem-main/images/2023/05/27/259f2209-0cf5-464a-a0ea-237efdb23cbe.png)

## Forma de ingresar los numeros dentro del archivo

Los numeros deben de estar separados por un espacio, no importa si estan en una sola linea o en varias lineas, el programa debera de reconocerlos de igual manera, simpre y cuando se tomen las siguientes consideraciones:

- El punto se debera representar con un `.`.
- La raya se debera representar con un `-`.
- El caracol se debera representar con un `0`.
- La division entre niveles se debera de realizar con el simbolo `|`.
- Los numeros deberan de estar separados por un espacio, esto indicara que el numero ha terminado.

Cabe mencionar que se debe de respetar el formato de la numeracion maya, si no se respeta el formato, el programa debera de indicar que el numero no pertenece a la numeracion maya.

El orden a utilizar en cada uno de los niveles respecto al uso del cero, punto y raya es el siguiente:

1. Comenzaremos llenando cada nivel en el con el siguiente orden: raya, punto, cero. Esto segun el numero que quiera representar, considerando el uso de rayas, puntos y ceros que sean necesarios, siempre y cuando se respete la cantidad de simbolos necesarios para formular un numero.
2. Al finalizar cada nivel, se deberá colocar el símbolo `|` para indicar que se ha completado ese nivel. Este patrón se repetirá hasta llegar al último nivel, donde también se utilizará el símbolo `|`. Este último `|` no solo marcará el final del nivel, sino que representará el final completo del número maya.
3. El programa leerá los números mayas en un orden específico: de arriba hacia abajo. Se tomará el primer dato leído, dividiéndolo de izquierda a derecha. Este primer dato se considerará como el nivel más alto en la representación del número maya
4. El llenado de cada nivel se llevará a cabo siguiendo el orden de los símbolos: primero `-`, segundo `.` y tercero `0`. La elección de cada símbolo dependerá de la necesidad en la representación del número maya. Es esencial tener en cuenta que el programa leerá los símbolos de izquierda a derecha, lo que implica que los símbolos con un valor más alto deben ingresarse primero, ya que se interpretarán como el valor ubicado más abajo en el nivel que esta siendo analizado.

## Ejemplos de como ingresar los numeros

Siguiendo las instrucciones dadas anteriormente, al querer ingresar el siguiente numero que graficamente se ve de esta manera, se debe de ingresar como se muestra a continuacion:

![imagen](https://raw.githubusercontent.com/JAlexanderSS/Compiladores-NumeracionMaya/main/img/ocho.png)
```txt
 -...|
```

Tenemos el siguiente numero que graficamente se ve de esta manera, se debe de ingresar como se muestra a continuacion:

![imagen](https://raw.githubusercontent.com/JAlexanderSS/Compiladores-NumeracionMaya/main/img/18.png)
```txt
 ---...|
```
El siguiente numero que graficamente consta de dos niveles, se debe de ingresar de la siguiente manera:

![imagen](https://raw.githubusercontent.com/JAlexanderSS/Compiladores-NumeracionMaya/main/img/399_maya-102x300.png)
```txt
 ---....|---....|
```
## Ejemplo de archivo de texto plano
El archivo debera de llamarse `numeros.txt` y su contenido debera ser similar al siguiente:
```txt
 --.| ...|---....| .|0 ...|-....| .|--|0| .|-....|0| -....|.|-....|0| 
```
