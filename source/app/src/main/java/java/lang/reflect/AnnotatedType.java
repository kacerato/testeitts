package java.lang.reflect;

import java.lang.annotation.Annotation;

public interface AnnotatedType extends AnnotatedElement {
    Type getType();

    @Override
    <T extends Annotation> T getAnnotation(Class<T> cls);

    @Override
    Annotation[] getAnnotations();

    @Override
    Annotation[] getDeclaredAnnotations();

    default AnnotatedType getAnnotatedOwnerType() {
        return null;
    }
}
