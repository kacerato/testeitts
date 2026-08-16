package com.github.javaparser.ast.expr;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.LongLiteralExprMetaModel;
import com.github.javaparser.utils.Utils;
import java.lang.constant.ConstantDescs;
import java.math.BigInteger;
import java.util.Objects;
import java.util.Optional;
import java.util.function.Consumer;

public class LongLiteralExpr extends LiteralStringValueExpr {
    public static final BigInteger MAX_63_BIT_UNSIGNED_VALUE_AS_BIG_INTEGER = new BigInteger("9223372036854775808");
    public static final String MAX_63_BIT_UNSIGNED_VALUE_AS_STRING = "9223372036854775808L";

    public LongLiteralExpr() {
        this(null, "0");
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (LongLiteralExpr) arg);
    }

    @Deprecated
    public long asLong() {
        String replaceAll = this.value.replaceAll(ConstantDescs.DEFAULT_NAME, "");
        char charAt = replaceAll.charAt(replaceAll.length() - 1);
        if (charAt == 'l' || charAt == 'L') {
            replaceAll = replaceAll.substring(0, replaceAll.length() - 1);
        }
        return (replaceAll.startsWith("0x") || replaceAll.startsWith("0X")) ? Long.parseUnsignedLong(replaceAll.substring(2), 16) : (replaceAll.startsWith("0b") || replaceAll.startsWith("0B")) ? Long.parseUnsignedLong(replaceAll.substring(2), 2) : (replaceAll.length() <= 1 || !replaceAll.startsWith("0")) ? Long.parseLong(replaceAll) : Long.parseUnsignedLong(replaceAll.substring(1), 8);
    }

    @Override
    public LongLiteralExpr asLongLiteralExpr() {
        return this;
    }

    public Number asNumber() {
        return (Objects.equals(this.value, MAX_63_BIT_UNSIGNED_VALUE_AS_STRING) && Utils.hasUnaryMinusAsParent(this)) ? MAX_63_BIT_UNSIGNED_VALUE_AS_BIG_INTEGER : Long.valueOf(asLong());
    }

    @Override
    public void ifLongLiteralExpr(Consumer<LongLiteralExpr> action) {
        action.accept(this);
    }

    @Override
    public boolean isLongLiteralExpr() {
        return true;
    }

    @Deprecated
    public LongLiteralExpr setLong(long value) {
        this.value = String.valueOf(value);
        return this;
    }

    @Override
    public Optional<LongLiteralExpr> toLongLiteralExpr() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public LongLiteralExpr(final String value) {
        this(null, value);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (LongLiteralExpr) arg);
    }

    public LongLiteralExpr(TokenRange tokenRange, String value) {
        super(tokenRange, value);
        customInitialization();
    }

    @Deprecated
    public LongLiteralExpr(final long value) {
        this(null, String.valueOf(value));
    }

    @Override
    public LongLiteralExprMetaModel getMetaModel() {
        return JavaParserMetaModel.longLiteralExprMetaModel;
    }

    @Override
    public LongLiteralExpr mo1220clone() {
        return (LongLiteralExpr) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
