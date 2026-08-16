package org.openjdk.source.tree;

public interface ParenthesizedTree extends ExpressionTree {
    ExpressionTree getExpression();
}
