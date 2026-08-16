package org.openjdk.source.tree;

import java.util.List;

public interface LambdaExpressionTree extends ExpressionTree {

    public enum BodyKind {
        EXPRESSION,
        STATEMENT
    }

    Tree getBody();

    BodyKind getBodyKind();

    List<? extends VariableTree> getParameters();
}
