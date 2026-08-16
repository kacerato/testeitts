package java.lang.reflect;

import java.lang.annotation.Annotation;
import java.util.Map;
import java.util.Objects;
import jdk.internal.access.SharedSecrets;
import sun.reflect.annotation.AnnotationParser;
import sun.reflect.annotation.TypeAnnotation;
import sun.reflect.annotation.TypeAnnotationParser;
import sun.reflect.generics.factory.CoreReflectionFactory;
import sun.reflect.generics.factory.GenericsFactory;
import sun.reflect.generics.repository.FieldRepository;
import sun.reflect.generics.scope.ClassScope;

public final class RecordComponent implements AnnotatedElement {
    private Class<?> clazz;
    private String name;
    private Class<?> type;
    private Method accessor;
    private String signature;
    private volatile transient FieldRepository genericInfo;
    private byte[] annotations;
    private byte[] typeAnnotations;
    private RecordComponent root;
    private volatile transient Map<Class<? extends Annotation>, Annotation> declaredAnnotations;

    private RecordComponent() {
    }

    public String getName() {
        return this.name;
    }

    public Class<?> getType() {
        return this.type;
    }

    public String getGenericSignature() {
        return this.signature;
    }

    public Type getGenericType() {
        if (getGenericSignature() != null) {
            return getGenericInfo().getGenericType();
        }
        return getType();
    }

    private FieldRepository getGenericInfo() {
        FieldRepository genericInfo = this.genericInfo;
        if (genericInfo == null) {
            genericInfo = FieldRepository.make(getGenericSignature(), getFactory());
            this.genericInfo = genericInfo;
        }
        return genericInfo;
    }

    private GenericsFactory getFactory() {
        Class<?> c10 = getDeclaringRecord();
        return CoreReflectionFactory.make(c10, ClassScope.make(c10));
    }

    public AnnotatedType getAnnotatedType() {
        return TypeAnnotationParser.buildAnnotatedType(this.typeAnnotations, SharedSecrets.getJavaLangAccess().getConstantPool(getDeclaringRecord()), this, getDeclaringRecord(), getGenericType(), TypeAnnotation.TypeAnnotationTarget.FIELD);
    }

    public Method getAccessor() {
        return this.accessor;
    }

    @Override
    public <T extends Annotation> T getAnnotation(Class<T> annotationClass) {
        Objects.requireNonNull(annotationClass);
        return annotationClass.cast(declaredAnnotations().get(annotationClass));
    }

    private Map<Class<? extends Annotation>, Annotation> declaredAnnotations() {
        Map<Class<? extends Annotation>, Annotation> map = this.declaredAnnotations;
        Map<Class<? extends Annotation>, Annotation> declAnnos = map;
        if (map == null) {
            synchronized (this) {
                Map<Class<? extends Annotation>, Annotation> map2 = this.declaredAnnotations;
                declAnnos = map2;
                if (map2 == null) {
                    RecordComponent root = this.root;
                    if (root != null) {
                        declAnnos = root.declaredAnnotations();
                    } else {
                        declAnnos = AnnotationParser.parseAnnotations(this.annotations, SharedSecrets.getJavaLangAccess().getConstantPool(getDeclaringRecord()), getDeclaringRecord());
                    }
                    this.declaredAnnotations = declAnnos;
                }
            }
        }
        return declAnnos;
    }

    @Override
    public Annotation[] getAnnotations() {
        return getDeclaredAnnotations();
    }

    @Override
    public Annotation[] getDeclaredAnnotations() {
        return AnnotationParser.toArray(declaredAnnotations());
    }

    public String toString() {
        return getType().getTypeName() + " " + getName();
    }

    public Class<?> getDeclaringRecord() {
        return this.clazz;
    }
}
