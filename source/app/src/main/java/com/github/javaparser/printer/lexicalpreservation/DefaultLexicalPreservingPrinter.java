package com.github.javaparser.printer.lexicalpreservation;

import com.github.javaparser.ast.Node;
import com.github.javaparser.printer.Printer;
import java.util.function.Consumer;

public class DefaultLexicalPreservingPrinter implements Printer {
    @Override
    public String print(Node node) {
        final LexicalPreservingVisitor lexicalPreservingVisitor = new LexicalPreservingVisitor();
        LexicalPreservingPrinter.getOrCreateNodeText(node).getElements().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((TextElement) obj).accept(LexicalPreservingVisitor.this);
            }
        });
        return lexicalPreservingVisitor.toString();
    }
}
