package com.github.javaparser.metamodel;

import com.github.javaparser.ast.expr.TextBlockLiteralExpr;
import java.util.Optional;

public class TextBlockLiteralExprMetaModel extends LiteralStringValueExprMetaModel {
    public TextBlockLiteralExprMetaModel(Optional<BaseNodeMetaModel> superBaseNodeMetaModel) {
        super(superBaseNodeMetaModel, TextBlockLiteralExpr.class, "TextBlockLiteralExpr", "com.github.javaparser.ast.expr", false, false);
    }
}
