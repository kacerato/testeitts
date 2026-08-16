package com.github.javaparser.printer.lexicalpreservation.changes;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.observer.ObservableProperty;

public class NoChange implements Change {
    @Override
    public ObservableProperty getProperty() {
        return null;
    }

    @Override
    public Object getValue(ObservableProperty property, Node node) {
        return property.getRawValue(node);
    }
}
