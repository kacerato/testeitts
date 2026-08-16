package org.openjdk.source.tree;

public interface IfTree extends StatementTree {
    ExpressionTree getCondition();

    StatementTree getElseStatement();

    StatementTree getThenStatement();
}
