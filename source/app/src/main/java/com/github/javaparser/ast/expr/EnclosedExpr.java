package com.github.javaparser.ast.expr;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.EnclosedExprMetaModel;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public class EnclosedExpr extends Expression {
    private Expression inner;

    public EnclosedExpr() {
        this(null, new StringLiteralExpr());
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (EnclosedExpr) arg);
    }

    @Override
    public EnclosedExpr asEnclosedExpr() {
        return this;
    }

    public Expression getInner() {
        return this.inner;
    }

    @Override
    public void ifEnclosedExpr(Consumer<EnclosedExpr> action) {
        action.accept(this);
    }

    @Override
    public boolean isEnclosedExpr() {
        return true;
    }

    @Override
    public boolean isPolyExpression() {
        return getInner().isPolyExpression();
    }

    @Override
    public boolean replace(Node node, Node replacementNode) {
        if (node == null) {
            return false;
        }
        if (node != this.inner) {
            return super.replace(node, replacementNode);
        }
        setInner((Expression) replacementNode);
        return true;
    }

    public EnclosedExpr setInner(final Expression inner) {
        Utils.assertNotNull(inner);
        Expression expression = this.inner;
        if (inner == expression) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.INNER, expression, inner);
        Expression expression2 = this.inner;
        if (expression2 != null) {
            expression2.setParentNode((Node) null);
        }
        this.inner = inner;
        setAsParentNodeOf(inner);
        return this;
    }

    @Override
    public Optional<EnclosedExpr> toEnclosedExpr() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public EnclosedExpr(final Expression inner) {
        this(null, inner);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (EnclosedExpr) arg);
    }

    public EnclosedExpr(TokenRange tokenRange, Expression inner) {
        super(tokenRange);
        setInner(inner);
        customInitialization();
    }

    @Override
    public EnclosedExprMetaModel getMetaModel() {
        return JavaParserMetaModel.enclosedExprMetaModel;
    }

    @Override
    public EnclosedExpr mo1220clone() {
        return (EnclosedExpr) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
