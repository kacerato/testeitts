package net.jpountz.util;

import java.lang.reflect.Field;
import java.nio.ByteOrder;
import sun.misc.Unsafe;

public enum d {
    ;

    private static final long BYTE_ARRAY_OFFSET;
    private static final int BYTE_ARRAY_SCALE;
    private static final long INT_ARRAY_OFFSET;
    private static final int INT_ARRAY_SCALE;
    private static final long SHORT_ARRAY_OFFSET;
    private static final int SHORT_ARRAY_SCALE;
    private static final Unsafe UNSAFE;

    static {
        try {
            Field declaredField = Unsafe.class.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            Unsafe unsafe = (Unsafe) declaredField.get(null);
            UNSAFE = unsafe;
            BYTE_ARRAY_OFFSET = unsafe.arrayBaseOffset(byte[].class);
            BYTE_ARRAY_SCALE = unsafe.arrayIndexScale(byte[].class);
            INT_ARRAY_OFFSET = unsafe.arrayBaseOffset(int[].class);
            INT_ARRAY_SCALE = unsafe.arrayIndexScale(int[].class);
            SHORT_ARRAY_OFFSET = unsafe.arrayBaseOffset(short[].class);
            SHORT_ARRAY_SCALE = unsafe.arrayIndexScale(short[].class);
        } catch (IllegalAccessException unused) {
            throw new ExceptionInInitializerError("Cannot access Unsafe");
        } catch (NoSuchFieldException unused2) {
            throw new ExceptionInInitializerError("Cannot access Unsafe");
        } catch (SecurityException unused3) {
            throw new ExceptionInInitializerError("Cannot access Unsafe");
        }
    }

    public static void a(int i10) {
        c.a(i10);
    }

    public static void b(byte[] bArr, int i10) {
        c.b(bArr, i10);
    }

    public static void c(byte[] bArr, int i10, int i11) {
        c.c(bArr, i10, i11);
    }

    public static byte d(byte[] bArr, int i10) {
        return UNSAFE.getByte(bArr, BYTE_ARRAY_OFFSET + (BYTE_ARRAY_SCALE * i10));
    }

    public static int e(byte[] bArr, int i10) {
        return UNSAFE.getInt(bArr, BYTE_ARRAY_OFFSET + i10);
    }

    public static int g(int[] iArr, int i10) {
        return UNSAFE.getInt(iArr, INT_ARRAY_OFFSET + (INT_ARRAY_SCALE * i10));
    }

    public static int h(byte[] bArr, int i10) {
        int e10 = e(bArr, i10);
        return e.NATIVE_BYTE_ORDER == ByteOrder.BIG_ENDIAN ? Integer.reverseBytes(e10) : e10;
    }

    public static long i(byte[] bArr, int i10) {
        return UNSAFE.getLong(bArr, BYTE_ARRAY_OFFSET + i10);
    }

    public static long j(byte[] bArr, int i10) {
        long i11 = i(bArr, i10);
        return e.NATIVE_BYTE_ORDER == ByteOrder.BIG_ENDIAN ? Long.reverseBytes(i11) : i11;
    }

    public static int k(short[] sArr, int i10) {
        return UNSAFE.getShort(sArr, SHORT_ARRAY_OFFSET + (SHORT_ARRAY_SCALE * i10)) & 65535;
    }

    public static short m(byte[] bArr, int i10) {
        return UNSAFE.getShort(bArr, BYTE_ARRAY_OFFSET + i10);
    }

    public static int o(byte[] bArr, int i10) {
        short m10 = m(bArr, i10);
        if (e.NATIVE_BYTE_ORDER == ByteOrder.BIG_ENDIAN) {
            m10 = Short.reverseBytes(m10);
        }
        return m10 & 65535;
    }

    public static void q(byte[] bArr, int i10, byte b10) {
        UNSAFE.putByte(bArr, BYTE_ARRAY_OFFSET + (BYTE_ARRAY_SCALE * i10), b10);
    }

    public static void r(byte[] bArr, int i10, int i11) {
        q(bArr, i10, (byte) i11);
    }

    public static void s(byte[] bArr, int i10, int i11) {
        UNSAFE.putInt(bArr, BYTE_ARRAY_OFFSET + i10, i11);
    }

    public static void u(int[] iArr, int i10, int i11) {
        UNSAFE.putInt(iArr, INT_ARRAY_OFFSET + (INT_ARRAY_SCALE * i10), i11);
    }

    public static void v(byte[] bArr, int i10, long j10) {
        UNSAFE.putLong(bArr, BYTE_ARRAY_OFFSET + i10, j10);
    }

    public static void w(byte[] bArr, int i10, short s10) {
        UNSAFE.putShort(bArr, BYTE_ARRAY_OFFSET + i10, s10);
    }

    public static void x(short[] sArr, int i10, int i11) {
        UNSAFE.putShort(sArr, SHORT_ARRAY_OFFSET + (SHORT_ARRAY_SCALE * i10), (short) i11);
    }

    public static void y(byte[] bArr, int i10, int i11) {
        q(bArr, i10, (byte) i11);
        q(bArr, i10 + 1, (byte) (i11 >>> 8));
    }
}
