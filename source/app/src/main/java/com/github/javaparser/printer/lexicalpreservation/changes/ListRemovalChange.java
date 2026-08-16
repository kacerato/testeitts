package com.github.javaparser.printer.lexicalpreservation.changes;

import com.github.javaparser.Range;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.observer.ObservableProperty;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Predicate;

public class ListRemovalChange implements Change {
    private final int index;
    private final ObservableProperty observableProperty;

    public ListRemovalChange(ObservableProperty observableProperty, int index) {
        this.observableProperty = observableProperty;
        this.index = index;
    }

    private boolean isSameNode(Node n12, Node n22) {
        return n12.equals(n22) && isSameRange(n12, n22);
    }

    private boolean isSameRange(Node n12, Node n22) {
        return !(n12.hasRange() || n22.hasRange()) || (n12.hasRange() && n22.hasRange() && isSameRange(n12.getRange().get(), n22.getRange().get()));
    }

    public boolean lambda$getValue$0(final NodeList currentNodeList, Node n10) {
        return !isSameNode(currentNodeList.get(this.index), n10);
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
        final NodeList nodeList = (NodeList) value;
        final NodeList nodeList2 = new NodeList();
        nodeList2.setParentNode(nodeList.getParentNodeForChildren());
        nodeList.stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getValue$0;
                lambda$getValue$0 = ListRemovalChange.this.lambda$getValue$0(nodeList, (Node) obj);
                return lambda$getValue$0;
            }
        }).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                NodeList.this.add((NodeList) ((Node) obj));
            }
        });
        return nodeList2;
    }

    private boolean isSameRange(Range r12, Range r22) {
        return r12.equals(r22);
    }
}
