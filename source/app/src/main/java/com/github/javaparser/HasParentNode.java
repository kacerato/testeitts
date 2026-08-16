package com.github.javaparser;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.observer.Observable;
import java.util.Optional;
import java.util.function.Predicate;

public interface HasParentNode<T> extends Observable {
    static boolean lambda$findAncestor$0(Object x10) {
        return true;
    }

    static boolean lambda$isDescendantOf$1(final Node ancestor, Node n10) {
        return n10 == ancestor;
    }

    default <N> Optional<N> findAncestor(Class<N>... types) {
        return findAncestor(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$findAncestor$0;
                lambda$findAncestor$0 = HasParentNode.lambda$findAncestor$0(obj);
                return lambda$findAncestor$0;
            }
        }, types);
    }

    Optional<Node> getParentNode();

    Node getParentNodeForChildren();

    default boolean hasParentNode() {
        return getParentNode().isPresent();
    }

    default boolean isDescendantOf(final Node ancestor) {
        return findAncestor(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$isDescendantOf$1;
                lambda$isDescendantOf$1 = HasParentNode.lambda$isDescendantOf$1(Node.this, (Node) obj);
                return lambda$isDescendantOf$1;
            }
        }, Node.class).isPresent();
    }

    T setParentNode(Node parentNode);

    @Deprecated
    default <N> Optional<N> findAncestor(Class<N> type, Predicate<N> predicate) {
        return findAncestor(predicate, type);
    }

    default <N> Optional<N> findAncestor(Predicate<N> predicate, Class<N>... types) {
        if (!hasParentNode()) {
            return Optional.empty();
        }
        Node node = getParentNode().get();
        for (Class<N> cls : types) {
            if (cls.isAssignableFrom(node.getClass()) && predicate.test(cls.cast(node))) {
                return Optional.of(cls.cast(node));
            }
        }
        return node.findAncestor(predicate, types);
    }
}
