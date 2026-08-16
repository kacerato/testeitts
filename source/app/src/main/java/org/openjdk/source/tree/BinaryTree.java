package org.openjdk.source.tree;

public interface BinaryTree extends ExpressionTree {
    ExpressionTree getLeftOperand();

    ExpressionTree getRightOperand();
}
