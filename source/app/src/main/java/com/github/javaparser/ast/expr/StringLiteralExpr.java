package com.github.javaparser.ast.expr;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.StringLiteralExprMetaModel;
import com.github.javaparser.utils.StringEscapeUtils;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public class StringLiteralExpr extends LiteralStringValueExpr {
    public StringLiteralExpr() {
        this(null, "empty");
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (StringLiteralExpr) arg);
    }

    public String asString() {
        return StringEscapeUtils.unescapeJava(this.value);
    }

    @Override
    public StringLiteralExpr asStringLiteralExpr() {
        return this;
    }

    @Override
    public void ifStringLiteralExpr(Consumer<StringLiteralExpr> action) {
        action.accept(this);
    }

    @Override
    public boolean isStringLiteralExpr() {
        return true;
    }

    public StringLiteralExpr setEscapedValue(String value) {
        this.value = Utils.escapeEndOfLines(value);
        return this;
    }

    public StringLiteralExpr setString(String value) {
        this.value = StringEscapeUtils.escapeJava(value);
        return this;
    }

    @Override
    public Optional<StringLiteralExpr> toStringLiteralExpr() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public StringLiteralExpr(final String value) {
        this(null, Utils.escapeEndOfLines(value));
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (StringLiteralExpr) arg);
    }

    public StringLiteralExpr(TokenRange tokenRange, String value) {
        super(tokenRange, value);
        customInitialization();
    }

    @Override
    public StringLiteralExprMetaModel getMetaModel() {
        return JavaParserMetaModel.stringLiteralExprMetaModel;
    }

    @Override
    public StringLiteralExpr mo1220clone() {
        return (StringLiteralExpr) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
