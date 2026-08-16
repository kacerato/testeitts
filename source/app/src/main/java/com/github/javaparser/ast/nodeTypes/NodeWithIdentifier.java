package com.github.javaparser.ast.nodeTypes;

import com.github.javaparser.ast.Node;
import com.github.javaparser.utils.Utils;

public interface NodeWithIdentifier<N extends Node> {
    default String getId() {
        return getIdentifier();
    }

    String getIdentifier();

    default N setId(String identifier) {
        Utils.assertNonEmpty(identifier);
        return setIdentifier(identifier);
    }

    N setIdentifier(String identifier);
}
