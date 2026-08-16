package net.jpountz.lz4;

import java.nio.ByteBuffer;
import java.util.Arrays;

public abstract class d {
    public abstract int a(ByteBuffer byteBuffer, int i10, int i11, ByteBuffer byteBuffer2, int i12, int i13);

    public final int b(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) {
        return c(bArr, i10, i11, bArr2, i12, bArr2.length - i12);
    }

    public abstract int c(byte[] bArr, int i10, int i11, byte[] bArr2, int i12, int i13);

    public final int d(byte[] bArr, byte[] bArr2) {
        return b(bArr, 0, bArr.length, bArr2, 0);
    }

    public final void e(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) {
        int a10 = a(byteBuffer, byteBuffer.position(), byteBuffer.remaining(), byteBuffer2, byteBuffer2.position(), byteBuffer2.remaining());
        byteBuffer.position(byteBuffer.limit());
        byteBuffer2.position(byteBuffer2.position() + a10);
    }

    public final byte[] f(byte[] bArr) {
        return g(bArr, 0, bArr.length);
    }

    public final byte[] g(byte[] bArr, int i10, int i11) {
        byte[] bArr2 = new byte[h(i11)];
        return Arrays.copyOf(bArr2, b(bArr, i10, i11, bArr2, 0));
    }

    public final int h(int i10) {
        return C.h(i10);
    }

    public String toString() {
        return getClass().getSimpleName();
    }
}
