package com.github.javaparser.ast.expr;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.LiteralStringValueExprMetaModel;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public abstract class LiteralStringValueExpr extends LiteralExpr {
    protected String value;

    @AllFieldsConstructor
    public LiteralStringValueExpr(final String value) {
        this(null, value);
    }

    @Override
    public LiteralStringValueExpr asLiteralStringValueExpr() {
        return this;
    }

    public String getValue() {
        return this.value;
    }

    @Override
    public void ifLiteralStringValueExpr(Consumer<LiteralStringValueExpr> action) {
        action.accept(this);
    }

    @Override
    public boolean isLiteralStringValueExpr() {
        return true;
    }

    public LiteralStringValueExpr setValue(final String value) {
        Utils.assertNotNull(value);
        String str = this.value;
        if (value == str) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.VALUE, str, value);
        this.value = value;
        return this;
    }

    @Override
    public Optional<LiteralStringValueExpr> toLiteralStringValueExpr() {
        return Optional.of(this);
    }

    public LiteralStringValueExpr(TokenRange tokenRange, String value) {
        super(tokenRange);
        setValue(value);
        customInitialization();
    }

    @Override
    public LiteralStringValueExprMetaModel getMetaModel() {
        return JavaParserMetaModel.literalStringValueExprMetaModel;
    }

    @Override
    public LiteralStringValueExpr mo1220clone() {
        return (LiteralStringValueExpr) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
