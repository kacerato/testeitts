package com.github.javaparser.ast.nodeTypes;

import com.github.javaparser.StaticJavaParser;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.expr.AnnotationExpr;
import com.github.javaparser.ast.expr.Expression;
import com.github.javaparser.ast.expr.MarkerAnnotationExpr;
import com.github.javaparser.ast.expr.NormalAnnotationExpr;
import com.github.javaparser.ast.expr.SingleMemberAnnotationExpr;
import java.lang.annotation.Annotation;
import java.util.Optional;
import java.util.function.Predicate;

public interface NodeWithAnnotations<N extends Node> {
    static boolean lambda$getAnnotationByName$1(final String annotationName, AnnotationExpr a10) {
        return a10.getName().getIdentifier().equals(annotationName);
    }

    static boolean lambda$isAnnotationPresent$0(final String annotationName, AnnotationExpr a10) {
        return a10.getName().getIdentifier().equals(annotationName);
    }

    default NormalAnnotationExpr addAndGetAnnotation(String name) {
        NormalAnnotationExpr normalAnnotationExpr = new NormalAnnotationExpr(StaticJavaParser.parseName(name), new NodeList());
        addAnnotation(normalAnnotationExpr);
        return normalAnnotationExpr;
    }

    default N addAnnotation(AnnotationExpr element) {
        getAnnotations().add((NodeList<AnnotationExpr>) element);
        return (N) this;
    }

    default N addMarkerAnnotation(String name) {
        addAnnotation(new MarkerAnnotationExpr(StaticJavaParser.parseName(name)));
        return (N) this;
    }

    default N addSingleMemberAnnotation(String name, Expression expression) {
        return addAnnotation(new SingleMemberAnnotationExpr(StaticJavaParser.parseName(name), expression));
    }

    default AnnotationExpr getAnnotation(int i10) {
        return getAnnotations().get(i10);
    }

    default Optional<AnnotationExpr> getAnnotationByClass(Class<? extends Annotation> annotationClass) {
        return getAnnotationByName(annotationClass.getSimpleName());
    }

    default Optional<AnnotationExpr> getAnnotationByName(final String annotationName) {
        return getAnnotations().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getAnnotationByName$1;
                lambda$getAnnotationByName$1 = NodeWithAnnotations.lambda$getAnnotationByName$1(String.this, (AnnotationExpr) obj);
                return lambda$getAnnotationByName$1;
            }
        }).findFirst();
    }

    NodeList<AnnotationExpr> getAnnotations();

    default boolean isAnnotationPresent(final String annotationName) {
        return getAnnotations().stream().anyMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$isAnnotationPresent$0;
                lambda$isAnnotationPresent$0 = NodeWithAnnotations.lambda$isAnnotationPresent$0(String.this, (AnnotationExpr) obj);
                return lambda$isAnnotationPresent$0;
            }
        });
    }

    default N setAnnotation(int i10, AnnotationExpr element) {
        getAnnotations().set(i10, (int) element);
        return (N) this;
    }

    N setAnnotations(NodeList<AnnotationExpr> annotations);

    void tryAddImportToParentCompilationUnit(Class<?> clazz);

    default NormalAnnotationExpr addAndGetAnnotation(Class<? extends Annotation> clazz) {
        tryAddImportToParentCompilationUnit(clazz);
        return addAndGetAnnotation(clazz.getSimpleName());
    }

    default N addAnnotation(String name) {
        addAnnotation(new NormalAnnotationExpr(StaticJavaParser.parseName(name), new NodeList()));
        return (N) this;
    }

    default boolean isAnnotationPresent(Class<? extends Annotation> annotationClass) {
        return isAnnotationPresent(annotationClass.getSimpleName());
    }

    default N addMarkerAnnotation(Class<? extends Annotation> clazz) {
        tryAddImportToParentCompilationUnit(clazz);
        return addMarkerAnnotation(clazz.getSimpleName());
    }

    default N addSingleMemberAnnotation(Class<? extends Annotation> clazz, Expression expression) {
        tryAddImportToParentCompilationUnit(clazz);
        return addSingleMemberAnnotation(clazz.getSimpleName(), expression);
    }

    default N addAnnotation(Class<? extends Annotation> clazz) {
        tryAddImportToParentCompilationUnit(clazz);
        return addAnnotation(clazz.getSimpleName());
    }

    default N addSingleMemberAnnotation(String name, String value) {
        return addSingleMemberAnnotation(name, StaticJavaParser.parseExpression(value));
    }

    default N addSingleMemberAnnotation(Class<? extends Annotation> clazz, String value) {
        tryAddImportToParentCompilationUnit(clazz);
        return addSingleMemberAnnotation(clazz.getSimpleName(), value);
    }
}
