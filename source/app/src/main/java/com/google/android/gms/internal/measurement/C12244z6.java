package com.google.android.gms.internal.measurement;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import libcore.io.Memory;
import sun.misc.Unsafe;

public final class C12244z6 {

    public static final Unsafe f62497a;

    public static final Class f62498b;

    public static final boolean f62499c;

    public static final AbstractC12235y6 f62500d;

    public static final boolean f62501e;

    public static final boolean f62502f;

    public static final long f62503g;

    public static final boolean f62504h;

    /* JADX WARN: Removed duplicated region for block: B:15:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0069  */
    static {
        boolean z10;
        AbstractC12235y6 abstractC12235y6;
        boolean z11;
        Field b10;
        AbstractC12235y6 abstractC12235y62;
        Unsafe v10 = v();
        f62497a = v10;
        int i10 = F4.f61913a;
        f62498b = Memory.class;
        Class<Long> cls = Long.TYPE;
        boolean w10 = w(cls);
        f62499c = w10;
        boolean w11 = w(Integer.TYPE);
        AbstractC12235y6 abstractC12235y63 = null;
        if (v10 != null) {
            if (w10) {
                abstractC12235y63 = new C12226x6(v10);
            } else if (w11) {
                abstractC12235y63 = new C12217w6(v10);
            }
        }
        f62500d = abstractC12235y63;
        if (abstractC12235y63 != null) {
            try {
                Class<?> cls2 = abstractC12235y63.f62493a.getClass();
                cls2.getMethod("objectFieldOffset", Field.class);
                cls2.getMethod("getLong", Object.class, cls);
            } catch (Throwable th2) {
                D(th2);
            }
            if (b() != null) {
                z10 = true;
                f62501e = z10;
                abstractC12235y6 = f62500d;
                if (abstractC12235y6 != null) {
                    try {
                        Class<?> cls3 = abstractC12235y6.f62493a.getClass();
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
                        D(th3);
                    }
                    f62502f = z11;
                    f62503g = E(byte[].class);
                    E(boolean[].class);
                    a(boolean[].class);
                    E(int[].class);
                    a(int[].class);
                    E(long[].class);
                    a(long[].class);
                    E(float[].class);
                    a(float[].class);
                    E(double[].class);
                    a(double[].class);
                    E(Object[].class);
                    a(Object[].class);
                    b10 = b();
                    if (b10 != null && (abstractC12235y62 = f62500d) != null) {
                        abstractC12235y62.f62493a.objectFieldOffset(b10);
                    }
                    f62504h = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
                }
                z11 = false;
                f62502f = z11;
                f62503g = E(byte[].class);
                E(boolean[].class);
                a(boolean[].class);
                E(int[].class);
                a(int[].class);
                E(long[].class);
                a(long[].class);
                E(float[].class);
                a(float[].class);
                E(double[].class);
                a(double[].class);
                E(Object[].class);
                a(Object[].class);
                b10 = b();
                if (b10 != null) {
                    abstractC12235y62.f62493a.objectFieldOffset(b10);
                }
                f62504h = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
            }
        }
        z10 = false;
        f62501e = z10;
        abstractC12235y6 = f62500d;
        if (abstractC12235y6 != null) {
        }
        z11 = false;
        f62502f = z11;
        f62503g = E(byte[].class);
        E(boolean[].class);
        a(boolean[].class);
        E(int[].class);
        a(int[].class);
        E(long[].class);
        a(long[].class);
        E(float[].class);
        a(float[].class);
        E(double[].class);
        a(double[].class);
        E(Object[].class);
        a(Object[].class);
        b10 = b();
        if (b10 != null) {
        }
        f62504h = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    public static boolean A(Object obj, long j10) {
        return ((byte) ((f62500d.f62493a.getInt(obj, (-4) & j10) >>> ((int) ((j10 & 3) << 3))) & 255)) != 0;
    }

    public static void D(Throwable th2) {
        Logger.getLogger(C12244z6.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th2.toString()));
    }

    public static int E(Class cls) {
        if (f62502f) {
            return f62500d.f62493a.arrayBaseOffset(cls);
        }
        return -1;
    }

    public static int a(Class cls) {
        if (f62502f) {
            return f62500d.f62493a.arrayIndexScale(cls);
        }
        return -1;
    }

    public static Field b() {
        int i10 = F4.f61913a;
        Field c10 = c(Buffer.class, "effectiveDirectAddress");
        if (c10 != null) {
            return c10;
        }
        Field c11 = c(Buffer.class, "address");
        if (c11 == null || c11.getType() != Long.TYPE) {
            return null;
        }
        return c11;
    }

    public static Field c(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void d(Object obj, long j10, byte b10) {
        Unsafe unsafe = f62500d.f62493a;
        long j11 = (-4) & j10;
        int i10 = unsafe.getInt(obj, j11);
        int i11 = ((~((int) j10)) & 3) << 3;
        unsafe.putInt(obj, j11, ((255 & b10) << i11) | (i10 & (~(255 << i11))));
    }

    public static void e(Object obj, long j10, byte b10) {
        Unsafe unsafe = f62500d.f62493a;
        long j11 = (-4) & j10;
        int i10 = (((int) j10) & 3) << 3;
        unsafe.putInt(obj, j11, ((255 & b10) << i10) | (unsafe.getInt(obj, j11) & (~(255 << i10))));
    }

    public static boolean f() {
        return f62502f;
    }

    public static boolean g() {
        return f62501e;
    }

    public static Object h(Class cls) {
        try {
            return f62497a.allocateInstance(cls);
        } catch (InstantiationException e10) {
            throw new IllegalStateException(e10);
        }
    }

    public static int i(Object obj, long j10) {
        return f62500d.f62493a.getInt(obj, j10);
    }

    public static void j(Object obj, long j10, int i10) {
        f62500d.f62493a.putInt(obj, j10, i10);
    }

    public static long k(Object obj, long j10) {
        return f62500d.f62493a.getLong(obj, j10);
    }

    public static void l(Object obj, long j10, long j11) {
        f62500d.f62493a.putLong(obj, j10, j11);
    }

    public static boolean m(Object obj, long j10) {
        return f62500d.b(obj, j10);
    }

    public static void n(Object obj, long j10, boolean z10) {
        f62500d.c(obj, j10, z10);
    }

    public static float o(Object obj, long j10) {
        return f62500d.d(obj, j10);
    }

    public static void p(Object obj, long j10, float f10) {
        f62500d.e(obj, j10, f10);
    }

    public static double q(Object obj, long j10) {
        return f62500d.f(obj, j10);
    }

    public static void r(Object obj, long j10, double d10) {
        f62500d.g(obj, j10, d10);
    }

    public static Object s(Object obj, long j10) {
        return f62500d.f62493a.getObject(obj, j10);
    }

    public static void t(Object obj, long j10, Object obj2) {
        f62500d.f62493a.putObject(obj, j10, obj2);
    }

    public static void u(byte[] bArr, long j10, byte b10) {
        f62500d.a(bArr, f62503g + j10, b10);
    }

    public static Unsafe v() {
        try {
            return (Unsafe) AccessController.doPrivileged(new C12208v6());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static boolean w(Class cls) {
        int i10 = F4.f61913a;
        try {
            Class cls2 = f62498b;
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

    public static boolean z(Object obj, long j10) {
        return ((byte) ((f62500d.f62493a.getInt(obj, (-4) & j10) >>> ((int) (((~j10) & 3) << 3))) & 255)) != 0;
    }
}
