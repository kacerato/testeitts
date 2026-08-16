package org.openjdk.source.tree;

public interface CompoundAssignmentTree extends ExpressionTree {
    ExpressionTree getExpression();

    ExpressionTree getVariable();
}
