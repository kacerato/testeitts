package com.github.javaparser.ast.nodeTypes.modifiers;

import com.github.javaparser.ast.Modifier;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.nodeTypes.NodeWithModifiers;

public interface NodeWithFinalModifier<N extends Node> extends NodeWithModifiers<N> {
    default boolean isFinal() {
        return hasModifier(Modifier.Keyword.FINAL);
    }

    default N setFinal(boolean set) {
        return setModifier(Modifier.Keyword.FINAL, set);
    }
}
