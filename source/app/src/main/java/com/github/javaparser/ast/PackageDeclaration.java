package com.github.javaparser.ast;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.expr.AnnotationExpr;
import com.github.javaparser.ast.expr.Name;
import com.github.javaparser.ast.nodeTypes.NodeWithAnnotations;
import com.github.javaparser.ast.nodeTypes.NodeWithName;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.PackageDeclarationMetaModel;
import com.github.javaparser.utils.Utils;

public class PackageDeclaration extends Node implements NodeWithAnnotations<PackageDeclaration>, NodeWithName<PackageDeclaration> {
    private NodeList<AnnotationExpr> annotations;
    private Name name;

    public PackageDeclaration() {
        this(null, new NodeList(), new Name());
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (PackageDeclaration) arg);
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
        if (node != this.name) {
            return super.replace(node, replacementNode);
        }
        setName((Name) replacementNode);
        return true;
    }

    @Override
    public PackageDeclaration setAnnotations(final NodeList annotations) {
        return setAnnotations2((NodeList<AnnotationExpr>) annotations);
    }

    public PackageDeclaration(Name name) {
        this(null, new NodeList(), name);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (PackageDeclaration) arg);
    }

    @Override
    public PackageDeclarationMetaModel getMetaModel() {
        return JavaParserMetaModel.packageDeclarationMetaModel;
    }

    @Override
    public PackageDeclaration setAnnotations2(final NodeList<AnnotationExpr> annotations) {
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
    public PackageDeclaration setName(final Name name) {
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

    @AllFieldsConstructor
    public PackageDeclaration(NodeList<AnnotationExpr> annotations, Name name) {
        this(null, annotations, name);
    }

    @Override
    public PackageDeclaration mo1220clone() {
        return (PackageDeclaration) accept(new CloneVisitor(), (CloneVisitor) null);
    }

    public PackageDeclaration(TokenRange tokenRange, NodeList<AnnotationExpr> annotations, Name name) {
        super(tokenRange);
        this.annotations = new NodeList<>();
        setAnnotations2(annotations);
        setName(name);
        customInitialization();
    }
}
