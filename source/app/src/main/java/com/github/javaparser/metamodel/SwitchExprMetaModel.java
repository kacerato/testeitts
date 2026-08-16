package com.github.javaparser.metamodel;

import com.github.javaparser.ast.expr.SwitchExpr;
import java.util.Optional;

public class SwitchExprMetaModel extends ExpressionMetaModel {
    public PropertyMetaModel entriesPropertyMetaModel;
    public PropertyMetaModel selectorPropertyMetaModel;

    public SwitchExprMetaModel(Optional<BaseNodeMetaModel> superBaseNodeMetaModel) {
        super(superBaseNodeMetaModel, SwitchExpr.class, "SwitchExpr", "com.github.javaparser.ast.expr", false, false);
    }
}
