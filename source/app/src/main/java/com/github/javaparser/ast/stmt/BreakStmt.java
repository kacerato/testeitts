package com.github.javaparser.ast.stmt;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.expr.SimpleName;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.BreakStmtMetaModel;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.OptionalProperty;
import java.util.Optional;
import java.util.function.Consumer;

public class BreakStmt extends Statement {

    @OptionalProperty
    private SimpleName label;

    public BreakStmt() {
        this(null, null);
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (BreakStmt) arg);
    }

    @Override
    public BreakStmt asBreakStmt() {
        return this;
    }

    public Optional<SimpleName> getLabel() {
        return Optional.ofNullable(this.label);
    }

    @Override
    public void ifBreakStmt(Consumer<BreakStmt> action) {
        action.accept(this);
    }

    @Override
    public boolean isBreakStmt() {
        return true;
    }

    @Override
    public boolean remove(Node node) {
        if (node == null) {
            return false;
        }
        SimpleName simpleName = this.label;
        if (simpleName == null || node != simpleName) {
            return super.remove(node);
        }
        removeLabel();
        return true;
    }

    public BreakStmt removeLabel() {
        return setLabel(null);
    }

    @Override
    public boolean replace(Node node, Node replacementNode) {
        if (node == null) {
            return false;
        }
        SimpleName simpleName = this.label;
        if (simpleName == null || node != simpleName) {
            return super.replace(node, replacementNode);
        }
        setLabel((SimpleName) replacementNode);
        return true;
    }

    public BreakStmt setLabel(final SimpleName label) {
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

    @Override
    public Optional<BreakStmt> toBreakStmt() {
        return Optional.of(this);
    }

    public BreakStmt(final String label) {
        this(null, new SimpleName(label));
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (BreakStmt) arg);
    }

    @AllFieldsConstructor
    public BreakStmt(final SimpleName label) {
        this(null, label);
    }

    @Override
    public BreakStmtMetaModel getMetaModel() {
        return JavaParserMetaModel.breakStmtMetaModel;
    }

    public BreakStmt(TokenRange tokenRange, SimpleName label) {
        super(tokenRange);
        setLabel(label);
        customInitialization();
    }

    @Override
    public BreakStmt mo1220clone() {
        return (BreakStmt) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
