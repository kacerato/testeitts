package org.openjdk.javax.lang.model.element;

import java.lang.annotation.Annotation;
import java.util.List;
import java.util.Set;
import org.openjdk.javax.lang.model.AnnotatedConstruct;
import org.openjdk.javax.lang.model.type.TypeMirror;

public interface Element extends AnnotatedConstruct {
    <R, P> R accept(ElementVisitor<R, P> elementVisitor, P p10);

    TypeMirror asType();

    boolean equals(Object obj);

    @Override
    <A extends Annotation> A getAnnotation(Class<A> cls);

    @Override
    List<? extends AnnotationMirror> getAnnotationMirrors();

    List<? extends Element> getEnclosedElements();

    Element getEnclosingElement();

    ElementKind getKind();

    Set<Modifier> getModifiers();

    Name getSimpleName();

    int hashCode();
}
