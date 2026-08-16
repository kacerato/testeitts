package com.github.javaparser.metamodel;

import com.github.javaparser.ast.expr.ArrayAccessExpr;
import java.util.Optional;

public class ArrayAccessExprMetaModel extends ExpressionMetaModel {
    public PropertyMetaModel indexPropertyMetaModel;
    public PropertyMetaModel namePropertyMetaModel;

    public ArrayAccessExprMetaModel(Optional<BaseNodeMetaModel> superBaseNodeMetaModel) {
        super(superBaseNodeMetaModel, ArrayAccessExpr.class, "ArrayAccessExpr", "com.github.javaparser.ast.expr", false, false);
    }
}
