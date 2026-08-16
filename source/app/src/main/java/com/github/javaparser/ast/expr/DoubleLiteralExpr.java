package com.github.javaparser.ast.expr;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.DoubleLiteralExprMetaModel;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import java.lang.constant.ConstantDescs;
import java.util.Optional;
import java.util.function.Consumer;

public class DoubleLiteralExpr extends LiteralStringValueExpr {
    public DoubleLiteralExpr() {
        this(null, "0");
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (DoubleLiteralExpr) arg);
    }

    public double asDouble() {
        return Double.parseDouble(this.value.replaceAll(ConstantDescs.DEFAULT_NAME, ""));
    }

    @Override
    public DoubleLiteralExpr asDoubleLiteralExpr() {
        return this;
    }

    @Override
    public void ifDoubleLiteralExpr(Consumer<DoubleLiteralExpr> action) {
        action.accept(this);
    }

    @Override
    public boolean isDoubleLiteralExpr() {
        return true;
    }

    public DoubleLiteralExpr setDouble(double value) {
        this.value = String.valueOf(value);
        return this;
    }

    @Override
    public Optional<DoubleLiteralExpr> toDoubleLiteralExpr() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public DoubleLiteralExpr(final String value) {
        this(null, value);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (DoubleLiteralExpr) arg);
    }

    public DoubleLiteralExpr(TokenRange tokenRange, String value) {
        super(tokenRange, value);
        customInitialization();
    }

    public DoubleLiteralExpr(final double value) {
        this(null, String.valueOf(value));
    }

    @Override
    public DoubleLiteralExprMetaModel getMetaModel() {
        return JavaParserMetaModel.doubleLiteralExprMetaModel;
    }

    @Override
    public DoubleLiteralExpr mo1220clone() {
        return (DoubleLiteralExpr) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
