package cb;

import java.lang.reflect.Array;

public final class c {
    public static Object a(Object array, int index) {
        return Array.get(array, index);
    }

    public static int b(Object array) {
        return Array.getLength(array);
    }

    public static Object c(Class c10, int size) {
        return Array.newInstance((Class<?>) c10, size);
    }

    public static void d(Object array, int index, Object value) {
        Array.set(array, index, value);
    }
}
