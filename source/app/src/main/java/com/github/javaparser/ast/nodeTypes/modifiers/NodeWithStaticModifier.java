package com.github.javaparser.ast.nodeTypes.modifiers;

import com.github.javaparser.ast.Modifier;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.nodeTypes.NodeWithModifiers;

public interface NodeWithStaticModifier<N extends Node> extends NodeWithModifiers<N> {
    default boolean isStatic() {
        return hasModifier(Modifier.Keyword.STATIC);
    }

    default N setStatic(boolean set) {
        return setModifier(Modifier.Keyword.STATIC, set);
    }
}
