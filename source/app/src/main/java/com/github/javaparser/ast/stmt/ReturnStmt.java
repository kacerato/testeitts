package com.github.javaparser.ast.stmt;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.expr.Expression;
import com.github.javaparser.ast.expr.NameExpr;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.OptionalProperty;
import com.github.javaparser.metamodel.ReturnStmtMetaModel;
import java.util.Optional;
import java.util.function.Consumer;

public class ReturnStmt extends Statement {

    @OptionalProperty
    private Expression expression;

    public ReturnStmt() {
        this(null, null);
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (ReturnStmt) arg);
    }

    @Override
    public ReturnStmt asReturnStmt() {
        return this;
    }

    public Optional<Expression> getExpression() {
        return Optional.ofNullable(this.expression);
    }

    @Override
    public void ifReturnStmt(Consumer<ReturnStmt> action) {
        action.accept(this);
    }

    @Override
    public boolean isReturnStmt() {
        return true;
    }

    @Override
    public boolean remove(Node node) {
        if (node == null) {
            return false;
        }
        Expression expression = this.expression;
        if (expression == null || node != expression) {
            return super.remove(node);
        }
        removeExpression();
        return true;
    }

    public ReturnStmt removeExpression() {
        return setExpression(null);
    }

    @Override
    public boolean replace(Node node, Node replacementNode) {
        if (node == null) {
            return false;
        }
        Expression expression = this.expression;
        if (expression == null || node != expression) {
            return super.replace(node, replacementNode);
        }
        setExpression((Expression) replacementNode);
        return true;
    }

    public ReturnStmt setExpression(final Expression expression) {
        Expression expression2 = this.expression;
        if (expression == expression2) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.EXPRESSION, expression2, expression);
        Expression expression3 = this.expression;
        if (expression3 != null) {
            expression3.setParentNode((Node) null);
        }
        this.expression = expression;
        setAsParentNodeOf(expression);
        return this;
    }

    @Override
    public Optional<ReturnStmt> toReturnStmt() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public ReturnStmt(final Expression expression) {
        this(null, expression);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (ReturnStmt) arg);
    }

    public ReturnStmt(TokenRange tokenRange, Expression expression) {
        super(tokenRange);
        setExpression(expression);
        customInitialization();
    }

    @Override
    public ReturnStmtMetaModel getMetaModel() {
        return JavaParserMetaModel.returnStmtMetaModel;
    }

    @Override
    public ReturnStmt mo1220clone() {
        return (ReturnStmt) accept(new CloneVisitor(), (CloneVisitor) null);
    }

    public ReturnStmt(String expression) {
        this(null, new NameExpr(expression));
    }
}
