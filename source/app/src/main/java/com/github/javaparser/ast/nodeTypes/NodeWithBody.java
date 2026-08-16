package com.github.javaparser.ast.nodeTypes;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.stmt.BlockStmt;
import com.github.javaparser.ast.stmt.Statement;
import java.util.function.Function;

public interface NodeWithBody<N extends Node> {
    static Boolean lambda$hasEmptyBody$0(BlockStmt bs) {
        return Boolean.valueOf(bs.isEmpty());
    }

    default BlockStmt createBlockStatementAsBody() {
        BlockStmt blockStmt = new BlockStmt();
        setBody(blockStmt);
        return blockStmt;
    }

    Statement getBody();

    default boolean hasEmptyBody() {
        Statement body = getBody();
        return ((Boolean) body.toBlockStmt().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Boolean lambda$hasEmptyBody$0;
                lambda$hasEmptyBody$0 = NodeWithBody.lambda$hasEmptyBody$0((BlockStmt) obj);
                return lambda$hasEmptyBody$0;
            }
        }).orElse(Boolean.valueOf(body.isEmptyStmt()))).booleanValue();
    }

    N setBody(final Statement body);
}
