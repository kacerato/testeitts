package com.github.javaparser.printer.concretesyntaxmodel;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.printer.ConcreteSyntaxModel;
import com.github.javaparser.printer.SourcePrinter;

public class CsmSingleReference implements CsmElement {
    private final ObservableProperty property;

    public CsmSingleReference(ObservableProperty property) {
        this.property = property;
    }

    public ObservableProperty getProperty() {
        return this.property;
    }

    @Override
    public void prettyPrint(Node node, SourcePrinter printer) {
        Node valueAsSingleReference = this.property.getValueAsSingleReference(node);
        if (valueAsSingleReference != null) {
            ConcreteSyntaxModel.genericPrettyPrint(valueAsSingleReference, printer);
        }
    }

    public String toString() {
        return String.format("%s(property:%s)", getClass().getSimpleName(), getProperty());
    }
}
