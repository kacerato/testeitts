package com.github.javaparser.ast.observer;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;

public interface AstObserver {

    public enum ListChangeType {
        ADDITION,
        REMOVAL
    }

    void listChange(NodeList<?> observedNode, ListChangeType type, int index, Node nodeAddedOrRemoved);

    void listReplacement(NodeList<?> observedNode, int index, Node oldNode, Node newNode);

    void parentChange(Node observedNode, Node previousParent, Node newParent);

    void propertyChange(Node observedNode, ObservableProperty property, Object oldValue, Object newValue);
}
