package com.github.javaparser.ast.nodeTypes.modifiers;

import com.github.javaparser.ast.Modifier;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.nodeTypes.NodeWithModifiers;

public interface NodeWithProtectedModifier<N extends Node> extends NodeWithModifiers<N> {
    default boolean isProtected() {
        return hasModifier(Modifier.Keyword.PROTECTED);
    }

    default N setProtected(boolean set) {
        return setModifier(Modifier.Keyword.PROTECTED, set);
    }
}
