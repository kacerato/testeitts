package com.google.android.gms.internal.auth;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import libcore.io.Memory;
import sun.misc.Unsafe;

public final class Q2 {

    public static final Unsafe f61651a;

    public static final Class f61652b;

    public static final boolean f61653c;

    public static final P2 f61654d;

    public static final boolean f61655e;

    public static final boolean f61656f;

    public static final boolean f61657g;

    /* JADX WARN: Removed duplicated region for block: B:15:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0069  */
    static {
        boolean z10;
        P2 p22;
        boolean z11;
        Field y10;
        P2 p23;
        Unsafe g10 = g();
        f61651a = g10;
        int i10 = X0.f61678a;
        f61652b = Memory.class;
        Class<Long> cls = Long.TYPE;
        boolean s10 = s(cls);
        f61653c = s10;
        boolean s11 = s(Integer.TYPE);
        P2 p24 = null;
        if (g10 != null) {
            if (s10) {
                p24 = new O2(g10);
            } else if (s11) {
                p24 = new N2(g10);
            }
        }
        f61654d = p24;
        if (p24 != null) {
            try {
                Class<?> cls2 = p24.f61649a.getClass();
                cls2.getMethod("objectFieldOffset", Field.class);
                cls2.getMethod("getLong", Object.class, cls);
            } catch (Throwable th2) {
                h(th2);
            }
            if (y() != null) {
                z10 = true;
                f61655e = z10;
                p22 = f61654d;
                if (p22 != null) {
                    try {
                        Class<?> cls3 = p22.f61649a.getClass();
                        cls3.getMethod("objectFieldOffset", Field.class);
                        cls3.getMethod("arrayBaseOffset", Class.class);
                        cls3.getMethod("arrayIndexScale", Class.class);
                        Class<Long> cls4 = Long.TYPE;
                        cls3.getMethod("getInt", Object.class, cls4);
                        cls3.getMethod("putInt", Object.class, cls4, Integer.TYPE);
                        cls3.getMethod("getLong", Object.class, cls4);
                        cls3.getMethod("putLong", Object.class, cls4, cls4);
                        cls3.getMethod("getObject", Object.class, cls4);
                        cls3.getMethod("putObject", Object.class, cls4, Object.class);
                        z11 = true;
                    } catch (Throwable th3) {
                        h(th3);
                    }
                    f61656f = z11;
                    w(byte[].class);
                    w(boolean[].class);
                    x(boolean[].class);
                    w(int[].class);
                    x(int[].class);
                    w(long[].class);
                    x(long[].class);
                    w(float[].class);
                    x(float[].class);
                    w(double[].class);
                    x(double[].class);
                    w(Object[].class);
                    x(Object[].class);
                    y10 = y();
                    if (y10 != null && (p23 = f61654d) != null) {
                        p23.f61649a.objectFieldOffset(y10);
                    }
                    f61657g = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
                }
                z11 = false;
                f61656f = z11;
                w(byte[].class);
                w(boolean[].class);
                x(boolean[].class);
                w(int[].class);
                x(int[].class);
                w(long[].class);
                x(long[].class);
                w(float[].class);
                x(float[].class);
                w(double[].class);
                x(double[].class);
                w(Object[].class);
                x(Object[].class);
                y10 = y();
                if (y10 != null) {
                    p23.f61649a.objectFieldOffset(y10);
                }
                f61657g = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
            }
        }
        z10 = false;
        f61655e = z10;
        p22 = f61654d;
        if (p22 != null) {
        }
        z11 = false;
        f61656f = z11;
        w(byte[].class);
        w(boolean[].class);
        x(boolean[].class);
        w(int[].class);
        x(int[].class);
        w(long[].class);
        x(long[].class);
        w(float[].class);
        x(float[].class);
        w(double[].class);
        x(double[].class);
        w(Object[].class);
        x(Object[].class);
        y10 = y();
        if (y10 != null) {
        }
        f61657g = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    public static double a(Object obj, long j10) {
        return f61654d.a(obj, j10);
    }

    public static float b(Object obj, long j10) {
        return f61654d.b(obj, j10);
    }

    public static int c(Object obj, long j10) {
        return f61654d.f61649a.getInt(obj, j10);
    }

    public static long d(Object obj, long j10) {
        return f61654d.f61649a.getLong(obj, j10);
    }

    public static Object e(Class cls) {
        try {
            return f61651a.allocateInstance(cls);
        } catch (InstantiationException e10) {
            throw new IllegalStateException(e10);
        }
    }

    public static Object f(Object obj, long j10) {
        return f61654d.f61649a.getObject(obj, j10);
    }

    public static Unsafe g() {
        try {
            return (Unsafe) AccessController.doPrivileged(new M2());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void h(Throwable th2) {
        Logger.getLogger(Q2.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th2.toString()));
    }

    public static void i(Object obj, long j10, boolean z10) {
        P2 p22 = f61654d;
        long j11 = (-4) & j10;
        int i10 = p22.f61649a.getInt(obj, j11);
        int i11 = ((~((int) j10)) & 3) << 3;
        p22.f61649a.putInt(obj, j11, ((z10 ? 1 : 0) << i11) | ((~(255 << i11)) & i10));
    }

    public static void j(Object obj, long j10, boolean z10) {
        P2 p22 = f61654d;
        long j11 = (-4) & j10;
        int i10 = (((int) j10) & 3) << 3;
        p22.f61649a.putInt(obj, j11, ((z10 ? 1 : 0) << i10) | ((~(255 << i10)) & p22.f61649a.getInt(obj, j11)));
    }

    public static void k(Object obj, long j10, boolean z10) {
        f61654d.c(obj, j10, z10);
    }

    public static void l(Object obj, long j10, double d10) {
        f61654d.d(obj, j10, d10);
    }

    public static void m(Object obj, long j10, float f10) {
        f61654d.e(obj, j10, f10);
    }

    public static void n(Object obj, long j10, int i10) {
        f61654d.f61649a.putInt(obj, j10, i10);
    }

    public static void o(Object obj, long j10, long j11) {
        f61654d.f61649a.putLong(obj, j10, j11);
    }

    public static void p(Object obj, long j10, Object obj2) {
        f61654d.f61649a.putObject(obj, j10, obj2);
    }

    public static boolean q(Object obj, long j10) {
        return ((byte) ((f61654d.f61649a.getInt(obj, (-4) & j10) >>> ((int) (((~j10) & 3) << 3))) & 255)) != 0;
    }

    public static boolean r(Object obj, long j10) {
        return ((byte) ((f61654d.f61649a.getInt(obj, (-4) & j10) >>> ((int) ((j10 & 3) << 3))) & 255)) != 0;
    }

    public static boolean s(Class cls) {
        int i10 = X0.f61678a;
        try {
            Class cls2 = f61652b;
            Class<Boolean> cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class<Integer> cls4 = Integer.TYPE;
            cls2.getMethod("pokeInt", cls, cls4, cls3);
            cls2.getMethod("peekInt", cls, cls3);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, cls4, cls4);
            cls2.getMethod("peekByteArray", cls, byte[].class, cls4, cls4);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean t(Object obj, long j10) {
        return f61654d.f(obj, j10);
    }

    public static boolean u() {
        return f61656f;
    }

    public static boolean v() {
        return f61655e;
    }

    public static int w(Class cls) {
        if (f61656f) {
            return f61654d.f61649a.arrayBaseOffset(cls);
        }
        return -1;
    }

    public static int x(Class cls) {
        if (f61656f) {
            return f61654d.f61649a.arrayIndexScale(cls);
        }
        return -1;
    }

    public static Field y() {
        int i10 = X0.f61678a;
        Field z10 = z(Buffer.class, "effectiveDirectAddress");
        if (z10 != null) {
            return z10;
        }
        Field z11 = z(Buffer.class, "address");
        if (z11 == null || z11.getType() != Long.TYPE) {
            return null;
        }
        return z11;
    }

    public static Field z(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }
}
