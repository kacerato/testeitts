package org.openjdk.javax.lang.model;

import java.lang.annotation.Annotation;
import java.util.List;
import org.openjdk.javax.lang.model.element.AnnotationMirror;

public interface AnnotatedConstruct {
    <A extends Annotation> A getAnnotation(Class<A> cls);

    List<? extends AnnotationMirror> getAnnotationMirrors();

    <A extends Annotation> A[] getAnnotationsByType(Class<A> cls);
}
