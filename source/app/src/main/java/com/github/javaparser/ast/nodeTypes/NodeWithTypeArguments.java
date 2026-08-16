package com.github.javaparser.ast.nodeTypes;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.type.Type;
import com.github.javaparser.metamodel.DerivedProperty;
import java.util.Optional;

public interface NodeWithTypeArguments<N extends Node> {
    Optional<NodeList<Type>> getTypeArguments();

    @DerivedProperty
    default boolean isUsingDiamondOperator() {
        return getTypeArguments().isPresent() && getTypeArguments().get().isEmpty();
    }

    default N removeTypeArguments() {
        return setTypeArguments((NodeList<Type>) null);
    }

    default N setDiamondOperator() {
        return setTypeArguments(new NodeList<>());
    }

    N setTypeArguments(NodeList<Type> typeArguments);

    default N setTypeArguments(Type... typeArguments) {
        return setTypeArguments(NodeList.nodeList(typeArguments));
    }
}
