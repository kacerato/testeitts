package com.github.javaparser;

import java.io.Serializable;

public class Token extends TokenBase implements Serializable {
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

    public static Token newToken(int ofKind, String image) {
        return new Token(ofKind, image);
    }

    public Object getValue() {
        return null;
    }

    public String toString() {
        return this.image;
    }

    public Token(final int nKind) {
        this(nKind, null);
    }

    public static Token newToken(int ofKind) {
        return newToken(ofKind, null);
    }

    public Token(final int nKind, final String sImage) {
        this.kind = nKind;
        this.image = sImage;
    }
}
