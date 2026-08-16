package org.openjdk.source.tree;

public interface ArrayAccessTree extends ExpressionTree {
    ExpressionTree getExpression();

    ExpressionTree getIndex();
}
