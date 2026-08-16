package com.github.javaparser.ast.stmt;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.expr.BooleanLiteralExpr;
import com.github.javaparser.ast.expr.Expression;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.AssertStmtMetaModel;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.OptionalProperty;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public class AssertStmt extends Statement {
    private Expression check;

    @OptionalProperty
    private Expression message;

    public AssertStmt() {
        this(null, new BooleanLiteralExpr(), null);
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (AssertStmt) arg);
    }

    @Override
    public AssertStmt asAssertStmt() {
        return this;
    }

    public Expression getCheck() {
        return this.check;
    }

    public Optional<Expression> getMessage() {
        return Optional.ofNullable(this.message);
    }

    @Override
    public void ifAssertStmt(Consumer<AssertStmt> action) {
        action.accept(this);
    }

    @Override
    public boolean isAssertStmt() {
        return true;
    }

    @Override
    public boolean remove(Node node) {
        if (node == null) {
            return false;
        }
        Expression expression = this.message;
        if (expression == null || node != expression) {
            return super.remove(node);
        }
        removeMessage();
        return true;
    }

    public AssertStmt removeMessage() {
        return setMessage(null);
    }

    @Override
    public boolean replace(Node node, Node replacementNode) {
        if (node == null) {
            return false;
        }
        if (node == this.check) {
            setCheck((Expression) replacementNode);
            return true;
        }
        Expression expression = this.message;
        if (expression == null || node != expression) {
            return super.replace(node, replacementNode);
        }
        setMessage((Expression) replacementNode);
        return true;
    }

    public AssertStmt setCheck(final Expression check) {
        Utils.assertNotNull(check);
        Expression expression = this.check;
        if (check == expression) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.CHECK, expression, check);
        Expression expression2 = this.check;
        if (expression2 != null) {
            expression2.setParentNode((Node) null);
        }
        this.check = check;
        setAsParentNodeOf(check);
        return this;
    }

    public AssertStmt setMessage(final Expression message) {
        Expression expression = this.message;
        if (message == expression) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.MESSAGE, expression, message);
        Expression expression2 = this.message;
        if (expression2 != null) {
            expression2.setParentNode((Node) null);
        }
        this.message = message;
        setAsParentNodeOf(message);
        return this;
    }

    @Override
    public Optional<AssertStmt> toAssertStmt() {
        return Optional.of(this);
    }

    public AssertStmt(final Expression check) {
        this(null, check, null);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (AssertStmt) arg);
    }

    @AllFieldsConstructor
    public AssertStmt(final Expression check, final Expression message) {
        this(null, check, message);
    }

    @Override
    public AssertStmtMetaModel getMetaModel() {
        return JavaParserMetaModel.assertStmtMetaModel;
    }

    public AssertStmt(TokenRange tokenRange, Expression check, Expression message) {
        super(tokenRange);
        setCheck(check);
        setMessage(message);
        customInitialization();
    }

    @Override
    public AssertStmt mo1220clone() {
        return (AssertStmt) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
