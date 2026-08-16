package org.openjdk.source.tree;

public interface EnhancedForLoopTree extends StatementTree {
    ExpressionTree getExpression();

    StatementTree getStatement();

    VariableTree getVariable();
}
