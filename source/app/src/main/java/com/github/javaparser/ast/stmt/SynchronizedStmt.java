package com.github.javaparser.ast.stmt;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.expr.Expression;
import com.github.javaparser.ast.expr.NameExpr;
import com.github.javaparser.ast.nodeTypes.NodeWithBlockStmt;
import com.github.javaparser.ast.nodeTypes.NodeWithExpression;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.SynchronizedStmtMetaModel;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public class SynchronizedStmt extends Statement implements NodeWithBlockStmt<SynchronizedStmt>, NodeWithExpression<SynchronizedStmt> {
    private BlockStmt body;
    private Expression expression;

    public SynchronizedStmt() {
        this(null, new NameExpr(), new BlockStmt());
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (SynchronizedStmt) arg);
    }

    @Override
    public SynchronizedStmt asSynchronizedStmt() {
        return this;
    }

    @Override
    public BlockStmt getBody() {
        return this.body;
    }

    @Override
    public Expression getExpression() {
        return this.expression;
    }

    @Override
    public void ifSynchronizedStmt(Consumer<SynchronizedStmt> action) {
        action.accept(this);
    }

    @Override
    public boolean isSynchronizedStmt() {
        return true;
    }

    @Override
    public boolean replace(Node node, Node replacementNode) {
        if (node == null) {
            return false;
        }
        if (node == this.body) {
            setBody((BlockStmt) replacementNode);
            return true;
        }
        if (node != this.expression) {
            return super.replace(node, replacementNode);
        }
        setExpression((Expression) replacementNode);
        return true;
    }

    @Override
    public Optional<SynchronizedStmt> toSynchronizedStmt() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public SynchronizedStmt(final Expression expression, final BlockStmt body) {
        this(null, expression, body);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (SynchronizedStmt) arg);
    }

    @Override
    public SynchronizedStmt setBody(final BlockStmt body) {
        Utils.assertNotNull(body);
        BlockStmt blockStmt = this.body;
        if (body == blockStmt) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.BODY, blockStmt, body);
        BlockStmt blockStmt2 = this.body;
        if (blockStmt2 != null) {
            blockStmt2.setParentNode((Node) null);
        }
        this.body = body;
        setAsParentNodeOf(body);
        return this;
    }

    @Override
    public SynchronizedStmt setExpression(final Expression expression) {
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

    public SynchronizedStmt(TokenRange tokenRange, Expression expression, BlockStmt body) {
        super(tokenRange);
        setExpression(expression);
        setBody(body);
        customInitialization();
    }

    @Override
    public SynchronizedStmtMetaModel getMetaModel() {
        return JavaParserMetaModel.synchronizedStmtMetaModel;
    }

    @Override
    public SynchronizedStmt mo1220clone() {
        return (SynchronizedStmt) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
