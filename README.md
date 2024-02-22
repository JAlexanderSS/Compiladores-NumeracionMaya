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

1. Comenzaremos llenando cada nivel en el con el siguiente orden: raya, punto, cero. Esto segun el numero que quiera representar, considerando el uso de rayas, puntos y ceros que sean necesarios, siempre cuando se respete la cantidad de simbolos necesarios para formular un numero.
2. Al finalizar el primer nivel se debera de colocar el simbolo `|` para indicar que se ha terminado el nivel.
3. El orden de los niveles es de arriba hacia abajo, esto implica que los primeros valores ingresados se leeran de izquierda a derecha, y conforme se vayan detectando los simbolos `|` se iran leyendo los siguientes niveles y se determinara el papel de cada simbolo reconocido.

## Ejemplo de archivo de texto plano
El archivo debera de llamarse `numeros.txt` y su contenido debera ser similar al siguiente:
```txt
 --. ...|---.... .|0 ...|-.... 
```

A continuacion dejamos unos ejemplos para la formulacion de los numeros a ingresar en el archivo de texto:
![imagen](https://w7.pngwing.com/pngs/840/101/png-transparent-maya-civilization-maya-numerals-haab-number-maya-script-13-miscellaneous-angle-text.png)
```txt

