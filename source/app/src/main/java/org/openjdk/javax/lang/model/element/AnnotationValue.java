package org.openjdk.javax.lang.model.element;

public interface AnnotationValue {
    <R, P> R accept(AnnotationValueVisitor<R, P> annotationValueVisitor, P p10);

    Object getValue();

    String toString();
}
