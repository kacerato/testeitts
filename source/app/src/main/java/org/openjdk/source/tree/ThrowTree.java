package org.openjdk.source.tree;

public interface ThrowTree extends StatementTree {
    ExpressionTree getExpression();
}
