package net.jpountz.lz4;

import java.nio.ByteBuffer;
import java.util.Arrays;

public abstract class y implements A {
    @Override
    public abstract int a(byte[] bArr, int i10, int i11, byte[] bArr2, int i12, int i13);

    @Override
    public final int b(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) {
        return a(bArr, i10, i11, bArr2, i12, bArr2.length - i12);
    }

    public abstract int c(ByteBuffer byteBuffer, int i10, int i11, ByteBuffer byteBuffer2, int i12, int i13);

    public final int d(byte[] bArr, byte[] bArr2) {
        return b(bArr, 0, bArr.length, bArr2, 0);
    }

    public final void e(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) {
        int c10 = c(byteBuffer, byteBuffer.position(), byteBuffer.remaining(), byteBuffer2, byteBuffer2.position(), byteBuffer2.remaining());
        byteBuffer.position(byteBuffer.limit());
        byteBuffer2.position(byteBuffer2.position() + c10);
    }

    public final byte[] f(byte[] bArr, int i10) {
        return g(bArr, 0, bArr.length, i10);
    }

    public final byte[] g(byte[] bArr, int i10, int i11, int i12) {
        byte[] bArr2 = new byte[i12];
        int a10 = a(bArr, i10, i11, bArr2, 0, i12);
        return a10 != i12 ? Arrays.copyOf(bArr2, a10) : bArr2;
    }

    public String toString() {
        return getClass().getSimpleName();
    }
}
