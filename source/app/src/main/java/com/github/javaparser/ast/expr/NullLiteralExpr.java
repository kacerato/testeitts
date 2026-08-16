package com.github.javaparser.ast.expr;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.NullLiteralExprMetaModel;
import java.util.Optional;
import java.util.function.Consumer;

public class NullLiteralExpr extends LiteralExpr {
    @AllFieldsConstructor
    public NullLiteralExpr() {
        this(null);
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (NullLiteralExpr) arg);
    }

    @Override
    public NullLiteralExpr asNullLiteralExpr() {
        return this;
    }

    @Override
    public void ifNullLiteralExpr(Consumer<NullLiteralExpr> action) {
        action.accept(this);
    }

    @Override
    public boolean isNullLiteralExpr() {
        return true;
    }

    @Override
    public Optional<NullLiteralExpr> toNullLiteralExpr() {
        return Optional.of(this);
    }

    public NullLiteralExpr(TokenRange tokenRange) {
        super(tokenRange);
        customInitialization();
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (NullLiteralExpr) arg);
    }

    @Override
    public NullLiteralExprMetaModel getMetaModel() {
        return JavaParserMetaModel.nullLiteralExprMetaModel;
    }

    @Override
    public NullLiteralExpr mo1220clone() {
        return (NullLiteralExpr) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
