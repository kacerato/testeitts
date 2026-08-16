package java.lang.reflect;

import java.lang.annotation.Annotation;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.function.Function;
import java.util.stream.Collectors;
import sun.reflect.annotation.AnnotationSupport;
import sun.reflect.annotation.AnnotationType;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/reflect/AnnotatedElement.class
 */
public interface AnnotatedElement {
    <T extends Annotation> T getAnnotation(Class<T> cls);

    Annotation[] getAnnotations();

    Annotation[] getDeclaredAnnotations();

    default boolean isAnnotationPresent(Class<? extends Annotation> annotationClass) {
        return getAnnotation(annotationClass) != null;
    }

    default <T extends Annotation> T[] getAnnotationsByType(Class<T> cls) {
        Class superclass;
        Annotation[] declaredAnnotationsByType = getDeclaredAnnotationsByType(cls);
        if (declaredAnnotationsByType.length == 0 && (this instanceof Class)) {
            Class cls2 = (Class) this;
            if (AnnotationType.getInstance(cls).isInherited() && (superclass = cls2.getSuperclass()) != null) {
                declaredAnnotationsByType = superclass.getAnnotationsByType(cls);
            }
        }
        return (T[]) declaredAnnotationsByType;
    }

    default <T extends Annotation> T getDeclaredAnnotation(Class<T> annotationClass) {
        Objects.requireNonNull(annotationClass);
        for (Annotation annotation : getDeclaredAnnotations()) {
            if (annotationClass.equals(annotation.annotationType())) {
                return annotationClass.cast(annotation);
            }
        }
        return null;
    }

    default <T extends Annotation> T[] getDeclaredAnnotationsByType(Class<T> cls) {
        Objects.requireNonNull(cls);
        return (T[]) AnnotationSupport.getDirectlyAndIndirectlyPresent((Map) Arrays.stream(getDeclaredAnnotations()).collect(Collectors.toMap((v0) -> {
            return v0.annotationType();
        }, Function.identity(), (first, second) -> {
            return first;
        }, LinkedHashMap::new)), cls);
    }
}
