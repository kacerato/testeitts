package com.github.javaparser.ast.stmt;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.expr.BooleanLiteralExpr;
import com.github.javaparser.ast.expr.Expression;
import com.github.javaparser.ast.nodeTypes.NodeWithBody;
import com.github.javaparser.ast.nodeTypes.NodeWithCondition;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.DoStmtMetaModel;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public class DoStmt extends Statement implements NodeWithBody<DoStmt>, NodeWithCondition<DoStmt> {
    private Statement body;
    private Expression condition;

    public DoStmt() {
        this(null, new ReturnStmt(), new BooleanLiteralExpr());
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (DoStmt) arg);
    }

    @Override
    public DoStmt asDoStmt() {
        return this;
    }

    @Override
    public Statement getBody() {
        return this.body;
    }

    @Override
    public Expression getCondition() {
        return this.condition;
    }

    @Override
    public void ifDoStmt(Consumer<DoStmt> action) {
        action.accept(this);
    }

    @Override
    public boolean isDoStmt() {
        return true;
    }

    @Override
    public boolean replace(Node node, Node replacementNode) {
        if (node == null) {
            return false;
        }
        if (node == this.body) {
            setBody((Statement) replacementNode);
            return true;
        }
        if (node != this.condition) {
            return super.replace(node, replacementNode);
        }
        setCondition((Expression) replacementNode);
        return true;
    }

    @Override
    public Optional<DoStmt> toDoStmt() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public DoStmt(final Statement body, final Expression condition) {
        this(null, body, condition);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (DoStmt) arg);
    }

    @Override
    public DoStmt setBody(final Statement body) {
        Utils.assertNotNull(body);
        Statement statement = this.body;
        if (body == statement) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.BODY, statement, body);
        Statement statement2 = this.body;
        if (statement2 != null) {
            statement2.setParentNode((Node) null);
        }
        this.body = body;
        setAsParentNodeOf(body);
        return this;
    }

    @Override
    public DoStmt setCondition(final Expression condition) {
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

    public DoStmt(TokenRange tokenRange, Statement body, Expression condition) {
        super(tokenRange);
        setBody(body);
        setCondition(condition);
        customInitialization();
    }

    @Override
    public DoStmtMetaModel getMetaModel() {
        return JavaParserMetaModel.doStmtMetaModel;
    }

    @Override
    public DoStmt mo1220clone() {
        return (DoStmt) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
