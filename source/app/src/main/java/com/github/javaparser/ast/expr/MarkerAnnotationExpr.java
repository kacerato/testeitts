package com.github.javaparser.ast.expr;

import com.github.javaparser.StaticJavaParser;
import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.MarkerAnnotationExprMetaModel;
import java.util.Optional;
import java.util.function.Consumer;

public class MarkerAnnotationExpr extends AnnotationExpr {
    public MarkerAnnotationExpr() {
        this(null, new Name());
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (MarkerAnnotationExpr) arg);
    }

    @Override
    public MarkerAnnotationExpr asMarkerAnnotationExpr() {
        return this;
    }

    @Override
    public void ifMarkerAnnotationExpr(Consumer<MarkerAnnotationExpr> action) {
        action.accept(this);
    }

    @Override
    public boolean isMarkerAnnotationExpr() {
        return true;
    }

    @Override
    public Optional<MarkerAnnotationExpr> toMarkerAnnotationExpr() {
        return Optional.of(this);
    }

    public MarkerAnnotationExpr(final String name) {
        this(null, StaticJavaParser.parseName(name));
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (MarkerAnnotationExpr) arg);
    }

    @AllFieldsConstructor
    public MarkerAnnotationExpr(final Name name) {
        this(null, name);
    }

    public MarkerAnnotationExpr(TokenRange tokenRange, Name name) {
        super(tokenRange, name);
        customInitialization();
    }

    @Override
    public MarkerAnnotationExprMetaModel getMetaModel() {
        return JavaParserMetaModel.markerAnnotationExprMetaModel;
    }

    @Override
    public MarkerAnnotationExpr mo1220clone() {
        return (MarkerAnnotationExpr) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
