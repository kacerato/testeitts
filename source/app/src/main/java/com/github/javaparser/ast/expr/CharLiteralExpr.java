package com.github.javaparser.ast.expr;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.CharLiteralExprMetaModel;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.utils.StringEscapeUtils;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public class CharLiteralExpr extends LiteralStringValueExpr {
    public CharLiteralExpr() {
        this(null, "?");
    }

    public static CharLiteralExpr escape(String string) {
        return new CharLiteralExpr(Utils.escapeEndOfLines(string));
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (CharLiteralExpr) arg);
    }

    public char asChar() {
        return StringEscapeUtils.unescapeJava(this.value).charAt(0);
    }

    @Override
    public CharLiteralExpr asCharLiteralExpr() {
        return this;
    }

    @Override
    public void ifCharLiteralExpr(Consumer<CharLiteralExpr> action) {
        action.accept(this);
    }

    @Override
    public boolean isCharLiteralExpr() {
        return true;
    }

    public CharLiteralExpr setChar(char value) {
        this.value = String.valueOf(value);
        return this;
    }

    @Override
    public Optional<CharLiteralExpr> toCharLiteralExpr() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public CharLiteralExpr(String value) {
        this(null, value);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (CharLiteralExpr) arg);
    }

    public CharLiteralExpr(char value) {
        this(null, StringEscapeUtils.escapeJava(String.valueOf(value)));
    }

    public CharLiteralExpr(TokenRange tokenRange, String value) {
        super(tokenRange, value);
        customInitialization();
    }

    @Override
    public CharLiteralExprMetaModel getMetaModel() {
        return JavaParserMetaModel.charLiteralExprMetaModel;
    }

    @Override
    public CharLiteralExpr mo1220clone() {
        return (CharLiteralExpr) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
