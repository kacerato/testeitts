package com.github.javaparser.printer.lexicalpreservation.changes;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.observer.ObservableProperty;

public class PropertyChange implements Change {
    private final Object newValue;
    private final Object oldValue;
    private final ObservableProperty property;

    public PropertyChange(ObservableProperty property, Object oldValue, Object newValue) {
        this.property = property;
        this.oldValue = oldValue;
        this.newValue = newValue;
    }

    public Object getNewValue() {
        return this.newValue;
    }

    public Object getOldValue() {
        return this.oldValue;
    }

    @Override
    public ObservableProperty getProperty() {
        return this.property;
    }

    @Override
    public Object getValue(ObservableProperty property, Node node) {
        return property == this.property ? this.newValue : property.getRawValue(node);
    }
}
