package com.github.javaparser.printer.concretesyntaxmodel;

import com.github.javaparser.ast.Node;
import com.github.javaparser.printer.SourcePrinter;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.stream.Collectors;
import org.openjdk.tools.doclint.DocLint;

public class CsmMix implements CsmElement {
    private List<CsmElement> elements;

    public CsmMix(List<CsmElement> elements) {
        elements.getClass();
        if (elements.stream().anyMatch(new d())) {
            throw new IllegalArgumentException("Null element in the mix");
        }
        this.elements = elements;
    }

    public boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        if (o10 == null || getClass() != o10.getClass()) {
            return false;
        }
        List<CsmElement> list = this.elements;
        List<CsmElement> list2 = ((CsmMix) o10).elements;
        return list != null ? list.equals(list2) : list2 == null;
    }

    public List<CsmElement> getElements() {
        return this.elements;
    }

    public int hashCode() {
        List<CsmElement> list = this.elements;
        if (list != null) {
            return list.hashCode();
        }
        return 0;
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
        }).collect(Collectors.joining(DocLint.SEPARATOR, "CsmMix[", "]"));
    }
}
