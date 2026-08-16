package com.github.javaparser.ast.stmt;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.expr.SimpleName;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.LabeledStmtMetaModel;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public class LabeledStmt extends Statement {
    private SimpleName label;
    private Statement statement;

    public LabeledStmt() {
        this(null, new SimpleName(), new ReturnStmt());
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (LabeledStmt) arg);
    }

    @Override
    public LabeledStmt asLabeledStmt() {
        return this;
    }

    public SimpleName getLabel() {
        return this.label;
    }

    public Statement getStatement() {
        return this.statement;
    }

    @Override
    public void ifLabeledStmt(Consumer<LabeledStmt> action) {
        action.accept(this);
    }

    @Override
    public boolean isLabeledStmt() {
        return true;
    }

    @Override
    public boolean replace(Node node, Node replacementNode) {
        if (node == null) {
            return false;
        }
        if (node == this.label) {
            setLabel((SimpleName) replacementNode);
            return true;
        }
        if (node != this.statement) {
            return super.replace(node, replacementNode);
        }
        setStatement((Statement) replacementNode);
        return true;
    }

    public LabeledStmt setLabel(final SimpleName label) {
        Utils.assertNotNull(label);
        SimpleName simpleName = this.label;
        if (label == simpleName) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.LABEL, simpleName, label);
        SimpleName simpleName2 = this.label;
        if (simpleName2 != null) {
            simpleName2.setParentNode((Node) null);
        }
        this.label = label;
        setAsParentNodeOf(label);
        return this;
    }

    public LabeledStmt setStatement(final Statement statement) {
        Utils.assertNotNull(statement);
        Statement statement2 = this.statement;
        if (statement == statement2) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.STATEMENT, statement2, statement);
        Statement statement3 = this.statement;
        if (statement3 != null) {
            statement3.setParentNode((Node) null);
        }
        this.statement = statement;
        setAsParentNodeOf(statement);
        return this;
    }

    @Override
    public Optional<LabeledStmt> toLabeledStmt() {
        return Optional.of(this);
    }

    public LabeledStmt(final String label, final Statement statement) {
        this(null, new SimpleName(label), statement);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (LabeledStmt) arg);
    }

    @AllFieldsConstructor
    public LabeledStmt(final SimpleName label, final Statement statement) {
        this(null, label, statement);
    }

    @Override
    public LabeledStmtMetaModel getMetaModel() {
        return JavaParserMetaModel.labeledStmtMetaModel;
    }

    public LabeledStmt(TokenRange tokenRange, SimpleName label, Statement statement) {
        super(tokenRange);
        setLabel(label);
        setStatement(statement);
        customInitialization();
    }

    @Override
    public LabeledStmt mo1220clone() {
        return (LabeledStmt) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
