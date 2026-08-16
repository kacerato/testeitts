package com.github.javaparser.ast.expr;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.BooleanLiteralExprMetaModel;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import java.util.Optional;
import java.util.function.Consumer;

public class BooleanLiteralExpr extends LiteralExpr {
    private boolean value;

    public BooleanLiteralExpr() {
        this(null, false);
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (BooleanLiteralExpr) arg);
    }

    @Override
    public BooleanLiteralExpr asBooleanLiteralExpr() {
        return this;
    }

    public boolean getValue() {
        return isValue();
    }

    @Override
    public void ifBooleanLiteralExpr(Consumer<BooleanLiteralExpr> action) {
        action.accept(this);
    }

    @Override
    public boolean isBooleanLiteralExpr() {
        return true;
    }

    public boolean isValue() {
        return this.value;
    }

    public BooleanLiteralExpr setValue(final boolean value) {
        boolean z10 = this.value;
        if (value == z10) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.VALUE, Boolean.valueOf(z10), Boolean.valueOf(value));
        this.value = value;
        return this;
    }

    @Override
    public Optional<BooleanLiteralExpr> toBooleanLiteralExpr() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public BooleanLiteralExpr(boolean value) {
        this(null, value);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (BooleanLiteralExpr) arg);
    }

    public BooleanLiteralExpr(TokenRange tokenRange, boolean value) {
        super(tokenRange);
        setValue(value);
        customInitialization();
    }

    @Override
    public BooleanLiteralExprMetaModel getMetaModel() {
        return JavaParserMetaModel.booleanLiteralExprMetaModel;
    }

    @Override
    public BooleanLiteralExpr mo1220clone() {
        return (BooleanLiteralExpr) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
