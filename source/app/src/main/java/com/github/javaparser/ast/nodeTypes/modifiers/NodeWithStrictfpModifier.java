package com.github.javaparser.ast.nodeTypes.modifiers;

import com.github.javaparser.ast.Modifier;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.nodeTypes.NodeWithModifiers;

public interface NodeWithStrictfpModifier<N extends Node> extends NodeWithModifiers<N> {
    default boolean isStrictfp() {
        return hasModifier(Modifier.Keyword.STRICTFP);
    }

    default N setStrictfp(boolean set) {
        return setModifier(Modifier.Keyword.STRICTFP, set);
    }
}
