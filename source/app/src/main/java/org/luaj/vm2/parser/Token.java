package org.luaj.vm2.parser;

import java.io.Serializable;

public class Token implements Serializable {
    private static final long serialVersionUID = 1;
    public int beginColumn;
    public int beginLine;
    public int endColumn;
    public int endLine;
    public String image;
    public int kind;
    public Token next;
    public Token specialToken;

    public Token() {
    }

    public static Token newToken(int i10) {
        return newToken(i10, null);
    }

    public Object getValue() {
        return null;
    }

    public String toString() {
        return this.image;
    }

    public Token(int i10) {
        this(i10, null);
    }

    public static Token newToken(int i10, String str) {
        return new Token(i10, str);
    }

    public Token(int i10, String str) {
        this.kind = i10;
        this.image = str;
    }
}
