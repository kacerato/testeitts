package com.github.javaparser.printer.lexicalpreservation.changes;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.observer.ObservableProperty;
import java.util.Optional;

public class ListAdditionChange implements Change {
    private final int index;
    private final Node nodeAdded;
    private final ObservableProperty observableProperty;

    public ListAdditionChange(ObservableProperty observableProperty, int index, Node nodeAdded) {
        this.observableProperty = observableProperty;
        this.index = index;
        this.nodeAdded = nodeAdded;
    }

    @Override
    public ObservableProperty getProperty() {
        return this.observableProperty;
    }

    @Override
    public Object getValue(ObservableProperty property, Node node) {
        if (property != this.observableProperty) {
            return new NoChange().getValue(property, node);
        }
        Object value = new NoChange().getValue(property, node);
        if (value instanceof Optional) {
            value = ((Optional) value).orElse(null);
        }
        if (!(value instanceof NodeList)) {
            throw new IllegalStateException("Expected NodeList, found " + value.getClass().getCanonicalName());
        }
        NodeList nodeList = (NodeList) value;
        NodeList nodeList2 = new NodeList();
        nodeList2.setParentNode(nodeList.getParentNodeForChildren());
        nodeList2.addAll(nodeList);
        nodeList2.add(this.index, (int) this.nodeAdded);
        return nodeList2;
    }
}
