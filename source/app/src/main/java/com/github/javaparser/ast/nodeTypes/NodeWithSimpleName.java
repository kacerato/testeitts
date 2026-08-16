package com.github.javaparser.ast.nodeTypes;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.expr.NameExpr;
import com.github.javaparser.ast.expr.SimpleName;
import com.github.javaparser.utils.Utils;

public interface NodeWithSimpleName<N extends Node> {
    SimpleName getName();

    default NameExpr getNameAsExpression() {
        return new NameExpr(getName());
    }

    default String getNameAsString() {
        return getName().getIdentifier();
    }

    N setName(SimpleName name);

    default N setName(String name) {
        Utils.assertNonEmpty(name);
        return setName(new SimpleName(name));
    }
}
