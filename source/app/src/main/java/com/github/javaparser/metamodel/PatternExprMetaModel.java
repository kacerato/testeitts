package com.github.javaparser.metamodel;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.expr.PatternExpr;
import java.util.Optional;

public class PatternExprMetaModel extends ExpressionMetaModel {
    public PropertyMetaModel typePropertyMetaModel;

    public PatternExprMetaModel(Optional<BaseNodeMetaModel> superBaseNodeMetaModel) {
        super(superBaseNodeMetaModel, PatternExpr.class, "PatternExpr", "com.github.javaparser.ast.expr", true, false);
    }

    public PatternExprMetaModel(Optional<BaseNodeMetaModel> superNodeMetaModel, Class<? extends Node> type, String name, String packageName, boolean isAbstract, boolean hasWildcard) {
        super(superNodeMetaModel, type, name, packageName, isAbstract, hasWildcard);
    }
}
