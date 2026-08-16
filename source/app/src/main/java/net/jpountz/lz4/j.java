package net.jpountz.lz4;

import java.nio.ByteBuffer;

public abstract class j implements g {
    @Override
    public abstract int a(byte[] bArr, int i10, byte[] bArr2, int i11, int i12);

    public abstract int b(ByteBuffer byteBuffer, int i10, ByteBuffer byteBuffer2, int i11, int i12);

    public final int c(byte[] bArr, byte[] bArr2) {
        return d(bArr, bArr2, bArr2.length);
    }

    public final int d(byte[] bArr, byte[] bArr2, int i10) {
        return a(bArr, 0, bArr2, 0, i10);
    }

    public final void e(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) {
        int b10 = b(byteBuffer, byteBuffer.position(), byteBuffer2, byteBuffer2.position(), byteBuffer2.remaining());
        byteBuffer2.position(byteBuffer2.limit());
        byteBuffer.position(byteBuffer.position() + b10);
    }

    public final byte[] f(byte[] bArr, int i10) {
        return g(bArr, 0, i10);
    }

    public final byte[] g(byte[] bArr, int i10, int i11) {
        byte[] bArr2 = new byte[i11];
        a(bArr, i10, bArr2, 0, i11);
        return bArr2;
    }

    public String toString() {
        return getClass().getSimpleName();
    }
}
