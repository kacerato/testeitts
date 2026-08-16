package com.github.javaparser.ast.body;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.expr.AnnotationExpr;
import com.github.javaparser.ast.expr.Name;
import com.github.javaparser.ast.nodeTypes.NodeWithAnnotations;
import com.github.javaparser.ast.nodeTypes.NodeWithName;
import com.github.javaparser.ast.nodeTypes.NodeWithType;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.type.ClassOrInterfaceType;
import com.github.javaparser.ast.type.Type;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.ReceiverParameterMetaModel;
import com.github.javaparser.utils.Utils;

public class ReceiverParameter extends Node implements NodeWithType<ReceiverParameter, Type>, NodeWithAnnotations<ReceiverParameter>, NodeWithName<ReceiverParameter> {
    private NodeList<AnnotationExpr> annotations;
    private Name name;
    private Type type;

    public ReceiverParameter() {
        this(null, new NodeList(), new ClassOrInterfaceType(), new Name());
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (ReceiverParameter) arg);
    }

    @Override
    public NodeList<AnnotationExpr> getAnnotations() {
        return this.annotations;
    }

    @Override
    public Name getName() {
        return this.name;
    }

    @Override
    public Type getType2() {
        return this.type;
    }

    @Override
    public boolean remove(Node node) {
        if (node == null) {
            return false;
        }
        for (int i10 = 0; i10 < this.annotations.size(); i10++) {
            if (this.annotations.get(i10) == node) {
                this.annotations.remove(i10);
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
        for (int i10 = 0; i10 < this.annotations.size(); i10++) {
            if (this.annotations.get(i10) == node) {
                this.annotations.set(i10, (int) replacementNode);
                return true;
            }
        }
        if (node == this.name) {
            setName((Name) replacementNode);
            return true;
        }
        if (node != this.type) {
            return super.replace(node, replacementNode);
        }
        setType((Type) replacementNode);
        return true;
    }

    @Override
    public ReceiverParameter setAnnotations(final NodeList annotations) {
        return setAnnotations2((NodeList<AnnotationExpr>) annotations);
    }

    public ReceiverParameter(Type type, Name name) {
        this(null, new NodeList(), type, name);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (ReceiverParameter) arg);
    }

    @Override
    public ReceiverParameterMetaModel getMetaModel() {
        return JavaParserMetaModel.receiverParameterMetaModel;
    }

    @Override
    public ReceiverParameter setAnnotations2(final NodeList<AnnotationExpr> annotations) {
        Utils.assertNotNull(annotations);
        NodeList<AnnotationExpr> nodeList = this.annotations;
        if (annotations == nodeList) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.ANNOTATIONS, nodeList, annotations);
        NodeList<AnnotationExpr> nodeList2 = this.annotations;
        if (nodeList2 != null) {
            nodeList2.setParentNode((Node) null);
        }
        this.annotations = annotations;
        setAsParentNodeOf(annotations);
        return this;
    }

    @Override
    public ReceiverParameter setName(final Name name) {
        Utils.assertNotNull(name);
        Name name2 = this.name;
        if (name == name2) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.NAME, name2, name);
        Name name3 = this.name;
        if (name3 != null) {
            name3.setParentNode((Node) null);
        }
        this.name = name;
        setAsParentNodeOf(name);
        return this;
    }

    @Override
    public ReceiverParameter setType(final Type type) {
        Utils.assertNotNull(type);
        Type type2 = this.type;
        if (type == type2) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.TYPE, type2, type);
        Type type3 = this.type;
        if (type3 != null) {
            type3.setParentNode((Node) null);
        }
        this.type = type;
        setAsParentNodeOf(type);
        return this;
    }

    public ReceiverParameter(Type type, String name) {
        this(null, new NodeList(), type, new Name(name));
    }

    @Override
    public ReceiverParameter mo1220clone() {
        return (ReceiverParameter) accept(new CloneVisitor(), (CloneVisitor) null);
    }

    @AllFieldsConstructor
    public ReceiverParameter(NodeList<AnnotationExpr> annotations, Type type, Name name) {
        this(null, annotations, type, name);
    }

    public ReceiverParameter(TokenRange tokenRange, NodeList<AnnotationExpr> annotations, Type type, Name name) {
        super(tokenRange);
        setAnnotations2(annotations);
        setType(type);
        setName(name);
        customInitialization();
    }
}
