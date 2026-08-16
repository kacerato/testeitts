package com.github.javaparser.ast.expr;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.nodeTypes.NodeWithCondition;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.ConditionalExprMetaModel;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public class ConditionalExpr extends Expression implements NodeWithCondition<ConditionalExpr> {
    private Expression condition;
    private Expression elseExpr;
    private Expression thenExpr;

    public ConditionalExpr() {
        this(null, new BooleanLiteralExpr(), new StringLiteralExpr(), new StringLiteralExpr());
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (ConditionalExpr) arg);
    }

    @Override
    public ConditionalExpr asConditionalExpr() {
        return this;
    }

    @Override
    public Expression getCondition() {
        return this.condition;
    }

    public Expression getElseExpr() {
        return this.elseExpr;
    }

    public Expression getThenExpr() {
        return this.thenExpr;
    }

    @Override
    public void ifConditionalExpr(Consumer<ConditionalExpr> action) {
        action.accept(this);
    }

    @Override
    public boolean isConditionalExpr() {
        return true;
    }

    @Override
    public boolean isPolyExpression() {
        return appearsInAssignmentContext() || appearsInInvocationContext();
    }

    @Override
    public boolean replace(Node node, Node replacementNode) {
        if (node == null) {
            return false;
        }
        if (node == this.condition) {
            setCondition((Expression) replacementNode);
            return true;
        }
        if (node == this.elseExpr) {
            setElseExpr((Expression) replacementNode);
            return true;
        }
        if (node != this.thenExpr) {
            return super.replace(node, replacementNode);
        }
        setThenExpr((Expression) replacementNode);
        return true;
    }

    public ConditionalExpr setElseExpr(final Expression elseExpr) {
        Utils.assertNotNull(elseExpr);
        Expression expression = this.elseExpr;
        if (elseExpr == expression) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.ELSE_EXPR, expression, elseExpr);
        Expression expression2 = this.elseExpr;
        if (expression2 != null) {
            expression2.setParentNode((Node) null);
        }
        this.elseExpr = elseExpr;
        setAsParentNodeOf(elseExpr);
        return this;
    }

    public ConditionalExpr setThenExpr(final Expression thenExpr) {
        Utils.assertNotNull(thenExpr);
        Expression expression = this.thenExpr;
        if (thenExpr == expression) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.THEN_EXPR, expression, thenExpr);
        Expression expression2 = this.thenExpr;
        if (expression2 != null) {
            expression2.setParentNode((Node) null);
        }
        this.thenExpr = thenExpr;
        setAsParentNodeOf(thenExpr);
        return this;
    }

    @Override
    public Optional<ConditionalExpr> toConditionalExpr() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public ConditionalExpr(Expression condition, Expression thenExpr, Expression elseExpr) {
        this(null, condition, thenExpr, elseExpr);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (ConditionalExpr) arg);
    }

    @Override
    public ConditionalExpr setCondition(final Expression condition) {
        Utils.assertNotNull(condition);
        Expression expression = this.condition;
        if (condition == expression) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.CONDITION, expression, condition);
        Expression expression2 = this.condition;
        if (expression2 != null) {
            expression2.setParentNode((Node) null);
        }
        this.condition = condition;
        setAsParentNodeOf(condition);
        return this;
    }

    public ConditionalExpr(TokenRange tokenRange, Expression condition, Expression thenExpr, Expression elseExpr) {
        super(tokenRange);
        setCondition(condition);
        setThenExpr(thenExpr);
        setElseExpr(elseExpr);
        customInitialization();
    }

    @Override
    public ConditionalExprMetaModel getMetaModel() {
        return JavaParserMetaModel.conditionalExprMetaModel;
    }

    @Override
    public ConditionalExpr mo1220clone() {
        return (ConditionalExpr) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
