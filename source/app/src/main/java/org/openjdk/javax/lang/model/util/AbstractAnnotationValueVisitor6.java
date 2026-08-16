package org.openjdk.javax.lang.model.util;

import org.openjdk.javax.annotation.processing.SupportedSourceVersion;
import org.openjdk.javax.lang.model.SourceVersion;
import org.openjdk.javax.lang.model.element.AnnotationValue;
import org.openjdk.javax.lang.model.element.AnnotationValueVisitor;
import org.openjdk.javax.lang.model.element.UnknownAnnotationValueException;

@SupportedSourceVersion(SourceVersion.RELEASE_6)
public abstract class AbstractAnnotationValueVisitor6<R, P> implements AnnotationValueVisitor<R, P> {
    @Deprecated
    public AbstractAnnotationValueVisitor6() {
    }

    @Override
    public final R visit(AnnotationValue annotationValue, P p10) {
        return (R) annotationValue.accept(this, p10);
    }

    @Override
    public R visitUnknown(AnnotationValue annotationValue, P p10) {
        throw new UnknownAnnotationValueException(annotationValue, p10);
    }

    @Override
    public final R visit(AnnotationValue annotationValue) {
        return (R) annotationValue.accept(this, null);
    }
}
