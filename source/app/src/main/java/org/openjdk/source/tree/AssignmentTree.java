package org.openjdk.source.tree;

public interface AssignmentTree extends ExpressionTree {
    ExpressionTree getExpression();

    ExpressionTree getVariable();
}
