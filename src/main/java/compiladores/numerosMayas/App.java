package compiladores.numerosMayas;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        try {
            compiladores.numerosMayas lexer = new compiladores.numerosMayas.NotacionLexer(new FileReader("Directorio"));
        }
    }
}
