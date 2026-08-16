package org.openjdk.tools.javac.parser;

import java.nio.CharBuffer;
import java.util.ArrayList;
import java.util.List;
import org.openjdk.tools.javac.parser.Tokens;
import org.openjdk.tools.javac.util.Position;

public class Scanner implements Lexer {
    private Tokens.Token prevToken;
    private List<Tokens.Token> savedTokens;
    private Tokens.Token token;
    private JavaTokenizer tokenizer;
    private Tokens tokens;

    public Scanner(ScannerFactory scannerFactory, CharBuffer charBuffer) {
        this(scannerFactory, new JavaTokenizer(scannerFactory, charBuffer));
    }

    private void ensureLookahead(int i10) {
        for (int size = this.savedTokens.size(); size < i10; size++) {
            this.savedTokens.add(this.tokenizer.readToken());
        }
    }

    @Override
    public int errPos() {
        return this.tokenizer.errPos();
    }

    @Override
    public Position.LineMap getLineMap() {
        return this.tokenizer.getLineMap();
    }

    @Override
    public void nextToken() {
        this.prevToken = this.token;
        if (this.savedTokens.isEmpty()) {
            this.token = this.tokenizer.readToken();
        } else {
            this.token = this.savedTokens.remove(0);
        }
    }

    @Override
    public Tokens.Token prevToken() {
        return this.prevToken;
    }

    @Override
    public Tokens.Token split() {
        Tokens.Token[] split = this.token.split(this.tokens);
        this.prevToken = split[0];
        Tokens.Token token = split[1];
        this.token = token;
        return token;
    }

    @Override
    public Tokens.Token token() {
        return token(0);
    }

    public Scanner(ScannerFactory scannerFactory, char[] cArr, int i10) {
        this(scannerFactory, new JavaTokenizer(scannerFactory, cArr, i10));
    }

    @Override
    public void errPos(int i10) {
        this.tokenizer.errPos(i10);
    }

    @Override
    public Tokens.Token token(int i10) {
        if (i10 == 0) {
            return this.token;
        }
        ensureLookahead(i10);
        return this.savedTokens.get(i10 - 1);
    }

    public Scanner(ScannerFactory scannerFactory, JavaTokenizer javaTokenizer) {
        this.savedTokens = new ArrayList();
        this.tokenizer = javaTokenizer;
        this.tokens = scannerFactory.tokens;
        Tokens.Token token = Tokens.DUMMY;
        this.prevToken = token;
        this.token = token;
    }
}
