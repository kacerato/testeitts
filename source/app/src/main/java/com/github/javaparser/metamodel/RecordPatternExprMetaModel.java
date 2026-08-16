package com.github.javaparser.metamodel;

import com.github.javaparser.ast.expr.RecordPatternExpr;
import java.util.Optional;

public class RecordPatternExprMetaModel extends PatternExprMetaModel {
    public PropertyMetaModel modifiersPropertyMetaModel;
    public PropertyMetaModel patternListPropertyMetaModel;

    public RecordPatternExprMetaModel(Optional<BaseNodeMetaModel> superBaseNodeMetaModel) {
        super(superBaseNodeMetaModel, RecordPatternExpr.class, "RecordPatternExpr", "com.github.javaparser.ast.expr", false, false);
    }
}
