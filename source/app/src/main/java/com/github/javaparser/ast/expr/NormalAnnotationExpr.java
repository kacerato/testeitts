package com.github.javaparser.ast.expr;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.NormalAnnotationExprMetaModel;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public class NormalAnnotationExpr extends AnnotationExpr {
    private NodeList<MemberValuePair> pairs;

    public NormalAnnotationExpr() {
        this(null, new Name(), new NodeList());
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (NormalAnnotationExpr) arg);
    }

    public NormalAnnotationExpr addPair(String key, String value) {
        return addPair(key, new NameExpr(value));
    }

    @Override
    public NormalAnnotationExpr asNormalAnnotationExpr() {
        return this;
    }

    public NodeList<MemberValuePair> getPairs() {
        return this.pairs;
    }

    @Override
    public void ifNormalAnnotationExpr(Consumer<NormalAnnotationExpr> action) {
        action.accept(this);
    }

    @Override
    public boolean isNormalAnnotationExpr() {
        return true;
    }

    @Override
    public boolean remove(Node node) {
        if (node == null) {
            return false;
        }
        for (int i10 = 0; i10 < this.pairs.size(); i10++) {
            if (this.pairs.get(i10) == node) {
                this.pairs.remove(i10);
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
        for (int i10 = 0; i10 < this.pairs.size(); i10++) {
            if (this.pairs.get(i10) == node) {
                this.pairs.set(i10, (int) replacementNode);
                return true;
            }
        }
        return super.replace(node, replacementNode);
    }

    public NormalAnnotationExpr setPairs(final NodeList<MemberValuePair> pairs) {
        Utils.assertNotNull(pairs);
        NodeList<MemberValuePair> nodeList = this.pairs;
        if (pairs == nodeList) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.PAIRS, nodeList, pairs);
        NodeList<MemberValuePair> nodeList2 = this.pairs;
        if (nodeList2 != null) {
            nodeList2.setParentNode((Node) null);
        }
        this.pairs = pairs;
        setAsParentNodeOf(pairs);
        return this;
    }

    @Override
    public Optional<NormalAnnotationExpr> toNormalAnnotationExpr() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public NormalAnnotationExpr(final Name name, final NodeList<MemberValuePair> pairs) {
        this(null, name, pairs);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (NormalAnnotationExpr) arg);
    }

    public NormalAnnotationExpr addPair(String key, Expression value) {
        getPairs().add((NodeList<MemberValuePair>) new MemberValuePair(key, value));
        return this;
    }

    public NormalAnnotationExpr(TokenRange tokenRange, Name name, NodeList<MemberValuePair> pairs) {
        super(tokenRange, name);
        setPairs(pairs);
        customInitialization();
    }

    @Override
    public NormalAnnotationExprMetaModel getMetaModel() {
        return JavaParserMetaModel.normalAnnotationExprMetaModel;
    }

    @Override
    public NormalAnnotationExpr mo1220clone() {
        return (NormalAnnotationExpr) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
