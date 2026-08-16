package org.openjdk.source.tree;

public interface TypeCastTree extends ExpressionTree {
    ExpressionTree getExpression();

    Tree getType();
}
