package com.github.javaparser.ast.stmt;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.expr.BooleanLiteralExpr;
import com.github.javaparser.ast.expr.Expression;
import com.github.javaparser.ast.nodeTypes.NodeWithExpression;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.ExpressionStmtMetaModel;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public class ExpressionStmt extends Statement implements NodeWithExpression<ExpressionStmt> {
    private Expression expression;

    public ExpressionStmt() {
        this(null, new BooleanLiteralExpr());
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (ExpressionStmt) arg);
    }

    @Override
    public ExpressionStmt asExpressionStmt() {
        return this;
    }

    @Override
    public Expression getExpression() {
        return this.expression;
    }

    @Override
    public void ifExpressionStmt(Consumer<ExpressionStmt> action) {
        action.accept(this);
    }

    @Override
    public boolean isExpressionStmt() {
        return true;
    }

    @Override
    public boolean replace(Node node, Node replacementNode) {
        if (node == null) {
            return false;
        }
        if (node != this.expression) {
            return super.replace(node, replacementNode);
        }
        setExpression((Expression) replacementNode);
        return true;
    }

    @Override
    public Optional<ExpressionStmt> toExpressionStmt() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public ExpressionStmt(final Expression expression) {
        this(null, expression);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (ExpressionStmt) arg);
    }

    @Override
    public ExpressionStmt setExpression(final Expression expression) {
        Utils.assertNotNull(expression);
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

    public ExpressionStmt(TokenRange tokenRange, Expression expression) {
        super(tokenRange);
        setExpression(expression);
        customInitialization();
    }

    @Override
    public ExpressionStmtMetaModel getMetaModel() {
        return JavaParserMetaModel.expressionStmtMetaModel;
    }

    @Override
    public ExpressionStmt mo1220clone() {
        return (ExpressionStmt) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
