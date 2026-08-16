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
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.NonEmptyProperty;
import com.github.javaparser.metamodel.UnionTypeMetaModel;
import com.github.javaparser.resolution.Context;
import com.github.javaparser.resolution.types.ResolvedType;
import com.github.javaparser.resolution.types.ResolvedUnionType;
import com.github.javaparser.utils.Utils;
import java.util.List;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.stream.Collectors;

public class UnionType extends Type implements NodeWithAnnotations<UnionType> {

    @NonEmptyProperty
    private NodeList<ReferenceType> elements;

    public UnionType() {
        this(null, new NodeList());
    }

    public static ResolvedType lambda$convertToUsage$0(final Context context, ReferenceType el2) {
        return el2.convertToUsage(context);
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (UnionType) arg);
    }

    @Override
    public String asString() {
        return (String) this.elements.stream().map(new e()).collect(Collectors.joining("|"));
    }

    @Override
    public UnionType asUnionType() {
        return this;
    }

    @Override
    public ResolvedType convertToUsage(final Context context) {
        return new ResolvedUnionType((List) getElements().stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                ResolvedType lambda$convertToUsage$0;
                lambda$convertToUsage$0 = UnionType.lambda$convertToUsage$0(Context.this, (ReferenceType) obj);
                return lambda$convertToUsage$0;
            }
        }).collect(Collectors.toList()));
    }

    public NodeList<ReferenceType> getElements() {
        return this.elements;
    }

    @Override
    public void ifUnionType(Consumer<UnionType> action) {
        action.accept(this);
    }

    @Override
    public boolean isUnionType() {
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
    public UnionType setAnnotations(NodeList annotations) {
        return setAnnotations((NodeList<AnnotationExpr>) annotations);
    }

    public UnionType setElements(final NodeList<ReferenceType> elements) {
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
    public Optional<UnionType> toUnionType() {
        return Optional.of(this);
    }

    public UnionType(TokenRange tokenRange, NodeList<ReferenceType> elements) {
        super(tokenRange);
        setElements(elements);
        customInitialization();
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (UnionType) arg);
    }

    @Override
    public Type setAnnotations2(NodeList annotations) {
        return setAnnotations((NodeList<AnnotationExpr>) annotations);
    }

    @Override
    public UnionTypeMetaModel getMetaModel() {
        return JavaParserMetaModel.unionTypeMetaModel;
    }

    @Override
    public ResolvedUnionType resolve() {
        return (ResolvedUnionType) getSymbolResolver().toResolvedType(this, ResolvedUnionType.class);
    }

    @Override
    public UnionType setAnnotations(NodeList<AnnotationExpr> annotations) {
        return (UnionType) super.setAnnotations(annotations);
    }

    @Override
    public UnionType mo1220clone() {
        return (UnionType) accept(new CloneVisitor(), (CloneVisitor) null);
    }

    @AllFieldsConstructor
    public UnionType(NodeList<ReferenceType> elements) {
        this(null, elements);
    }
}
