package com.github.javaparser.ast.type;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.expr.AnnotationExpr;
import com.github.javaparser.ast.expr.SimpleName;
import com.github.javaparser.ast.nodeTypes.NodeWithAnnotations;
import com.github.javaparser.ast.nodeTypes.NodeWithSimpleName;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.TypeParameterMetaModel;
import com.github.javaparser.resolution.Context;
import com.github.javaparser.resolution.types.ResolvedType;
import com.github.javaparser.resolution.types.ResolvedTypeVariable;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.stream.Collectors;

public class TypeParameter extends ReferenceType implements NodeWithSimpleName<TypeParameter>, NodeWithAnnotations<TypeParameter> {
    private SimpleName name;
    private NodeList<ClassOrInterfaceType> typeBound;

    public TypeParameter() {
        this(null, new SimpleName(), new NodeList(), new NodeList());
    }

    public static void lambda$asString$0(final StringBuilder str, NodeList l10) {
        str.append((String) l10.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((ClassOrInterfaceType) obj).asString();
            }
        }).collect(Collectors.joining("&", " extends ", "")));
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (TypeParameter) arg);
    }

    @Override
    public String asString() {
        final StringBuilder sb2 = new StringBuilder(getNameAsString());
        getTypeBound().ifNonEmpty(new Consumer() {
            @Override
            public final void accept(Object obj) {
                TypeParameter.lambda$asString$0(StringBuilder.this, (NodeList) obj);
            }
        });
        return sb2.toString();
    }

    @Override
    public TypeParameter asTypeParameter() {
        return this;
    }

    @Override
    public ResolvedType convertToUsage(Context context) {
        throw new UnsupportedOperationException(getClass().getCanonicalName());
    }

    @Override
    public SimpleName getName() {
        return this.name;
    }

    public NodeList<ClassOrInterfaceType> getTypeBound() {
        return this.typeBound;
    }

    @Override
    public void ifTypeParameter(Consumer<TypeParameter> action) {
        action.accept(this);
    }

    @Override
    public boolean isTypeParameter() {
        return true;
    }

    @Override
    public boolean remove(Node node) {
        if (node == null) {
            return false;
        }
        for (int i10 = 0; i10 < this.typeBound.size(); i10++) {
            if (this.typeBound.get(i10) == node) {
                this.typeBound.remove(i10);
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
        if (node == this.name) {
            setName((SimpleName) replacementNode);
            return true;
        }
        for (int i10 = 0; i10 < this.typeBound.size(); i10++) {
            if (this.typeBound.get(i10) == node) {
                this.typeBound.set(i10, (int) replacementNode);
                return true;
            }
        }
        return super.replace(node, replacementNode);
    }

    @Override
    public TypeParameter setAnnotations(NodeList annotations) {
        return setAnnotations((NodeList<AnnotationExpr>) annotations);
    }

    public TypeParameter setTypeBound(final NodeList<ClassOrInterfaceType> typeBound) {
        Utils.assertNotNull(typeBound);
        NodeList<ClassOrInterfaceType> nodeList = this.typeBound;
        if (typeBound == nodeList) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.TYPE_BOUND, nodeList, typeBound);
        NodeList<ClassOrInterfaceType> nodeList2 = this.typeBound;
        if (nodeList2 != null) {
            nodeList2.setParentNode((Node) null);
        }
        this.typeBound = typeBound;
        setAsParentNodeOf(typeBound);
        return this;
    }

    @Override
    public String toDescriptor() {
        return String.format("L%s;", resolve().qualifiedName());
    }

    @Override
    public Optional<TypeParameter> toTypeParameter() {
        return Optional.of(this);
    }

    public TypeParameter(final String name) {
        this(null, new SimpleName(name), new NodeList(), new NodeList());
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (TypeParameter) arg);
    }

    @Override
    public Type setAnnotations2(NodeList annotations) {
        return setAnnotations((NodeList<AnnotationExpr>) annotations);
    }

    @Override
    public TypeParameter setName(final SimpleName name) {
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

    public TypeParameter(final String name, final NodeList<ClassOrInterfaceType> typeBound) {
        this(null, new SimpleName(name), typeBound, new NodeList());
    }

    @Override
    public ResolvedTypeVariable resolve() {
        return (ResolvedTypeVariable) getSymbolResolver().toResolvedType(this, ResolvedTypeVariable.class);
    }

    @Override
    public TypeParameter setAnnotations(NodeList<AnnotationExpr> annotations) {
        super.setAnnotations(annotations);
        return this;
    }

    @AllFieldsConstructor
    public TypeParameter(SimpleName name, NodeList<ClassOrInterfaceType> typeBound, NodeList<AnnotationExpr> annotations) {
        this(null, name, typeBound, annotations);
    }

    @Override
    public TypeParameterMetaModel getMetaModel() {
        return JavaParserMetaModel.typeParameterMetaModel;
    }

    public TypeParameter(TokenRange tokenRange, SimpleName name, NodeList<ClassOrInterfaceType> typeBound, NodeList<AnnotationExpr> annotations) {
        super(tokenRange, annotations);
        setName(name);
        setTypeBound(typeBound);
        customInitialization();
    }

    @Override
    public TypeParameter mo1220clone() {
        return (TypeParameter) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
