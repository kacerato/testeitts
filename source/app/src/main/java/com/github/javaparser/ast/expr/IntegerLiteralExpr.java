package com.github.javaparser.ast.expr;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.IntegerLiteralExprMetaModel;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.utils.Utils;
import java.lang.constant.ConstantDescs;
import java.util.Objects;
import java.util.Optional;
import java.util.function.Consumer;

public class IntegerLiteralExpr extends LiteralStringValueExpr {
    public static final long MAX_31_BIT_UNSIGNED_VALUE_AS_LONG = 2147483648L;
    public static final String MAX_31_BIT_UNSIGNED_VALUE_AS_STRING = "2147483648";

    public IntegerLiteralExpr() {
        this(null, "0");
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (IntegerLiteralExpr) arg);
    }

    @Deprecated
    public int asInt() {
        String replaceAll = this.value.replaceAll(ConstantDescs.DEFAULT_NAME, "");
        return (replaceAll.startsWith("0x") || replaceAll.startsWith("0X")) ? Integer.parseUnsignedInt(replaceAll.substring(2), 16) : (replaceAll.startsWith("0b") || replaceAll.startsWith("0B")) ? Integer.parseUnsignedInt(replaceAll.substring(2), 2) : (replaceAll.length() <= 1 || !replaceAll.startsWith("0")) ? Integer.parseInt(replaceAll) : Integer.parseUnsignedInt(replaceAll.substring(1), 8);
    }

    @Override
    public IntegerLiteralExpr asIntegerLiteralExpr() {
        return this;
    }

    public Number asNumber() {
        if (Objects.equals(this.value, MAX_31_BIT_UNSIGNED_VALUE_AS_STRING) && Utils.hasUnaryMinusAsParent(this)) {
            return 2147483648L;
        }
        return Integer.valueOf(asInt());
    }

    @Override
    public void ifIntegerLiteralExpr(Consumer<IntegerLiteralExpr> action) {
        action.accept(this);
    }

    @Override
    public boolean isIntegerLiteralExpr() {
        return true;
    }

    @Deprecated
    public IntegerLiteralExpr setInt(int value) {
        this.value = String.valueOf(value);
        return this;
    }

    @Override
    public Optional<IntegerLiteralExpr> toIntegerLiteralExpr() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public IntegerLiteralExpr(final String value) {
        this(null, value);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (IntegerLiteralExpr) arg);
    }

    public IntegerLiteralExpr(TokenRange tokenRange, String value) {
        super(tokenRange, value);
        customInitialization();
    }

    @Deprecated
    public IntegerLiteralExpr(final int value) {
        this(null, String.valueOf(value));
    }

    @Override
    public IntegerLiteralExprMetaModel getMetaModel() {
        return JavaParserMetaModel.integerLiteralExprMetaModel;
    }

    @Override
    public IntegerLiteralExpr mo1220clone() {
        return (IntegerLiteralExpr) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
