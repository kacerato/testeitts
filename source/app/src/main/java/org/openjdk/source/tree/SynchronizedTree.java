package org.openjdk.source.tree;

public interface SynchronizedTree extends StatementTree {
    BlockTree getBlock();

    ExpressionTree getExpression();
}
