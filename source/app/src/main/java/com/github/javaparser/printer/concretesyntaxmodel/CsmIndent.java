package com.github.javaparser.printer.concretesyntaxmodel;

import com.github.javaparser.ast.Node;
import com.github.javaparser.printer.SourcePrinter;
import com.github.javaparser.printer.lexicalpreservation.TextElement;
import com.github.javaparser.printer.lexicalpreservation.TokenTextElement;

public class CsmIndent implements CsmElement {
    public boolean equals(Object obj) {
        return obj instanceof CsmIndent;
    }

    public int hashCode() {
        return 1;
    }

    @Override
    public boolean isCorrespondingElement(TextElement textElement) {
        return (textElement instanceof TokenTextElement) && ((TokenTextElement) textElement).isSpaceOrTab();
    }

    @Override
    public void prettyPrint(Node node, SourcePrinter printer) {
        printer.indent();
    }
}
