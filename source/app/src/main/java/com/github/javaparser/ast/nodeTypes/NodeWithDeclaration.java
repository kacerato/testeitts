package com.github.javaparser.ast.nodeTypes;

public interface NodeWithDeclaration {
    default String getDeclarationAsString() {
        return getDeclarationAsString(true, true, true);
    }

    String getDeclarationAsString(boolean includingModifiers, boolean includingThrows, boolean includingParameterName);

    default String getDeclarationAsString(boolean includingModifiers, boolean includingThrows) {
        return getDeclarationAsString(includingModifiers, includingThrows, true);
    }
}
