//Codigo integro
package compiladores.numerosMayas;
import java.io.*;

%%
//Opciones y declaraciones
%public
%class NumerosLexer

sign = [-.|]
numbers = [0]
whitespace = [\t\r]
newline = [\n]

%type Token

%eofval{
  return new Token(TokenConstant.EOF,null);
%eofval}

%%
^((([-]{1,4})?([.]{1,4})?[0]?[|])|((([.]{1,4})([0])?[|]))|([0][|]))*$ { return new Token(TokenConstant.NUMERO_MAYA,yytext()); }
.     { System.err.println("Error: Caracter no reconocido -> " + yytext()); }