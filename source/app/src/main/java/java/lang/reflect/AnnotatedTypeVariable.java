package java.lang.reflect;

public interface AnnotatedTypeVariable extends AnnotatedType {
    AnnotatedType[] getAnnotatedBounds();

    @Override
    AnnotatedType getAnnotatedOwnerType();
}
