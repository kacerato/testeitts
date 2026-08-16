package org.openjdk.source.tree;

public interface WhileLoopTree extends StatementTree {
    ExpressionTree getCondition();

    StatementTree getStatement();
}
