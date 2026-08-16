package net.jpountz.util;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;

public enum a {
    ;

    static final boolean $assertionsDisabled = false;

    public static void a(ByteBuffer byteBuffer) {
        if (byteBuffer.isReadOnly()) {
            throw new ReadOnlyBufferException();
        }
    }

    public static void b(ByteBuffer byteBuffer, int i10) {
        if (i10 < 0 || i10 >= byteBuffer.capacity()) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
    }

    public static void c(ByteBuffer byteBuffer, int i10, int i11) {
        c.a(i11);
        if (i11 > 0) {
            b(byteBuffer, i10);
            b(byteBuffer, (i10 + i11) - 1);
        }
    }

    public static ByteBuffer d(ByteBuffer byteBuffer) {
        ByteOrder order = byteBuffer.order();
        ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
        return order.equals(byteOrder) ? byteBuffer : byteBuffer.duplicate().order(byteOrder);
    }

    public static ByteBuffer e(ByteBuffer byteBuffer) {
        ByteOrder order = byteBuffer.order();
        ByteOrder byteOrder = e.NATIVE_BYTE_ORDER;
        return order.equals(byteOrder) ? byteBuffer : byteBuffer.duplicate().order(byteOrder);
    }

    public static byte g(ByteBuffer byteBuffer, int i10) {
        return byteBuffer.get(i10);
    }

    public static int h(ByteBuffer byteBuffer, int i10) {
        return byteBuffer.getInt(i10);
    }

    public static int i(ByteBuffer byteBuffer, int i10) {
        return byteBuffer.getInt(i10);
    }

    public static long j(ByteBuffer byteBuffer, int i10) {
        return byteBuffer.getLong(i10);
    }

    public static long k(ByteBuffer byteBuffer, int i10) {
        return byteBuffer.getLong(i10);
    }

    public static int m(ByteBuffer byteBuffer, int i10) {
        return ((byteBuffer.get(i10 + 1) & 255) << 8) | (byteBuffer.get(i10) & 255);
    }

    public static void o(ByteBuffer byteBuffer, int i10, int i11) {
        byteBuffer.put(i10, (byte) i11);
    }

    public static void q(ByteBuffer byteBuffer, int i10, int i11) {
        byteBuffer.putInt(i10, i11);
    }

    public static void r(ByteBuffer byteBuffer, int i10, long j10) {
        byteBuffer.putLong(i10, j10);
    }

    public static void s(ByteBuffer byteBuffer, int i10, int i11) {
        byteBuffer.put(i10, (byte) i11);
        byteBuffer.put(i10 + 1, (byte) (i11 >>> 8));
    }
}
