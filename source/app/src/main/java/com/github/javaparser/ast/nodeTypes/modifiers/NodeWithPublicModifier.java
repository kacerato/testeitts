package com.github.javaparser.ast.nodeTypes.modifiers;

import com.github.javaparser.ast.Modifier;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.nodeTypes.NodeWithModifiers;

public interface NodeWithPublicModifier<N extends Node> extends NodeWithModifiers<N> {
    default boolean isPublic() {
        return hasModifier(Modifier.Keyword.PUBLIC);
    }

    default N setPublic(boolean set) {
        return setModifier(Modifier.Keyword.PUBLIC, set);
    }
}
