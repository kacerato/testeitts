package com.github.javaparser.printer.concretesyntaxmodel;

import com.github.javaparser.ast.Node;
import com.github.javaparser.printer.SourcePrinter;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.stream.Collectors;
import org.openjdk.tools.doclint.DocLint;

public class CsmSequence implements CsmElement {
    private List<CsmElement> elements;

    public CsmSequence(List<CsmElement> elements) {
        elements.getClass();
        if (elements.stream().anyMatch(new d())) {
            throw new IllegalArgumentException("Null element in the sequence");
        }
        this.elements = elements;
    }

    public List<CsmElement> getElements() {
        return this.elements;
    }

    @Override
    public void prettyPrint(final Node node, final SourcePrinter printer) {
        this.elements.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((CsmElement) obj).prettyPrint(Node.this, printer);
            }
        });
    }

    public String toString() {
        return (String) this.elements.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                String obj2;
                obj2 = ((CsmElement) obj).toString();
                return obj2;
            }
        }).collect(Collectors.joining(DocLint.SEPARATOR, "CsmSequence[", "]"));
    }
}
