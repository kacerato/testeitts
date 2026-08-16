package com.github.javaparser.printer.lexicalpreservation;

import com.github.javaparser.JavaToken;
import com.github.javaparser.Range;
import com.github.javaparser.ast.Node;
import java.util.Optional;

public class TokenTextElement extends TextElement {
    private final JavaToken token;

    public TokenTextElement(JavaToken token) {
        this.token = token;
    }

    @Override
    public void accept(LexicalPreservingVisitor visitor) {
        visitor.visit(this);
    }

    public boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        if (o10 == null || getClass() != o10.getClass()) {
            return false;
        }
        return this.token.equals(((TokenTextElement) o10).token);
    }

    @Override
    public String expand() {
        return this.token.getText();
    }

    @Override
    public Optional<Range> getRange() {
        return this.token.getRange();
    }

    public String getText() {
        return this.token.getText();
    }

    public JavaToken getToken() {
        return this.token;
    }

    public int getTokenKind() {
        return this.token.getKind();
    }

    public int hashCode() {
        return this.token.hashCode();
    }

    @Override
    public boolean isChildOfClass(Class<? extends Node> nodeClass) {
        return false;
    }

    @Override
    public boolean isComment() {
        return this.token.getCategory().isComment();
    }

    @Override
    public boolean isIdentifier() {
        return getToken().getCategory().isIdentifier();
    }

    @Override
    public boolean isKeyword() {
        return getToken().getCategory().isKeyword();
    }

    @Override
    public boolean isLiteral() {
        return getToken().getCategory().isLiteral();
    }

    @Override
    public boolean isNewline() {
        return this.token.getCategory().isEndOfLine();
    }

    @Override
    public boolean isNode(Node node) {
        return false;
    }

    @Override
    public boolean isPrimitive() {
        return JavaToken.Kind.valueOf(getTokenKind()).isPrimitive();
    }

    @Override
    public boolean isSeparator() {
        return this.token.getCategory().isSeparator();
    }

    @Override
    public boolean isSpaceOrTab() {
        return this.token.getCategory().isWhitespaceButNotEndOfLine();
    }

    @Override
    public boolean isToken(int tokenKind) {
        return this.token.getKind() == tokenKind;
    }

    @Override
    public boolean isWhiteSpace() {
        return this.token.getCategory().isWhitespace();
    }

    public String toString() {
        return this.token.toString();
    }

    public TokenTextElement(int tokenKind, String text) {
        this(new JavaToken(tokenKind, text));
    }

    public TokenTextElement(int tokenKind) {
        this(new JavaToken(tokenKind));
    }
}
