package com.github.javaparser.ast.type;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.expr.AnnotationExpr;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.TypeMetaModel;
import com.github.javaparser.resolution.Resolvable;
import com.github.javaparser.resolution.types.ResolvedType;
import com.github.javaparser.utils.CodeGenerationUtils;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public abstract class Type extends Node implements Resolvable<ResolvedType>, ConvertibleToUsage {
    private NodeList<AnnotationExpr> annotations;

    public Type(TokenRange range) {
        this(range, new NodeList());
    }

    public ArrayType asArrayType() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not ArrayType, it is %s", this, getClass().getSimpleName()));
    }

    public ClassOrInterfaceType asClassOrInterfaceType() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not ClassOrInterfaceType, it is %s", this, getClass().getSimpleName()));
    }

    public IntersectionType asIntersectionType() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not IntersectionType, it is %s", this, getClass().getSimpleName()));
    }

    public PrimitiveType asPrimitiveType() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not PrimitiveType, it is %s", this, getClass().getSimpleName()));
    }

    public ReferenceType asReferenceType() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not ReferenceType, it is %s", this, getClass().getSimpleName()));
    }

    public abstract String asString();

    public TypeParameter asTypeParameter() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not TypeParameter, it is %s", this, getClass().getSimpleName()));
    }

    public UnionType asUnionType() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not UnionType, it is %s", this, getClass().getSimpleName()));
    }

    public UnknownType asUnknownType() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not UnknownType, it is %s", this, getClass().getSimpleName()));
    }

    public VarType asVarType() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not VarType, it is %s", this, getClass().getSimpleName()));
    }

    public VoidType asVoidType() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not VoidType, it is %s", this, getClass().getSimpleName()));
    }

    public WildcardType asWildcardType() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not WildcardType, it is %s", this, getClass().getSimpleName()));
    }

    public AnnotationExpr getAnnotation(int i10) {
        return getAnnotations().get(i10);
    }

    public NodeList<AnnotationExpr> getAnnotations() {
        return this.annotations;
    }

    public int getArrayLevel() {
        return 0;
    }

    public Type getElementType() {
        return this;
    }

    public void ifArrayType(Consumer<ArrayType> action) {
    }

    public void ifClassOrInterfaceType(Consumer<ClassOrInterfaceType> action) {
    }

    public void ifIntersectionType(Consumer<IntersectionType> action) {
    }

    public void ifPrimitiveType(Consumer<PrimitiveType> action) {
    }

    public void ifReferenceType(Consumer<ReferenceType> action) {
    }

    public void ifTypeParameter(Consumer<TypeParameter> action) {
    }

    public void ifUnionType(Consumer<UnionType> action) {
    }

    public void ifUnknownType(Consumer<UnknownType> action) {
    }

    public void ifVarType(Consumer<VarType> action) {
    }

    public void ifVoidType(Consumer<VoidType> action) {
    }

    public void ifWildcardType(Consumer<WildcardType> action) {
    }

    public boolean isArrayType() {
        return false;
    }

    public boolean isClassOrInterfaceType() {
        return false;
    }

    public boolean isIntersectionType() {
        return false;
    }

    public boolean isPrimitiveType() {
        return false;
    }

    public boolean isReferenceType() {
        return false;
    }

    public boolean isTypeParameter() {
        return false;
    }

    public boolean isUnionType() {
        return false;
    }

    public boolean isUnknownType() {
        return false;
    }

    public boolean isVarType() {
        return false;
    }

    public boolean isVoidType() {
        return false;
    }

    public boolean isWildcardType() {
        return false;
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
        return super.replace(node, replacementNode);
    }

    @Override
    public abstract ResolvedType resolve();

    public Type setAnnotations(final NodeList<AnnotationExpr> annotations) {
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

    public Optional<ArrayType> toArrayType() {
        return Optional.empty();
    }

    public Optional<ClassOrInterfaceType> toClassOrInterfaceType() {
        return Optional.empty();
    }

    public String toDescriptor() {
        return "";
    }

    public Optional<IntersectionType> toIntersectionType() {
        return Optional.empty();
    }

    public Optional<PrimitiveType> toPrimitiveType() {
        return Optional.empty();
    }

    public Optional<ReferenceType> toReferenceType() {
        return Optional.empty();
    }

    public Optional<TypeParameter> toTypeParameter() {
        return Optional.empty();
    }

    public Optional<UnionType> toUnionType() {
        return Optional.empty();
    }

    public Optional<UnknownType> toUnknownType() {
        return Optional.empty();
    }

    public Optional<VarType> toVarType() {
        return Optional.empty();
    }

    public Optional<VoidType> toVoidType() {
        return Optional.empty();
    }

    public Optional<WildcardType> toWildcardType() {
        return Optional.empty();
    }

    @AllFieldsConstructor
    public Type(NodeList<AnnotationExpr> annotations) {
        this(null, annotations);
    }

    @Override
    public TypeMetaModel getMetaModel() {
        return JavaParserMetaModel.typeMetaModel;
    }

    public Type(TokenRange tokenRange, NodeList<AnnotationExpr> annotations) {
        super(tokenRange);
        setAnnotations(annotations);
        customInitialization();
    }

    @Override
    public Type mo1220clone() {
        return (Type) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
