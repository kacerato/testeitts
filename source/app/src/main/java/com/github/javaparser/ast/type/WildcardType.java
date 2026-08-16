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
import com.github.javaparser.metamodel.OptionalProperty;
import com.github.javaparser.metamodel.WildcardTypeMetaModel;
import com.github.javaparser.resolution.Context;
import com.github.javaparser.resolution.types.ResolvedType;
import com.github.javaparser.resolution.types.ResolvedWildcard;
import java.util.Optional;
import java.util.function.Consumer;

public class WildcardType extends Type implements NodeWithAnnotations<WildcardType> {

    @OptionalProperty
    private ReferenceType extendedType;

    @OptionalProperty
    private ReferenceType superType;

    public WildcardType() {
        this(null, null, null, new NodeList());
    }

    public static void lambda$asString$0(final StringBuilder str, ReferenceType t10) {
        str.append(" extends ");
        str.append(t10.asString());
    }

    public static void lambda$asString$1(final StringBuilder str, ReferenceType t10) {
        str.append(" super ");
        str.append(t10.asString());
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (WildcardType) arg);
    }

    @Override
    public String asString() {
        final StringBuilder sb2 = new StringBuilder("?");
        getExtendedType().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                WildcardType.lambda$asString$0(StringBuilder.this, (ReferenceType) obj);
            }
        });
        getSuperType().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                WildcardType.lambda$asString$1(StringBuilder.this, (ReferenceType) obj);
            }
        });
        return sb2.toString();
    }

    @Override
    public WildcardType asWildcardType() {
        return this;
    }

    @Override
    public ResolvedType convertToUsage(Context context) {
        if (getExtendedType().isPresent() && !getSuperType().isPresent()) {
            return ResolvedWildcard.extendsBound(getExtendedType().get().convertToUsage(context));
        }
        if (!getExtendedType().isPresent() && getSuperType().isPresent()) {
            return ResolvedWildcard.superBound(getSuperType().get().convertToUsage(context));
        }
        if (getExtendedType().isPresent() || getSuperType().isPresent()) {
            throw new UnsupportedOperationException(toString());
        }
        return ResolvedWildcard.UNBOUNDED;
    }

    public Optional<ReferenceType> getExtendedType() {
        return Optional.ofNullable(this.extendedType);
    }

    public Optional<ReferenceType> getSuperType() {
        return Optional.ofNullable(this.superType);
    }

    @Override
    public void ifWildcardType(Consumer<WildcardType> action) {
        action.accept(this);
    }

    @Override
    public boolean isWildcardType() {
        return true;
    }

    @Override
    public boolean remove(Node node) {
        if (node == null) {
            return false;
        }
        ReferenceType referenceType = this.extendedType;
        if (referenceType != null && node == referenceType) {
            removeExtendedType();
            return true;
        }
        ReferenceType referenceType2 = this.superType;
        if (referenceType2 == null || node != referenceType2) {
            return super.remove(node);
        }
        removeSuperType();
        return true;
    }

    public WildcardType removeExtendedType() {
        return setExtendedType(null);
    }

    public WildcardType removeSuperType() {
        return setSuperType(null);
    }

    @Override
    public boolean replace(Node node, Node replacementNode) {
        if (node == null) {
            return false;
        }
        ReferenceType referenceType = this.extendedType;
        if (referenceType != null && node == referenceType) {
            setExtendedType((ReferenceType) replacementNode);
            return true;
        }
        ReferenceType referenceType2 = this.superType;
        if (referenceType2 == null || node != referenceType2) {
            return super.replace(node, replacementNode);
        }
        setSuperType((ReferenceType) replacementNode);
        return true;
    }

    @Override
    public WildcardType setAnnotations(NodeList annotations) {
        return setAnnotations((NodeList<AnnotationExpr>) annotations);
    }

    public WildcardType setExtendedType(final ReferenceType extendedType) {
        ReferenceType referenceType = this.extendedType;
        if (extendedType == referenceType) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.EXTENDED_TYPE, referenceType, extendedType);
        ReferenceType referenceType2 = this.extendedType;
        if (referenceType2 != null) {
            referenceType2.setParentNode((Node) null);
        }
        this.extendedType = extendedType;
        setAsParentNodeOf(extendedType);
        return this;
    }

    public WildcardType setSuperType(final ReferenceType superType) {
        ReferenceType referenceType = this.superType;
        if (superType == referenceType) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.SUPER_TYPE, referenceType, superType);
        ReferenceType referenceType2 = this.superType;
        if (referenceType2 != null) {
            referenceType2.setParentNode((Node) null);
        }
        this.superType = superType;
        setAsParentNodeOf(superType);
        return this;
    }

    @Override
    public Optional<WildcardType> toWildcardType() {
        return Optional.of(this);
    }

    public WildcardType(final ReferenceType extendedType) {
        this(null, extendedType, null, new NodeList());
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (WildcardType) arg);
    }

    @Override
    public Type setAnnotations2(NodeList annotations) {
        return setAnnotations((NodeList<AnnotationExpr>) annotations);
    }

    @AllFieldsConstructor
    public WildcardType(final ReferenceType extendedType, final ReferenceType superType, final NodeList<AnnotationExpr> annotations) {
        this(null, extendedType, superType, annotations);
    }

    @Override
    public WildcardTypeMetaModel getMetaModel() {
        return JavaParserMetaModel.wildcardTypeMetaModel;
    }

    @Override
    public ResolvedWildcard resolve() {
        return (ResolvedWildcard) getSymbolResolver().toResolvedType(this, ResolvedWildcard.class);
    }

    @Override
    public WildcardType setAnnotations(NodeList<AnnotationExpr> annotations) {
        return (WildcardType) super.setAnnotations(annotations);
    }

    public WildcardType(TokenRange tokenRange, ReferenceType extendedType, ReferenceType superType, NodeList<AnnotationExpr> annotations) {
        super(tokenRange, annotations);
        setExtendedType(extendedType);
        setSuperType(superType);
        customInitialization();
    }

    @Override
    public WildcardType mo1220clone() {
        return (WildcardType) accept(new CloneVisitor(), (CloneVisitor) null);
    }

    public WildcardType(TokenRange tokenRange, ReferenceType extendedType, ReferenceType superType) {
        super(tokenRange);
        setExtendedType(extendedType);
        setSuperType(superType);
        customInitialization();
    }
}
