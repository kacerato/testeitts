package com.github.javaparser.printer.lexicalpreservation;

import java.io.StringWriter;

public class LexicalPreservingVisitor {
    private StringWriter writer;

    public LexicalPreservingVisitor() {
        this(new StringWriter());
    }

    public String toString() {
        return this.writer.toString();
    }

    public void visit(ChildTextElement child) {
        child.accept(this);
    }

    public LexicalPreservingVisitor(StringWriter writer) {
        this.writer = writer;
    }

    public void visit(TokenTextElement token) {
        this.writer.append((CharSequence) token.getText());
    }
}
