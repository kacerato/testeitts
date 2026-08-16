package com.github.javaparser.ast.nodeTypes;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.stmt.BlockStmt;
import java.util.Optional;

public interface NodeWithOptionalBlockStmt<N extends Node> {
    default BlockStmt createBody() {
        BlockStmt blockStmt = new BlockStmt();
        setBody(blockStmt);
        return blockStmt;
    }

    Optional<BlockStmt> getBody();

    N removeBody();

    N setBody(BlockStmt block);
}
