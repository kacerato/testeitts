package net.jpountz.lz4;

import java.nio.ByteBuffer;
import java.util.Arrays;

public class e {

    public final d f98014a;

    public e(d dVar) {
        this.f98014a = dVar;
    }

    public int a(ByteBuffer byteBuffer, int i10, int i11, ByteBuffer byteBuffer2, int i12, int i13) {
        int a10 = this.f98014a.a(byteBuffer, i10, i11, byteBuffer2, i12 + 4, i13 - 4);
        i(byteBuffer2, i12, i11);
        return a10 + 4;
    }

    public int b(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) {
        return c(bArr, i10, i11, bArr2, i12, bArr2.length - i12);
    }

    public int c(byte[] bArr, int i10, int i11, byte[] bArr2, int i12, int i13) {
        int c10 = this.f98014a.c(bArr, i10, i11, bArr2, i12 + 4, i13 - 4);
        j(bArr2, i12, i11);
        return c10 + 4;
    }

    public int d(byte[] bArr, byte[] bArr2) {
        return b(bArr, 0, bArr.length, bArr2, 0);
    }

    public void e(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) {
        int a10 = a(byteBuffer, byteBuffer.position(), byteBuffer.remaining(), byteBuffer2, byteBuffer2.position(), byteBuffer2.remaining());
        byteBuffer.position(byteBuffer.limit());
        byteBuffer2.position(byteBuffer2.position() + a10);
    }

    public byte[] f(byte[] bArr) {
        return g(bArr, 0, bArr.length);
    }

    public byte[] g(byte[] bArr, int i10, int i11) {
        byte[] bArr2 = new byte[h(i11)];
        return Arrays.copyOf(bArr2, b(bArr, i10, i11, bArr2, 0));
    }

    public int h(int i10) {
        return this.f98014a.h(i10) + 4;
    }

    public final void i(ByteBuffer byteBuffer, int i10, int i11) {
        byteBuffer.put(i10, (byte) i11);
        byteBuffer.put(i10 + 1, (byte) (i11 >> 8));
        byteBuffer.put(i10 + 2, (byte) (i11 >> 16));
        byteBuffer.put(i10 + 3, (byte) (i11 >> 24));
    }

    public final void j(byte[] bArr, int i10, int i11) {
        bArr[i10] = (byte) i11;
        bArr[i10 + 1] = (byte) (i11 >> 8);
        bArr[i10 + 2] = (byte) (i11 >> 16);
        bArr[i10 + 3] = (byte) (i11 >> 24);
    }
}
