package com.github.javaparser.metamodel;

import com.github.javaparser.ast.expr.TypePatternExpr;
import java.util.Optional;

public class TypePatternExprMetaModel extends PatternExprMetaModel {
    public PropertyMetaModel modifiersPropertyMetaModel;
    public PropertyMetaModel namePropertyMetaModel;

    public TypePatternExprMetaModel(Optional<BaseNodeMetaModel> superBaseNodeMetaModel) {
        super(superBaseNodeMetaModel, TypePatternExpr.class, "TypePatternExpr", "com.github.javaparser.ast.expr", false, false);
    }
}
