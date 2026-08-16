package com.github.javaparser.ast.stmt;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.expr.BooleanLiteralExpr;
import com.github.javaparser.ast.expr.Expression;
import com.github.javaparser.ast.nodeTypes.NodeWithCondition;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.DerivedProperty;
import com.github.javaparser.metamodel.IfStmtMetaModel;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.OptionalProperty;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public class IfStmt extends Statement implements NodeWithCondition<IfStmt> {
    private Expression condition;

    @OptionalProperty
    private Statement elseStmt;
    private Statement thenStmt;

    public IfStmt() {
        this(null, new BooleanLiteralExpr(), new ReturnStmt(), null);
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (IfStmt) arg);
    }

    @Override
    public IfStmt asIfStmt() {
        return this;
    }

    @Override
    public Expression getCondition() {
        return this.condition;
    }

    public Optional<Statement> getElseStmt() {
        return Optional.ofNullable(this.elseStmt);
    }

    public Statement getThenStmt() {
        return this.thenStmt;
    }

    @DerivedProperty
    public boolean hasCascadingIfStmt() {
        return this.elseStmt instanceof IfStmt;
    }

    @DerivedProperty
    public boolean hasElseBlock() {
        return this.elseStmt instanceof BlockStmt;
    }

    @DerivedProperty
    public boolean hasElseBranch() {
        return this.elseStmt != null;
    }

    @DerivedProperty
    public boolean hasThenBlock() {
        return this.thenStmt instanceof BlockStmt;
    }

    @Override
    public void ifIfStmt(Consumer<IfStmt> action) {
        action.accept(this);
    }

    @Override
    public boolean isIfStmt() {
        return true;
    }

    @Override
    public boolean remove(Node node) {
        if (node == null) {
            return false;
        }
        Statement statement = this.elseStmt;
        if (statement == null || node != statement) {
            return super.remove(node);
        }
        removeElseStmt();
        return true;
    }

    public IfStmt removeElseStmt() {
        return setElseStmt(null);
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
        Statement statement = this.elseStmt;
        if (statement != null && node == statement) {
            setElseStmt((Statement) replacementNode);
            return true;
        }
        if (node != this.thenStmt) {
            return super.replace(node, replacementNode);
        }
        setThenStmt((Statement) replacementNode);
        return true;
    }

    public IfStmt setElseStmt(final Statement elseStmt) {
        Statement statement = this.elseStmt;
        if (elseStmt == statement) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.ELSE_STMT, statement, elseStmt);
        Statement statement2 = this.elseStmt;
        if (statement2 != null) {
            statement2.setParentNode((Node) null);
        }
        this.elseStmt = elseStmt;
        setAsParentNodeOf(elseStmt);
        return this;
    }

    public IfStmt setThenStmt(final Statement thenStmt) {
        Utils.assertNotNull(thenStmt);
        Statement statement = this.thenStmt;
        if (thenStmt == statement) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.THEN_STMT, statement, thenStmt);
        Statement statement2 = this.thenStmt;
        if (statement2 != null) {
            statement2.setParentNode((Node) null);
        }
        this.thenStmt = thenStmt;
        setAsParentNodeOf(thenStmt);
        return this;
    }

    @Override
    public Optional<IfStmt> toIfStmt() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public IfStmt(final Expression condition, final Statement thenStmt, final Statement elseStmt) {
        this(null, condition, thenStmt, elseStmt);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (IfStmt) arg);
    }

    @Override
    public IfStmt setCondition(final Expression condition) {
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

    public IfStmt(TokenRange tokenRange, Expression condition, Statement thenStmt, Statement elseStmt) {
        super(tokenRange);
        setCondition(condition);
        setThenStmt(thenStmt);
        setElseStmt(elseStmt);
        customInitialization();
    }

    @Override
    public IfStmtMetaModel getMetaModel() {
        return JavaParserMetaModel.ifStmtMetaModel;
    }

    @Override
    public IfStmt mo1220clone() {
        return (IfStmt) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
