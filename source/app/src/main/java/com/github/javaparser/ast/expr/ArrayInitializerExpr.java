package com.github.javaparser.ast.expr;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.ArrayInitializerExprMetaModel;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public class ArrayInitializerExpr extends Expression {
    private NodeList<Expression> values;

    public ArrayInitializerExpr() {
        this(null, new NodeList());
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (ArrayInitializerExpr) arg);
    }

    @Override
    public ArrayInitializerExpr asArrayInitializerExpr() {
        return this;
    }

    public NodeList<Expression> getValues() {
        return this.values;
    }

    @Override
    public void ifArrayInitializerExpr(Consumer<ArrayInitializerExpr> action) {
        action.accept(this);
    }

    @Override
    public boolean isArrayInitializerExpr() {
        return true;
    }

    @Override
    public boolean remove(Node node) {
        if (node == null) {
            return false;
        }
        for (int i10 = 0; i10 < this.values.size(); i10++) {
            if (this.values.get(i10) == node) {
                this.values.remove(i10);
                return true;
            }
        }
        return super.remove(node);
    }

    @Override
    public boolean replace(Node node, Node replacementNode) {
        if (node == null) {
            return false;
        }
        for (int i10 = 0; i10 < this.values.size(); i10++) {
            if (this.values.get(i10) == node) {
                this.values.set(i10, (int) replacementNode);
                return true;
            }
        }
        return super.replace(node, replacementNode);
    }

    public ArrayInitializerExpr setValues(final NodeList<Expression> values) {
        Utils.assertNotNull(values);
        NodeList<Expression> nodeList = this.values;
        if (values == nodeList) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.VALUES, nodeList, values);
        NodeList<Expression> nodeList2 = this.values;
        if (nodeList2 != null) {
            nodeList2.setParentNode((Node) null);
        }
        this.values = values;
        setAsParentNodeOf(values);
        return this;
    }

    @Override
    public Optional<ArrayInitializerExpr> toArrayInitializerExpr() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public ArrayInitializerExpr(NodeList<Expression> values) {
        this(null, values);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (ArrayInitializerExpr) arg);
    }

    public ArrayInitializerExpr(TokenRange tokenRange, NodeList<Expression> values) {
        super(tokenRange);
        setValues(values);
        customInitialization();
    }

    @Override
    public ArrayInitializerExprMetaModel getMetaModel() {
        return JavaParserMetaModel.arrayInitializerExprMetaModel;
    }

    @Override
    public ArrayInitializerExpr mo1220clone() {
        return (ArrayInitializerExpr) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
