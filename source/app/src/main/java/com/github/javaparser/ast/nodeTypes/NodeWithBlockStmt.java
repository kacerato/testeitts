package com.github.javaparser.ast.nodeTypes;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.stmt.BlockStmt;

public interface NodeWithBlockStmt<N extends Node> {
    default BlockStmt createBody() {
        BlockStmt blockStmt = new BlockStmt();
        setBody(blockStmt);
        return blockStmt;
    }

    BlockStmt getBody();

    N setBody(BlockStmt block);
}
