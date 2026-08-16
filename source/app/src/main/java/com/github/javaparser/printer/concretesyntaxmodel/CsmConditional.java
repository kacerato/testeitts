package com.github.javaparser.printer.concretesyntaxmodel;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.printer.SourcePrinter;
import java.util.Arrays;
import java.util.List;

public class CsmConditional implements CsmElement {
    private final Condition condition;
    private final CsmElement elseElement;
    private final List<ObservableProperty> properties;
    private final CsmElement thenElement;

    public enum Condition {
        IS_EMPTY {
            @Override
            public boolean evaluate(Node node, ObservableProperty property) {
                NodeList<? extends Node> valueAsMultipleReference = property.getValueAsMultipleReference(node);
                return valueAsMultipleReference == null || valueAsMultipleReference.isEmpty();
            }
        },
        IS_NOT_EMPTY {
            @Override
            public boolean evaluate(Node node, ObservableProperty property) {
                NodeList<? extends Node> valueAsMultipleReference = property.getValueAsMultipleReference(node);
                return (valueAsMultipleReference == null || valueAsMultipleReference.isEmpty()) ? false : true;
            }
        },
        IS_PRESENT {
            @Override
            public boolean evaluate(Node node, ObservableProperty property) {
                return !property.isNullOrNotPresent(node);
            }
        },
        FLAG {
            @Override
            public boolean evaluate(Node node, ObservableProperty property) {
                return property.getValueAsBooleanAttribute(node).booleanValue();
            }
        };

        public abstract boolean evaluate(Node node, ObservableProperty property);
    }

    public CsmConditional(ObservableProperty property, Condition condition, CsmElement thenElement, CsmElement elseElement) {
        this.properties = Arrays.asList(property);
        this.condition = condition;
        this.thenElement = thenElement;
        this.elseElement = elseElement;
    }

    public Condition getCondition() {
        return this.condition;
    }

    public CsmElement getElseElement() {
        return this.elseElement;
    }

    public List<ObservableProperty> getProperties() {
        return this.properties;
    }

    public ObservableProperty getProperty() {
        if (this.properties.size() <= 1) {
            return this.properties.get(0);
        }
        throw new IllegalStateException();
    }

    public CsmElement getThenElement() {
        return this.thenElement;
    }

    @Override
    public void prettyPrint(Node node, SourcePrinter printer) {
        boolean z10;
        loop0: while (true) {
            for (ObservableProperty observableProperty : this.properties) {
                z10 = z10 || this.condition.evaluate(node, observableProperty);
            }
        }
        if (z10) {
            this.thenElement.prettyPrint(node, printer);
        } else {
            this.elseElement.prettyPrint(node, printer);
        }
    }

    public CsmConditional(List<ObservableProperty> properties, Condition condition, CsmElement thenElement, CsmElement elseElement) {
        if (properties.size() >= 1) {
            this.properties = properties;
            this.condition = condition;
            this.thenElement = thenElement;
            this.elseElement = elseElement;
            return;
        }
        throw new IllegalArgumentException();
    }

    public CsmConditional(ObservableProperty property, Condition condition, CsmElement thenElement) {
        this(property, condition, thenElement, new CsmNone());
    }
}
