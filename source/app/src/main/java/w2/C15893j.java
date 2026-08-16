package w2;

import javax.annotation.CheckForNull;

@InterfaceC15894k
@v2.c
public final class C15893j {

    public static final Double f126340a = Double.valueOf(0.0d);

    public static final Float f126341b = Float.valueOf(0.0f);

    @CheckForNull
    public static <T> T a(Class<T> cls) {
        H.E(cls);
        if (!cls.isPrimitive()) {
            return null;
        }
        if (cls == Boolean.TYPE) {
            return (T) Boolean.FALSE;
        }
        if (cls == Character.TYPE) {
            return (T) (char) 0;
        }
        if (cls == Byte.TYPE) {
            return (T) (byte) 0;
        }
        if (cls == Short.TYPE) {
            return (T) (short) 0;
        }
        if (cls == Integer.TYPE) {
            return (T) 0;
        }
        if (cls == Long.TYPE) {
            return (T) 0L;
        }
        if (cls == Float.TYPE) {
            return (T) f126341b;
        }
        if (cls == Double.TYPE) {
            return (T) f126340a;
        }
        return null;
    }
}
