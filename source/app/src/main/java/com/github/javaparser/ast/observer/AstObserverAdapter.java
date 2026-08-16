package com.github.javaparser.ast.observer;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.observer.AstObserver;

public abstract class AstObserverAdapter implements AstObserver {
    @Override
    public void listChange(NodeList<?> observedNode, AstObserver.ListChangeType type, int index, Node nodeAddedOrRemoved) {
    }

    @Override
    public void listReplacement(NodeList<?> observedNode, int index, Node oldNode, Node newNode) {
    }

    @Override
    public void parentChange(Node observedNode, Node previousParent, Node newParent) {
    }

    @Override
    public void propertyChange(Node observedNode, ObservableProperty property, Object oldValue, Object newValue) {
    }
}
