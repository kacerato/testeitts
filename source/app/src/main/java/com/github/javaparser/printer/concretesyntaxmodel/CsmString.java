package com.github.javaparser.printer.concretesyntaxmodel;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.printer.SourcePrinter;
import org.eclipse.jdt.internal.core.JavadocConstants;

public class CsmString implements CsmElement {
    private final ObservableProperty property;

    public CsmString(ObservableProperty property) {
        this.property = property;
    }

    public ObservableProperty getProperty() {
        return this.property;
    }

    @Override
    public void prettyPrint(Node node, SourcePrinter printer) {
        printer.print(JavadocConstants.ANCHOR_PREFIX_END);
        printer.print(this.property.getValueAsStringAttribute(node));
        printer.print(JavadocConstants.ANCHOR_PREFIX_END);
    }

    public String toString() {
        return String.format("%s(property:%s)", getClass().getSimpleName(), getProperty());
    }
}
