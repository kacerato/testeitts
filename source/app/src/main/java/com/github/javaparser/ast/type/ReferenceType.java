package com.github.javaparser.ast.type;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.expr.AnnotationExpr;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.ReferenceTypeMetaModel;
import java.util.Optional;
import java.util.function.Consumer;

public abstract class ReferenceType extends Type {
    public ReferenceType() {
        this(null, new NodeList());
    }

    @Override
    public ReferenceType asReferenceType() {
        return this;
    }

    @Override
    public void ifReferenceType(Consumer<ReferenceType> action) {
        action.accept(this);
    }

    @Override
    public boolean isReferenceType() {
        return true;
    }

    @Override
    public abstract String toDescriptor();

    @Override
    public Optional<ReferenceType> toReferenceType() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public ReferenceType(NodeList<AnnotationExpr> annotations) {
        this(null, annotations);
    }

    public ReferenceType(TokenRange tokenRange, NodeList<AnnotationExpr> annotations) {
        super(tokenRange, annotations);
        customInitialization();
    }

    @Override
    public ReferenceTypeMetaModel getMetaModel() {
        return JavaParserMetaModel.referenceTypeMetaModel;
    }

    @Override
    public ReferenceType mo1220clone() {
        return (ReferenceType) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
