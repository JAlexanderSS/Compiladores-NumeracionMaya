// Código integro
package laboratorio01.ecuacion;

import java.io.*;

%%

// Opciones y declaraciones
%public
%class EcuacionLexer

sign = [-]
punto = [.]
pipe = [|]
numbers = [0]
whitespace = [" ""\t""\r""\f"]
newline = [\n]

lineas = {sign}{1,4}{pipe}
puntos = {punto}{1,4}{pipe}
cero = {numbers}{pipe}
lineasPuntos = {sign}{1,4}{punto}{1,4}{pipe}
%type Token

%eofval{
 if (currentToken.length() > 0) {
    System.err.println("Error en la línea " + currentLine + ": Palabra no reconocida -> " + currentToken.toString() +  " en la columna " + currentColumn);
    currentToken.setLength(0);
  }
  return new Token(TokenConstant.EOF,null);
%eofval}

%{
//Contador de lineas
  private int currentLine = 1;
  private int currentColumn = 0;
  private StringBuilder currentToken = new StringBuilder();
%}

%%

  ({lineas}|{puntos}|{cero}|{lineasPuntos})* {
    if (currentToken.length() > 0) {
      System.err.println("Error en la línea " + currentLine + ": Palabra no reconocida -> " + currentToken.toString() +  " en la columna " + currentColumn);
      currentToken.setLength(0);
    }
    currentColumn += yylength();
    return new Token(TokenConstant.NUMERO_MAYA, yytext());
  }

      {whitespace}+ {currentColumn += yylength(); /* Actualizar la columna actual */}
      {newline}+  { currentLine += yylength(); /* Actualizar la línea actual */
      currentColumn = 0;
      }
.    { currentToken.append(yytext());/* Actualizar la columna actual */
      currentColumn ++;
    }