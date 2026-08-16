package net.jpountz.lz4;

import java.nio.ByteBuffer;

public class h {

    public final j f98015a;

    public final y f98016b;

    public h(j jVar) {
        this.f98015a = jVar;
        this.f98016b = null;
    }

    public static int j(ByteBuffer byteBuffer) {
        return k(byteBuffer, byteBuffer.position());
    }

    public static int k(ByteBuffer byteBuffer, int i10) {
        return (byteBuffer.get(i10 + 3) << 24) | (byteBuffer.get(i10) & 255) | ((byteBuffer.get(i10 + 1) & 255) << 8) | ((byteBuffer.get(i10 + 2) & 255) << 16);
    }

    public static int l(byte[] bArr) {
        return m(bArr, 0);
    }

    public static int m(byte[] bArr, int i10) {
        return (bArr[i10 + 3] << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
    }

    public int a(ByteBuffer byteBuffer, int i10, int i11, ByteBuffer byteBuffer2, int i12) {
        if (this.f98016b == null) {
            return b(byteBuffer, i10, byteBuffer2, i12);
        }
        return this.f98016b.c(byteBuffer, i10 + 4, i11 - 4, byteBuffer2, i12, k(byteBuffer, i10));
    }

    public int b(ByteBuffer byteBuffer, int i10, ByteBuffer byteBuffer2, int i11) {
        if (this.f98016b != null) {
            return a(byteBuffer, i10, byteBuffer.remaining() - i10, byteBuffer2, i11);
        }
        return this.f98015a.b(byteBuffer, i10 + 4, byteBuffer2, i11, k(byteBuffer, i10)) + 4;
    }

    public int c(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) {
        if (this.f98016b == null) {
            return d(bArr, i10, bArr2, i12);
        }
        return this.f98016b.a(bArr, i10 + 4, i11 - 4, bArr2, i12, m(bArr, i10));
    }

    public int d(byte[] bArr, int i10, byte[] bArr2, int i11) {
        if (this.f98016b != null) {
            return c(bArr, i10, bArr.length - i10, bArr2, i11);
        }
        return this.f98015a.a(bArr, i10 + 4, bArr2, i11, m(bArr, i10)) + 4;
    }

    public int e(byte[] bArr, byte[] bArr2) {
        return d(bArr, 0, bArr2, 0);
    }

    public void f(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) {
        int k10 = k(byteBuffer, byteBuffer.position());
        y yVar = this.f98016b;
        if (yVar == null) {
            byteBuffer.position(byteBuffer.position() + 4 + this.f98015a.b(byteBuffer, byteBuffer.position() + 4, byteBuffer2, byteBuffer2.position(), k10));
            byteBuffer2.position(byteBuffer2.position() + k10);
        } else {
            int c10 = yVar.c(byteBuffer, byteBuffer.position() + 4, byteBuffer.remaining() - 4, byteBuffer2, byteBuffer2.position(), k10);
            byteBuffer.position(byteBuffer.limit());
            byteBuffer2.position(byteBuffer2.position() + c10);
        }
    }

    public byte[] g(byte[] bArr) {
        return h(bArr, 0);
    }

    public byte[] h(byte[] bArr, int i10) {
        if (this.f98016b != null) {
            return i(bArr, i10, bArr.length - i10);
        }
        return this.f98015a.g(bArr, i10 + 4, m(bArr, i10));
    }

    public byte[] i(byte[] bArr, int i10, int i11) {
        if (this.f98016b == null) {
            return h(bArr, i10);
        }
        return this.f98016b.g(bArr, i10 + 4, i11 - 4, m(bArr, i10));
    }

    public h(y yVar) {
        this.f98015a = null;
        this.f98016b = yVar;
    }
}
