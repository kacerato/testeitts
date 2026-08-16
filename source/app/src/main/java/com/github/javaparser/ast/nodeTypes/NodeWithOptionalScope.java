package com.github.javaparser.ast.nodeTypes;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.expr.Expression;
import java.util.Optional;

public interface NodeWithOptionalScope<N extends Node> extends NodeWithTraversableScope {
    Optional<Expression> getScope();

    N removeScope();

    N setScope(Expression scope);

    @Override
    default Optional<Expression> traverseScope() {
        return getScope();
    }
}
