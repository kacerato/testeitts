package com.github.javaparser.ast.observer;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.observer.AstObserver;

public abstract class PropagatingAstObserver implements AstObserver {
    private void considerAdding(Object element) {
        if (element instanceof Node) {
            ((Node) element).registerForSubtree(this);
        } else if (element instanceof Observable) {
            ((Observable) element).register(this);
        }
    }

    private void considerRemoving(Object element) {
        if (element instanceof Observable) {
            Observable observable = (Observable) element;
            if (observable.isRegistered(this)) {
                observable.unregister(this);
            }
        }
    }

    public static PropagatingAstObserver transformInPropagatingObserver(final AstObserver observer) {
        return observer instanceof PropagatingAstObserver ? (PropagatingAstObserver) observer : new PropagatingAstObserver() {
            @Override
            public void concreteListChange(NodeList<?> observedNode, AstObserver.ListChangeType type, int index, Node nodeAddedOrRemoved) {
                AstObserver.this.listChange(observedNode, type, index, nodeAddedOrRemoved);
            }

            @Override
            public void concretePropertyChange(Node observedNode, ObservableProperty property, Object oldValue, Object newValue) {
                AstObserver.this.propertyChange(observedNode, property, oldValue, newValue);
            }

            @Override
            public void parentChange(Node observedNode, Node previousParent, Node newParent) {
                AstObserver.this.parentChange(observedNode, previousParent, newParent);
            }
        };
    }

    public void concreteListChange(NodeList<?> observedNode, AstObserver.ListChangeType type, int index, Node nodeAddedOrRemoved) {
    }

    public void concreteListReplacement(NodeList<?> observedNode, int index, Node oldValue, Node newValue) {
    }

    public void concretePropertyChange(Node observedNode, ObservableProperty property, Object oldValue, Object newValue) {
    }

    @Override
    public final void listChange(NodeList<?> observedNode, AstObserver.ListChangeType type, int index, Node nodeAddedOrRemoved) {
        if (type == AstObserver.ListChangeType.REMOVAL) {
            considerRemoving(nodeAddedOrRemoved);
        } else if (type == AstObserver.ListChangeType.ADDITION) {
            considerAdding(nodeAddedOrRemoved);
        }
        concreteListChange(observedNode, type, index, nodeAddedOrRemoved);
    }

    @Override
    public void listReplacement(NodeList<?> observedNode, int index, Node oldNode, Node newNode) {
        if (oldNode == newNode) {
            return;
        }
        considerRemoving(oldNode);
        considerAdding(newNode);
        concreteListReplacement(observedNode, index, oldNode, newNode);
    }

    @Override
    public void parentChange(Node observedNode, Node previousParent, Node newParent) {
    }

    @Override
    public final void propertyChange(Node observedNode, ObservableProperty property, Object oldValue, Object newValue) {
        considerRemoving(oldValue);
        considerAdding(newValue);
        concretePropertyChange(observedNode, property, oldValue, newValue);
    }
}
