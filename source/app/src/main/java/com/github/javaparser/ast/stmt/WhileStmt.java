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
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.WhileStmtMetaModel;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public class WhileStmt extends Statement implements NodeWithBody<WhileStmt>, NodeWithCondition<WhileStmt> {
    private Statement body;
    private Expression condition;

    public WhileStmt() {
        this(null, new BooleanLiteralExpr(), new ReturnStmt());
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (WhileStmt) arg);
    }

    @Override
    public WhileStmt asWhileStmt() {
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
    public void ifWhileStmt(Consumer<WhileStmt> action) {
        action.accept(this);
    }

    @Override
    public boolean isWhileStmt() {
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
    public Optional<WhileStmt> toWhileStmt() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public WhileStmt(final Expression condition, final Statement body) {
        this(null, condition, body);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (WhileStmt) arg);
    }

    @Override
    public WhileStmt setBody(final Statement body) {
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
    public WhileStmt setCondition(final Expression condition) {
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

    public WhileStmt(TokenRange tokenRange, Expression condition, Statement body) {
        super(tokenRange);
        setCondition(condition);
        setBody(body);
        customInitialization();
    }

    @Override
    public WhileStmtMetaModel getMetaModel() {
        return JavaParserMetaModel.whileStmtMetaModel;
    }

    @Override
    public WhileStmt mo1220clone() {
        return (WhileStmt) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
