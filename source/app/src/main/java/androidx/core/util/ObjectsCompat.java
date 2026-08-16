package androidx.core.util;

import java.util.Objects;

public class ObjectsCompat {

    public static class Api19Impl {
        private Api19Impl() {
        }

        public static boolean equals(Object obj, Object obj2) {
            return Objects.equals(obj, obj2);
        }

        public static int hash(Object... objArr) {
            return Objects.hash(objArr);
        }
    }

    private ObjectsCompat() {
    }

    public static boolean equals(Object obj, Object obj2) {
        return Api19Impl.equals(obj, obj2);
    }

    public static int hash(Object... objArr) {
        return Api19Impl.hash(objArr);
    }

    public static int hashCode(Object obj) {
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public static <T> T requireNonNull(T t10) {
        t10.getClass();
        return t10;
    }

    public static String toString(Object obj, String str) {
        return obj != null ? obj.toString() : str;
    }

    public static <T> T requireNonNull(T t10, String str) {
        if (t10 != null) {
            return t10;
        }
        throw new NullPointerException(str);
    }
}
