package org.openjdk.source.tree;

public interface InstanceOfTree extends ExpressionTree {
    ExpressionTree getExpression();

    Tree getType();
}
