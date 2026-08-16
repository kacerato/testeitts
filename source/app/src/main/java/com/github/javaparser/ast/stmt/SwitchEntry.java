package com.github.javaparser.ast.stmt;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.expr.Expression;
import com.github.javaparser.ast.nodeTypes.NodeWithStatements;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.DerivedProperty;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.OptionalProperty;
import com.github.javaparser.metamodel.SwitchEntryMetaModel;
import com.github.javaparser.utils.Utils;
import java.util.Optional;

public class SwitchEntry extends Node implements NodeWithStatements<SwitchEntry> {

    @OptionalProperty
    private Expression guard;
    private boolean isDefault;
    private NodeList<Expression> labels;
    private NodeList<Statement> statements;
    private Type type;

    public enum Type {
        STATEMENT_GROUP,
        EXPRESSION,
        BLOCK,
        THROWS_STATEMENT
    }

    public SwitchEntry() {
        this(null, new NodeList(), Type.STATEMENT_GROUP, new NodeList(), false, null);
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (SwitchEntry) arg);
    }

    public Optional<Expression> getGuard() {
        return Optional.ofNullable(this.guard);
    }

    public NodeList<Expression> getLabels() {
        return this.labels;
    }

    @Override
    public NodeList<Statement> getStatements() {
        return this.statements;
    }

    public Type getType() {
        return this.type;
    }

    public boolean isDefault() {
        return this.isDefault;
    }

    @DerivedProperty
    public boolean isSwitchStatementEntry() {
        return this.type == Type.STATEMENT_GROUP;
    }

    @Override
    public boolean remove(Node node) {
        if (node == null) {
            return false;
        }
        Expression expression = this.guard;
        if (expression != null && node == expression) {
            removeGuard();
            return true;
        }
        for (int i10 = 0; i10 < this.labels.size(); i10++) {
            if (this.labels.get(i10) == node) {
                this.labels.remove(i10);
                return true;
            }
        }
        for (int i11 = 0; i11 < this.statements.size(); i11++) {
            if (this.statements.get(i11) == node) {
                this.statements.remove(i11);
                return true;
            }
        }
        return super.remove(node);
    }

    public SwitchEntry removeGuard() {
        return setGuard(null);
    }

    @Override
    public boolean replace(Node node, Node replacementNode) {
        if (node == null) {
            return false;
        }
        Expression expression = this.guard;
        if (expression != null && node == expression) {
            setGuard((Expression) replacementNode);
            return true;
        }
        for (int i10 = 0; i10 < this.labels.size(); i10++) {
            if (this.labels.get(i10) == node) {
                this.labels.set(i10, (int) replacementNode);
                return true;
            }
        }
        for (int i11 = 0; i11 < this.statements.size(); i11++) {
            if (this.statements.get(i11) == node) {
                this.statements.set(i11, (int) replacementNode);
                return true;
            }
        }
        return super.replace(node, replacementNode);
    }

    public SwitchEntry setDefault(final boolean isDefault) {
        boolean z10 = this.isDefault;
        if (isDefault == z10) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.DEFAULT, Boolean.valueOf(z10), Boolean.valueOf(isDefault));
        this.isDefault = isDefault;
        return this;
    }

    public SwitchEntry setGuard(final Expression guard) {
        Expression expression = this.guard;
        if (guard == expression) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.GUARD, expression, guard);
        Expression expression2 = this.guard;
        if (expression2 != null) {
            expression2.setParentNode((Node) null);
        }
        this.guard = guard;
        setAsParentNodeOf(guard);
        return this;
    }

    public SwitchEntry setLabels(final NodeList<Expression> labels) {
        Utils.assertNotNull(labels);
        NodeList<Expression> nodeList = this.labels;
        if (labels == nodeList) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.LABELS, nodeList, labels);
        NodeList<Expression> nodeList2 = this.labels;
        if (nodeList2 != null) {
            nodeList2.setParentNode((Node) null);
        }
        this.labels = labels;
        setAsParentNodeOf(labels);
        return this;
    }

    @Override
    public SwitchEntry setStatements(final NodeList statements) {
        return setStatements2((NodeList<Statement>) statements);
    }

    public SwitchEntry setType(final Type type) {
        Utils.assertNotNull(type);
        Type type2 = this.type;
        if (type == type2) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.TYPE, type2, type);
        this.type = type;
        return this;
    }

    public SwitchEntry(final TokenRange tokenRange, final NodeList<Expression> labels, final Type type, final NodeList<Statement> statements) {
        this(tokenRange, labels, type, statements, false, null);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (SwitchEntry) arg);
    }

    @Override
    public SwitchEntryMetaModel getMetaModel() {
        return JavaParserMetaModel.switchEntryMetaModel;
    }

    @Override
    public SwitchEntry setStatements2(final NodeList<Statement> statements) {
        Utils.assertNotNull(statements);
        NodeList<Statement> nodeList = this.statements;
        if (statements == nodeList) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.STATEMENTS, nodeList, statements);
        NodeList<Statement> nodeList2 = this.statements;
        if (nodeList2 != null) {
            nodeList2.setParentNode((Node) null);
        }
        this.statements = statements;
        setAsParentNodeOf(statements);
        return this;
    }

    public SwitchEntry(final NodeList<Expression> labels, final Type type, final NodeList<Statement> statements) {
        this(null, labels, type, statements, false, null);
    }

    @Override
    public SwitchEntry mo1220clone() {
        return (SwitchEntry) accept(new CloneVisitor(), (CloneVisitor) null);
    }

    @AllFieldsConstructor
    public SwitchEntry(final NodeList<Expression> labels, final Type type, final NodeList<Statement> statements, final boolean isDefault, final Expression guard) {
        this(null, labels, type, statements, isDefault, guard);
    }

    public SwitchEntry(TokenRange tokenRange, NodeList<Expression> labels, Type type, NodeList<Statement> statements, boolean isDefault, Expression guard) {
        super(tokenRange);
        setLabels(labels);
        setType(type);
        setStatements2(statements);
        setDefault(isDefault);
        setGuard(guard);
        customInitialization();
    }

    public SwitchEntry(TokenRange tokenRange, NodeList<Expression> labels, Type type, NodeList<Statement> statements, boolean isDefault) {
        super(tokenRange);
        setLabels(labels);
        setType(type);
        setStatements2(statements);
        setDefault(isDefault);
        customInitialization();
    }
}
