package java.lang.reflect;

public interface AnnotatedParameterizedType extends AnnotatedType {
    AnnotatedType[] getAnnotatedActualTypeArguments();

    @Override
    AnnotatedType getAnnotatedOwnerType();
}
