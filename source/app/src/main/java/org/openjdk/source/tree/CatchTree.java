package org.openjdk.source.tree;

public interface CatchTree extends Tree {
    BlockTree getBlock();

    VariableTree getParameter();
}
