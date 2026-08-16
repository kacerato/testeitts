package org.openjdk.source.tree;

public interface AssertTree extends StatementTree {
    ExpressionTree getCondition();

    ExpressionTree getDetail();
}
