package com.github.javaparser.ast.expr;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.ArrayAccessExprMetaModel;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public class ArrayAccessExpr extends Expression {
    private Expression index;
    private Expression name;

    public ArrayAccessExpr() {
        this(null, new NameExpr(), new IntegerLiteralExpr());
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (ArrayAccessExpr) arg);
    }

    @Override
    public ArrayAccessExpr asArrayAccessExpr() {
        return this;
    }

    public Expression getIndex() {
        return this.index;
    }

    public Expression getName() {
        return this.name;
    }

    @Override
    public void ifArrayAccessExpr(Consumer<ArrayAccessExpr> action) {
        action.accept(this);
    }

    @Override
    public boolean isArrayAccessExpr() {
        return true;
    }

    @Override
    public boolean replace(Node node, Node replacementNode) {
        if (node == null) {
            return false;
        }
        if (node == this.index) {
            setIndex((Expression) replacementNode);
            return true;
        }
        if (node != this.name) {
            return super.replace(node, replacementNode);
        }
        setName((Expression) replacementNode);
        return true;
    }

    public ArrayAccessExpr setIndex(final Expression index) {
        Utils.assertNotNull(index);
        Expression expression = this.index;
        if (index == expression) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.INDEX, expression, index);
        Expression expression2 = this.index;
        if (expression2 != null) {
            expression2.setParentNode((Node) null);
        }
        this.index = index;
        setAsParentNodeOf(index);
        return this;
    }

    public ArrayAccessExpr setName(final Expression name) {
        Utils.assertNotNull(name);
        Expression expression = this.name;
        if (name == expression) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.NAME, expression, name);
        Expression expression2 = this.name;
        if (expression2 != null) {
            expression2.setParentNode((Node) null);
        }
        this.name = name;
        setAsParentNodeOf(name);
        return this;
    }

    @Override
    public Optional<ArrayAccessExpr> toArrayAccessExpr() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public ArrayAccessExpr(Expression name, Expression index) {
        this(null, name, index);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (ArrayAccessExpr) arg);
    }

    public ArrayAccessExpr(TokenRange tokenRange, Expression name, Expression index) {
        super(tokenRange);
        setName(name);
        setIndex(index);
        customInitialization();
    }

    @Override
    public ArrayAccessExprMetaModel getMetaModel() {
        return JavaParserMetaModel.arrayAccessExprMetaModel;
    }

    @Override
    public ArrayAccessExpr mo1220clone() {
        return (ArrayAccessExpr) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
