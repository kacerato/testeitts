package com.github.javaparser.ast.expr;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.LiteralExprMetaModel;
import java.util.Optional;
import java.util.function.Consumer;

public abstract class LiteralExpr extends Expression {
    @AllFieldsConstructor
    public LiteralExpr() {
        this(null);
    }

    @Override
    public LiteralExpr asLiteralExpr() {
        return this;
    }

    @Override
    public void ifLiteralExpr(Consumer<LiteralExpr> action) {
        action.accept(this);
    }

    @Override
    public boolean isLiteralExpr() {
        return true;
    }

    @Override
    public Optional<LiteralExpr> toLiteralExpr() {
        return Optional.of(this);
    }

    public LiteralExpr(TokenRange tokenRange) {
        super(tokenRange);
        customInitialization();
    }

    @Override
    public LiteralExprMetaModel getMetaModel() {
        return JavaParserMetaModel.literalExprMetaModel;
    }

    @Override
    public LiteralExpr mo1220clone() {
        return (LiteralExpr) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
