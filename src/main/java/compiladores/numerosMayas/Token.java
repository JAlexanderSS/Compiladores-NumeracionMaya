package compiladores.numerosMayas;

public class Token {
    private TokenConstant tokenType;
    private String lexeme;

    public Token(TokenConstant tokenType, String lexeme) {
        this.tokenType = tokenType ;
        this.lexeme = lexeme;
    }

    // Genera setters y getters para tokenType y lexeme

    public TokenConstant getTokenType() {
        return tokenType;
    }

    public void setTokenType(TokenConstant tokenType) {
        this.tokenType = tokenType;
    }

    public String getLexeme() {
        return lexeme;
    }

    public void setLexeme(String lexeme) {
        this.lexeme = lexeme;
    }

    @Override
    public String toString() {
        return "Token{" +
                "tokenType=" + tokenType +
                ", lexeme='" + lexeme + '\'' +
                '}';
    }
}
