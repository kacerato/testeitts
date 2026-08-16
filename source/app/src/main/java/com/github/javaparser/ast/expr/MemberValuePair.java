package com.github.javaparser.ast.expr;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.nodeTypes.NodeWithSimpleName;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.MemberValuePairMetaModel;
import com.github.javaparser.utils.Utils;

public class MemberValuePair extends Node implements NodeWithSimpleName<MemberValuePair> {
    private SimpleName name;
    private Expression value;

    public MemberValuePair() {
        this(null, new SimpleName(), new StringLiteralExpr());
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (MemberValuePair) arg);
    }

    @Override
    public SimpleName getName() {
        return this.name;
    }

    public Expression getValue() {
        return this.value;
    }

    @Override
    public boolean replace(Node node, Node replacementNode) {
        if (node == null) {
            return false;
        }
        if (node == this.name) {
            setName((SimpleName) replacementNode);
            return true;
        }
        if (node != this.value) {
            return super.replace(node, replacementNode);
        }
        setValue((Expression) replacementNode);
        return true;
    }

    public MemberValuePair setValue(final Expression value) {
        Utils.assertNotNull(value);
        Expression expression = this.value;
        if (value == expression) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.VALUE, expression, value);
        Expression expression2 = this.value;
        if (expression2 != null) {
            expression2.setParentNode((Node) null);
        }
        this.value = value;
        setAsParentNodeOf(value);
        return this;
    }

    public MemberValuePair(final String name, final Expression value) {
        this(null, new SimpleName(name), value);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (MemberValuePair) arg);
    }

    @Override
    public MemberValuePairMetaModel getMetaModel() {
        return JavaParserMetaModel.memberValuePairMetaModel;
    }

    @Override
    public MemberValuePair setName(final SimpleName name) {
        Utils.assertNotNull(name);
        SimpleName simpleName = this.name;
        if (name == simpleName) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.NAME, simpleName, name);
        SimpleName simpleName2 = this.name;
        if (simpleName2 != null) {
            simpleName2.setParentNode((Node) null);
        }
        this.name = name;
        setAsParentNodeOf(name);
        return this;
    }

    @AllFieldsConstructor
    public MemberValuePair(final SimpleName name, final Expression value) {
        this(null, name, value);
    }

    @Override
    public MemberValuePair mo1220clone() {
        return (MemberValuePair) accept(new CloneVisitor(), (CloneVisitor) null);
    }

    public MemberValuePair(TokenRange tokenRange, SimpleName name, Expression value) {
        super(tokenRange);
        setName(name);
        setValue(value);
        customInitialization();
    }
}
