package com.github.javaparser.ast.stmt;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Modifier;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.body.VariableDeclarator;
import com.github.javaparser.ast.expr.Expression;
import com.github.javaparser.ast.expr.NameExpr;
import com.github.javaparser.ast.expr.VariableDeclarationExpr;
import com.github.javaparser.ast.nodeTypes.NodeWithBody;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.ForEachStmtMetaModel;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public class ForEachStmt extends Statement implements NodeWithBody<ForEachStmt> {
    private Statement body;
    private Expression iterable;
    private VariableDeclarationExpr variable;

    public ForEachStmt() {
        this(null, new VariableDeclarationExpr(), new NameExpr(), new ReturnStmt());
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (ForEachStmt) arg);
    }

    @Override
    public ForEachStmt asForEachStmt() {
        return this;
    }

    @Override
    public Statement getBody() {
        return this.body;
    }

    public Expression getIterable() {
        return this.iterable;
    }

    public VariableDeclarationExpr getVariable() {
        return this.variable;
    }

    public VariableDeclarator getVariableDeclarator() {
        return getVariable().getVariable(0);
    }

    public boolean hasFinalVariable() {
        return getVariable().getModifiers().isNonEmpty() && getVariable().getModifiers().get(0).getKeyword() == Modifier.Keyword.FINAL;
    }

    @Override
    public void ifForEachStmt(Consumer<ForEachStmt> action) {
        action.accept(this);
    }

    @Override
    public boolean isForEachStmt() {
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
        if (node == this.iterable) {
            setIterable((Expression) replacementNode);
            return true;
        }
        if (node != this.variable) {
            return super.replace(node, replacementNode);
        }
        setVariable((VariableDeclarationExpr) replacementNode);
        return true;
    }

    public ForEachStmt setIterable(final Expression iterable) {
        Utils.assertNotNull(iterable);
        Expression expression = this.iterable;
        if (iterable == expression) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.ITERABLE, expression, iterable);
        Expression expression2 = this.iterable;
        if (expression2 != null) {
            expression2.setParentNode((Node) null);
        }
        this.iterable = iterable;
        setAsParentNodeOf(iterable);
        return this;
    }

    public ForEachStmt setVariable(final VariableDeclarationExpr variable) {
        Utils.assertNotNull(variable);
        VariableDeclarationExpr variableDeclarationExpr = this.variable;
        if (variable == variableDeclarationExpr) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.VARIABLE, variableDeclarationExpr, variable);
        VariableDeclarationExpr variableDeclarationExpr2 = this.variable;
        if (variableDeclarationExpr2 != null) {
            variableDeclarationExpr2.setParentNode((Node) null);
        }
        this.variable = variable;
        setAsParentNodeOf(variable);
        return this;
    }

    @Override
    public Optional<ForEachStmt> toForEachStmt() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public ForEachStmt(final VariableDeclarationExpr variable, final Expression iterable, final Statement body) {
        this(null, variable, iterable, body);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (ForEachStmt) arg);
    }

    @Override
    public ForEachStmt setBody(final Statement body) {
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

    public ForEachStmt(TokenRange tokenRange, VariableDeclarationExpr variable, Expression iterable, Statement body) {
        super(tokenRange);
        setVariable(variable);
        setIterable(iterable);
        setBody(body);
        customInitialization();
    }

    @Override
    public ForEachStmtMetaModel getMetaModel() {
        return JavaParserMetaModel.forEachStmtMetaModel;
    }

    @Override
    public ForEachStmt mo1220clone() {
        return (ForEachStmt) accept(new CloneVisitor(), (CloneVisitor) null);
    }

    public ForEachStmt(VariableDeclarationExpr variable, String iterable, BlockStmt body) {
        this(null, variable, new NameExpr(iterable), body);
    }
}
