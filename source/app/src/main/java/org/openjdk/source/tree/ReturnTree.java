package org.openjdk.source.tree;

public interface ReturnTree extends StatementTree {
    ExpressionTree getExpression();
}
