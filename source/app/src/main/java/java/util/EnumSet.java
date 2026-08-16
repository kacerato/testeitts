package java.util;

import java.io.Serializable;
import java.lang.Enum;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/EnumSet.class
 */
public abstract class EnumSet<E extends Enum<E>> extends AbstractSet<E> implements Cloneable, Serializable {
    EnumSet() {
        throw new RuntimeException("Stub!");
    }

    public static <E extends Enum<E>> EnumSet<E> noneOf(Class<E> elementType) {
        throw new RuntimeException("Stub!");
    }

    public static <E extends Enum<E>> EnumSet<E> allOf(Class<E> elementType) {
        throw new RuntimeException("Stub!");
    }

    public static <E extends Enum<E>> EnumSet<E> copyOf(EnumSet<E> s10) {
        throw new RuntimeException("Stub!");
    }

    public static <E extends Enum<E>> EnumSet<E> copyOf(Collection<E> c10) {
        throw new RuntimeException("Stub!");
    }

    public static <E extends Enum<E>> EnumSet<E> complementOf(EnumSet<E> s10) {
        throw new RuntimeException("Stub!");
    }

    public static <E extends Enum<E>> EnumSet<E> of(E e10) {
        throw new RuntimeException("Stub!");
    }

    public static <E extends Enum<E>> EnumSet<E> of(E e12, E e22) {
        throw new RuntimeException("Stub!");
    }

    public static <E extends Enum<E>> EnumSet<E> of(E e12, E e22, E e32) {
        throw new RuntimeException("Stub!");
    }

    public static <E extends Enum<E>> EnumSet<E> of(E e12, E e22, E e32, E e42) {
        throw new RuntimeException("Stub!");
    }

    public static <E extends Enum<E>> EnumSet<E> of(E e12, E e22, E e32, E e42, E e52) {
        throw new RuntimeException("Stub!");
    }

    @SafeVarargs
    public static <E extends Enum<E>> EnumSet<E> of(E first, E... rest) {
        throw new RuntimeException("Stub!");
    }

    public static <E extends Enum<E>> EnumSet<E> range(E from, E to) {
        throw new RuntimeException("Stub!");
    }

    public EnumSet<E> m1756clone() {
        throw new RuntimeException("Stub!");
    }
}
