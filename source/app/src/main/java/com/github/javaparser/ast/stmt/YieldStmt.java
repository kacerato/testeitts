package com.github.javaparser.ast.stmt;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.expr.Expression;
import com.github.javaparser.ast.expr.NameExpr;
import com.github.javaparser.ast.nodeTypes.NodeWithExpression;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.YieldStmtMetaModel;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public class YieldStmt extends Statement implements NodeWithExpression {
    private Expression expression;

    public YieldStmt() {
        this(null, new NameExpr());
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (YieldStmt) arg);
    }

    @Override
    public YieldStmt asYieldStmt() {
        return this;
    }

    @Override
    public Expression getExpression() {
        return this.expression;
    }

    @Override
    public void ifYieldStmt(Consumer<YieldStmt> action) {
        action.accept(this);
    }

    @Override
    public boolean isYieldStmt() {
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
    public Optional<YieldStmt> toYieldStmt() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public YieldStmt(final Expression expression) {
        this(null, expression);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (YieldStmt) arg);
    }

    @Override
    public YieldStmt setExpression(final Expression expression) {
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

    public YieldStmt(TokenRange tokenRange, Expression expression) {
        super(tokenRange);
        setExpression(expression);
        customInitialization();
    }

    @Override
    public YieldStmtMetaModel getMetaModel() {
        return JavaParserMetaModel.yieldStmtMetaModel;
    }

    @Override
    public YieldStmt mo1220clone() {
        return (YieldStmt) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
