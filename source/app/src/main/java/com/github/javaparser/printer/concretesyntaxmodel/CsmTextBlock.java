package com.github.javaparser.printer.concretesyntaxmodel;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.printer.SourcePrinter;

public class CsmTextBlock implements CsmElement {
    private final ObservableProperty property;

    public CsmTextBlock(ObservableProperty property) {
        this.property = property;
    }

    public ObservableProperty getProperty() {
        return this.property;
    }

    @Override
    public void prettyPrint(Node node, SourcePrinter printer) {
        printer.print("\"\"\"");
        printer.println();
        printer.print(this.property.getValueAsStringAttribute(node));
        printer.print("\"\"\"");
    }

    public String toString() {
        return String.format("%s(property:%s)", getClass().getSimpleName(), getProperty());
    }
}
