package com.github.javaparser.ast.type;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.expr.AnnotationExpr;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.UnknownTypeMetaModel;
import com.github.javaparser.resolution.Context;
import com.github.javaparser.resolution.types.ResolvedReferenceType;
import com.github.javaparser.resolution.types.ResolvedType;
import java.util.Optional;
import java.util.function.Consumer;

public class UnknownType extends Type {
    @AllFieldsConstructor
    public UnknownType() {
        this(null);
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (UnknownType) arg);
    }

    @Override
    public String asString() {
        return "";
    }

    @Override
    public UnknownType asUnknownType() {
        return this;
    }

    @Override
    public ResolvedType convertToUsage(Context context) {
        throw new IllegalArgumentException("Inferred lambda parameter type");
    }

    @Override
    public void ifUnknownType(Consumer<UnknownType> action) {
        action.accept(this);
    }

    @Override
    public boolean isPhantom() {
        return true;
    }

    @Override
    public boolean isUnknownType() {
        return true;
    }

    @Override
    public Type setAnnotations(NodeList annotations) {
        return setAnnotations((NodeList<AnnotationExpr>) annotations);
    }

    @Override
    public Optional<UnknownType> toUnknownType() {
        return Optional.of(this);
    }

    public UnknownType(TokenRange tokenRange) {
        super(tokenRange);
        customInitialization();
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (UnknownType) arg);
    }

    @Override
    public ResolvedType resolve() {
        return (ResolvedType) getSymbolResolver().toResolvedType(this, ResolvedReferenceType.class);
    }

    @Override
    public UnknownType setAnnotations(NodeList<AnnotationExpr> annotations) {
        if (annotations.size() <= 0) {
            return (UnknownType) super.setAnnotations(annotations);
        }
        throw new IllegalStateException("Inferred lambda types cannot be annotated.");
    }

    @Override
    public UnknownTypeMetaModel getMetaModel() {
        return JavaParserMetaModel.unknownTypeMetaModel;
    }

    @Override
    public UnknownType mo1220clone() {
        return (UnknownType) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
