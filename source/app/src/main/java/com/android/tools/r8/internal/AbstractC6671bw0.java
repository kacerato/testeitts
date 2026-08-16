package com.android.tools.r8.internal;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import sun.misc.Unsafe;

public abstract class AbstractC6671bw0 {

    public static final Unsafe f46893a;

    public static final Class f46894b;

    public static final AbstractC6504aw0 f46895c;

    public static final boolean f46896d;

    public static final boolean f46897e;

    public static final long f46898f;

    public static final long f46899g;

    public static final boolean f46900h;

    /* JADX WARN: Can't wrap try/catch for region: R(22:1|(2:2|3)|4|(17:6|(1:(1:9)(1:(1:46)))(1:47)|10|(1:12)(1:44)|13|(1:15)(1:43)|16|(3:18|19|20)|35|36|37|(1:39)|(1:32)(1:25)|26|(1:28)|29|30)|48|10|(0)(0)|13|(0)(0)|16|(0)|35|36|37|(0)|(0)|32|26|(0)|29|30|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00a0, code lost:
    
        if (r3 == null) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00a2, code lost:
    
        r0 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00b4, code lost:
    
        if (r3.getType() == java.lang.Long.TYPE) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00ab, code lost:
    
        r3 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0047  */
    static {
        Unsafe unsafe;
        AbstractC6504aw0 abstractC6504aw0;
        Field field;
        Field field2 = null;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new C6168Wv0());
        } catch (Throwable unused) {
            unsafe = null;
        }
        f46893a = unsafe;
        f46894b = AbstractC9690u2.f52760a;
        boolean d10 = d(Long.TYPE);
        boolean d11 = d(Integer.TYPE);
        if (unsafe != null) {
            if (!AbstractC9690u2.a()) {
                abstractC6504aw0 = new C6339Zv0(unsafe);
            } else if (d10) {
                abstractC6504aw0 = new C6282Yv0(unsafe);
            } else if (d11) {
                abstractC6504aw0 = new C6225Xv0(unsafe);
            }
            f46895c = abstractC6504aw0;
            f46896d = abstractC6504aw0 != null ? false : abstractC6504aw0.b();
            f46897e = abstractC6504aw0 != null ? false : abstractC6504aw0.a();
            f46898f = b(byte[].class);
            b(boolean[].class);
            c(boolean[].class);
            b(int[].class);
            c(int[].class);
            b(long[].class);
            c(long[].class);
            b(float[].class);
            c(float[].class);
            b(double[].class);
            c(double[].class);
            b(Object[].class);
            c(Object[].class);
            if (AbstractC9690u2.a()) {
                try {
                    field = Buffer.class.getDeclaredField("effectiveDirectAddress");
                } catch (Throwable unused2) {
                    field = null;
                }
            }
            field = Buffer.class.getDeclaredField("address");
            if (field != null) {
            }
            f46899g = (field2 != null || abstractC6504aw0 == null) ? -1L : abstractC6504aw0.a(field2);
            f46900h = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
        }
        abstractC6504aw0 = null;
        f46895c = abstractC6504aw0;
        f46896d = abstractC6504aw0 != null ? false : abstractC6504aw0.b();
        f46897e = abstractC6504aw0 != null ? false : abstractC6504aw0.a();
        f46898f = b(byte[].class);
        b(boolean[].class);
        c(boolean[].class);
        b(int[].class);
        c(int[].class);
        b(long[].class);
        c(long[].class);
        b(float[].class);
        c(float[].class);
        b(double[].class);
        c(double[].class);
        b(Object[].class);
        c(Object[].class);
        if (AbstractC9690u2.a()) {
        }
        field = Buffer.class.getDeclaredField("address");
        if (field != null) {
        }
        f46899g = (field2 != null || abstractC6504aw0 == null) ? -1L : abstractC6504aw0.a(field2);
        f46900h = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    public static Object a(Class cls) {
        try {
            return f46893a.allocateInstance(cls);
        } catch (InstantiationException e10) {
            throw new IllegalStateException(e10);
        }
    }

    public static int b(Class cls) {
        if (f46897e) {
            return f46895c.a(cls);
        }
        return -1;
    }

    public static void c(Class cls) {
        if (f46897e) {
            f46895c.b(cls);
        }
    }

    public static boolean d(Class cls) {
        if (!AbstractC9690u2.a()) {
            return false;
        }
        try {
            Class cls2 = f46894b;
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

    public static byte b(Object obj, long j10) {
        return (byte) ((f46895c.b(obj, (-4) & j10) >>> ((int) ((j10 & 3) << 3))) & 255);
    }

    public static byte a(Object obj, long j10) {
        return (byte) ((f46895c.b(obj, (-4) & j10) >>> ((int) (((~j10) & 3) << 3))) & 255);
    }

    public static void b(Object obj, long j10, byte b10) {
        long j11 = (-4) & j10;
        AbstractC6504aw0 abstractC6504aw0 = f46895c;
        int i10 = (((int) j10) & 3) << 3;
        abstractC6504aw0.a(obj, j11, ((255 & b10) << i10) | (abstractC6504aw0.b(obj, j11) & (~(255 << i10))));
    }

    public static void a(Object obj, long j10, byte b10) {
        long j11 = (-4) & j10;
        AbstractC6504aw0 abstractC6504aw0 = f46895c;
        int b11 = abstractC6504aw0.b(obj, j11);
        int i10 = ((~((int) j10)) & 3) << 3;
        abstractC6504aw0.a(obj, j11, ((255 & b10) << i10) | (b11 & (~(255 << i10))));
    }
}
