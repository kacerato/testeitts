package com.github.javaparser.ast.stmt;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.expr.SimpleName;
import com.github.javaparser.ast.nodeTypes.NodeWithOptionalLabel;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.ContinueStmtMetaModel;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.OptionalProperty;
import java.util.Optional;
import java.util.function.Consumer;

public class ContinueStmt extends Statement implements NodeWithOptionalLabel<ContinueStmt> {

    @OptionalProperty
    private SimpleName label;

    public ContinueStmt() {
        this(null, null);
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (ContinueStmt) arg);
    }

    @Override
    public ContinueStmt asContinueStmt() {
        return this;
    }

    @Override
    public Optional<SimpleName> getLabel() {
        return Optional.ofNullable(this.label);
    }

    @Override
    public void ifContinueStmt(Consumer<ContinueStmt> action) {
        action.accept(this);
    }

    @Override
    public boolean isContinueStmt() {
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

    @Override
    public Optional<ContinueStmt> toContinueStmt() {
        return Optional.of(this);
    }

    public ContinueStmt(final String label) {
        this(null, new SimpleName(label));
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (ContinueStmt) arg);
    }

    @Override
    public ContinueStmt removeLabel() {
        return setLabel((SimpleName) null);
    }

    @Override
    public ContinueStmt setLabel(final SimpleName label) {
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

    @AllFieldsConstructor
    public ContinueStmt(final SimpleName label) {
        this(null, label);
    }

    @Override
    public ContinueStmtMetaModel getMetaModel() {
        return JavaParserMetaModel.continueStmtMetaModel;
    }

    public ContinueStmt(TokenRange tokenRange, SimpleName label) {
        super(tokenRange);
        setLabel(label);
        customInitialization();
    }

    @Override
    public ContinueStmt mo1220clone() {
        return (ContinueStmt) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
