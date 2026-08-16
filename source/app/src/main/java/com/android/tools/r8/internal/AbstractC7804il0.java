package com.android.tools.r8.internal;

public abstract class AbstractC7804il0 {

    public static final Class f49049a;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.w0");
        } catch (Throwable unused) {
            cls = null;
        }
        f49049a = cls;
        a(false);
        a(true);
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public static AbstractC9169qv0 a(boolean z10) {
        if (com.google.protobuf.u2.class == 0) {
            return null;
        }
        try {
            return (AbstractC9169qv0) com.google.protobuf.u2.class.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z10));
        } catch (Throwable unused) {
            return null;
        }
    }
}
