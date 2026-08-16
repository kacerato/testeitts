package com.github.javaparser.ast.type;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.expr.AnnotationExpr;
import com.github.javaparser.ast.nodeTypes.NodeWithAnnotations;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.VoidTypeMetaModel;
import com.github.javaparser.resolution.Context;
import com.github.javaparser.resolution.types.ResolvedType;
import com.github.javaparser.resolution.types.ResolvedVoidType;
import java.util.Optional;
import java.util.function.Consumer;

public class VoidType extends Type implements NodeWithAnnotations<VoidType> {
    @AllFieldsConstructor
    public VoidType() {
        this(null);
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (VoidType) arg);
    }

    @Override
    public String asString() {
        return "void";
    }

    @Override
    public VoidType asVoidType() {
        return this;
    }

    @Override
    public ResolvedType convertToUsage(Context context) {
        return ResolvedVoidType.INSTANCE;
    }

    @Override
    public void ifVoidType(Consumer<VoidType> action) {
        action.accept(this);
    }

    @Override
    public boolean isVoidType() {
        return true;
    }

    @Override
    public VoidType setAnnotations(NodeList annotations) {
        return setAnnotations((NodeList<AnnotationExpr>) annotations);
    }

    @Override
    public String toDescriptor() {
        return "V";
    }

    @Override
    public Optional<VoidType> toVoidType() {
        return Optional.of(this);
    }

    public VoidType(TokenRange tokenRange) {
        super(tokenRange);
        customInitialization();
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (VoidType) arg);
    }

    @Override
    public Type setAnnotations2(NodeList annotations) {
        return setAnnotations((NodeList<AnnotationExpr>) annotations);
    }

    @Override
    public VoidTypeMetaModel getMetaModel() {
        return JavaParserMetaModel.voidTypeMetaModel;
    }

    @Override
    public ResolvedVoidType resolve() {
        return (ResolvedVoidType) getSymbolResolver().toResolvedType(this, ResolvedVoidType.class);
    }

    @Override
    public VoidType setAnnotations(NodeList<AnnotationExpr> annotations) {
        return (VoidType) super.setAnnotations(annotations);
    }

    @Override
    public VoidType mo1220clone() {
        return (VoidType) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
