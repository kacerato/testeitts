package Zi;

import Bi.InterfaceC2374f;

public class n {

    public static final long f31361h = 32768;

    public static final long f31362i = 8388608;

    public static final int f31363j = 4096;

    public static final int f31364k = 262144;

    public final InterfaceC2374f f31365a;

    public final d f31366b;

    public final byte[] f31367c;

    public final byte[] f31368d;

    public final byte[] f31369e;

    public byte[] f31370f;

    public long f31371g = 1;

    public n(InterfaceC2374f interfaceC2374f, byte[] bArr, d dVar) {
        this.f31365a = interfaceC2374f;
        this.f31366b = dVar;
        byte[] bArr2 = new byte[interfaceC2374f.c()];
        this.f31367c = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
        this.f31368d = new byte[interfaceC2374f.c()];
        this.f31369e = new byte[interfaceC2374f.c()];
    }

    public static boolean d(byte[] bArr, int i10) {
        return bArr != null && bArr.length > i10;
    }

    public int a(byte[] bArr, boolean z10) {
        int length = this.f31369e.length;
        long j10 = this.f31371g;
        if (length == 8) {
            if (j10 > 32768) {
                return -1;
            }
            if (d(bArr, 512)) {
                throw new IllegalArgumentException("Number of bits per request limited to 4096");
            }
        } else {
            if (j10 > 8388608) {
                return -1;
            }
            if (d(bArr, 32768)) {
                throw new IllegalArgumentException("Number of bits per request limited to 262144");
            }
        }
        if (z10 || this.f31370f == null) {
            byte[] b10 = this.f31366b.b();
            this.f31370f = b10;
            if (b10.length != this.f31365a.c()) {
                throw new IllegalStateException("Insufficient entropy returned");
            }
        }
        int length2 = bArr.length / this.f31369e.length;
        for (int i10 = 0; i10 < length2; i10++) {
            this.f31365a.g(this.f31367c, 0, this.f31368d, 0);
            e(this.f31369e, this.f31368d, this.f31370f);
            e(this.f31370f, this.f31369e, this.f31368d);
            byte[] bArr2 = this.f31369e;
            System.arraycopy(bArr2, 0, bArr, bArr2.length * i10, bArr2.length);
            c(this.f31367c);
        }
        int length3 = bArr.length - (this.f31369e.length * length2);
        if (length3 > 0) {
            this.f31365a.g(this.f31367c, 0, this.f31368d, 0);
            e(this.f31369e, this.f31368d, this.f31370f);
            e(this.f31370f, this.f31369e, this.f31368d);
            byte[] bArr3 = this.f31369e;
            System.arraycopy(bArr3, 0, bArr, length2 * bArr3.length, length3);
            c(this.f31367c);
        }
        this.f31371g++;
        return bArr.length * 8;
    }

    public d b() {
        return this.f31366b;
    }

    public final void c(byte[] bArr) {
        for (int length = bArr.length - 1; length >= 0; length--) {
            byte b10 = (byte) (bArr[length] + 1);
            bArr[length] = b10;
            if (b10 != 0) {
                return;
            }
        }
    }

    public final void e(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        for (int i10 = 0; i10 != bArr.length; i10++) {
            bArr[i10] = (byte) (bArr2[i10] ^ bArr3[i10]);
        }
        this.f31365a.g(bArr, 0, bArr, 0);
    }

    public void f() {
        byte[] b10 = this.f31366b.b();
        this.f31370f = b10;
        if (b10.length != this.f31365a.c()) {
            throw new IllegalStateException("Insufficient entropy returned");
        }
        this.f31371g = 1L;
    }
}
