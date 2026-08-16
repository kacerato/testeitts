package com.github.javaparser.ast.type;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.expr.AnnotationExpr;
import com.github.javaparser.ast.nodeTypes.NodeWithAnnotations;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.IntersectionTypeMetaModel;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.NonEmptyProperty;
import com.github.javaparser.resolution.Context;
import com.github.javaparser.resolution.types.ResolvedIntersectionType;
import com.github.javaparser.resolution.types.ResolvedType;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.stream.Collectors;

public class IntersectionType extends Type implements NodeWithAnnotations<IntersectionType> {

    @NonEmptyProperty
    private NodeList<ReferenceType> elements;

    @AllFieldsConstructor
    public IntersectionType(NodeList<ReferenceType> elements) {
        this(null, elements);
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (IntersectionType) arg);
    }

    @Override
    public IntersectionType asIntersectionType() {
        return this;
    }

    @Override
    public String asString() {
        return (String) this.elements.stream().map(new e()).collect(Collectors.joining("&"));
    }

    @Override
    public ResolvedType convertToUsage(Context context) {
        throw new UnsupportedOperationException(getClass().getCanonicalName());
    }

    public NodeList<ReferenceType> getElements() {
        return this.elements;
    }

    @Override
    public void ifIntersectionType(Consumer<IntersectionType> action) {
        action.accept(this);
    }

    @Override
    public boolean isIntersectionType() {
        return true;
    }

    @Override
    public boolean remove(Node node) {
        if (node == null) {
            return false;
        }
        for (int i10 = 0; i10 < this.elements.size(); i10++) {
            if (this.elements.get(i10) == node) {
                this.elements.remove(i10);
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
        for (int i10 = 0; i10 < this.elements.size(); i10++) {
            if (this.elements.get(i10) == node) {
                this.elements.set(i10, (int) replacementNode);
                return true;
            }
        }
        return super.replace(node, replacementNode);
    }

    @Override
    public IntersectionType setAnnotations(NodeList annotations) {
        return setAnnotations2((NodeList<AnnotationExpr>) annotations);
    }

    public IntersectionType setElements(final NodeList<ReferenceType> elements) {
        Utils.assertNotNull(elements);
        NodeList<ReferenceType> nodeList = this.elements;
        if (elements == nodeList) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.ELEMENTS, nodeList, elements);
        NodeList<ReferenceType> nodeList2 = this.elements;
        if (nodeList2 != null) {
            nodeList2.setParentNode((Node) null);
        }
        this.elements = elements;
        setAsParentNodeOf(elements);
        return this;
    }

    @Override
    public Optional<IntersectionType> toIntersectionType() {
        return Optional.of(this);
    }

    public IntersectionType(TokenRange tokenRange, NodeList<ReferenceType> elements) {
        super(tokenRange);
        setElements(elements);
        customInitialization();
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (IntersectionType) arg);
    }

    @Override
    public Type setAnnotations(NodeList annotations) {
        return setAnnotations2((NodeList<AnnotationExpr>) annotations);
    }

    @Override
    public IntersectionTypeMetaModel getMetaModel() {
        return JavaParserMetaModel.intersectionTypeMetaModel;
    }

    @Override
    public ResolvedIntersectionType resolve() {
        return (ResolvedIntersectionType) getSymbolResolver().toResolvedType(this, ResolvedIntersectionType.class);
    }

    @Override
    public IntersectionType setAnnotations2(NodeList<AnnotationExpr> annotations) {
        return (IntersectionType) super.setAnnotations(annotations);
    }

    @Override
    public IntersectionType mo1220clone() {
        return (IntersectionType) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
