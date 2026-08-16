package nl;

import Bi.InterfaceC2392y;
import org.bouncycastle.util.w;

public class C14457a {

    public static final byte[] f98296d = w.j("expand 32-byte to 64-byte state!");

    public final InterfaceC2392y f98297a;

    public final InterfaceC2392y f98298b;

    public final C14459c f98299c;

    public C14457a(InterfaceC2392y interfaceC2392y) {
        this(interfaceC2392y, null);
    }

    public InterfaceC2392y a() {
        return this.f98298b;
    }

    public int b(byte[] bArr, int i10, byte[] bArr2, int i11) {
        byte[] bArr3 = new byte[64];
        for (int i12 = 0; i12 < 32; i12++) {
            bArr3[i12] = bArr2[i11 + i12];
            bArr3[i12 + 32] = f98296d[i12];
        }
        this.f98299c.a(bArr3, bArr3);
        for (int i13 = 0; i13 < 32; i13++) {
            bArr3[i13] = (byte) (bArr3[i13] ^ bArr2[(i11 + i13) + 32]);
        }
        this.f98299c.a(bArr3, bArr3);
        for (int i14 = 0; i14 < 32; i14++) {
            bArr[i10 + i14] = bArr3[i14];
        }
        return 0;
    }

    public int c(byte[] bArr, int i10, byte[] bArr2, int i11, byte[] bArr3, int i12) {
        byte[] bArr4 = new byte[64];
        for (int i13 = 0; i13 < 64; i13++) {
            bArr4[i13] = (byte) (bArr2[i11 + i13] ^ bArr3[i12 + i13]);
        }
        return b(bArr, i10, bArr4, 0);
    }

    public int d(byte[] bArr, int i10, byte[] bArr2, int i11) {
        byte[] bArr3 = new byte[64];
        for (int i12 = 0; i12 < 32; i12++) {
            bArr3[i12] = bArr2[i11 + i12];
            bArr3[i12 + 32] = f98296d[i12];
        }
        this.f98299c.a(bArr3, bArr3);
        for (int i13 = 0; i13 < 32; i13++) {
            bArr[i10 + i13] = bArr3[i13];
        }
        return 0;
    }

    public int e(byte[] bArr, int i10, byte[] bArr2, int i11, byte[] bArr3, int i12) {
        byte[] bArr4 = new byte[32];
        for (int i13 = 0; i13 < 32; i13++) {
            bArr4[i13] = (byte) (bArr2[i11 + i13] ^ bArr3[i12 + i13]);
        }
        return d(bArr, i10, bArr4, 0);
    }

    public int f(byte[] bArr, int i10, byte[] bArr2, int i11) {
        this.f98297a.update(bArr2, 0, i11);
        this.f98297a.c(bArr, i10);
        return 0;
    }

    public C14457a(InterfaceC2392y interfaceC2392y, InterfaceC2392y interfaceC2392y2) {
        this.f98299c = new C14459c();
        this.f98297a = interfaceC2392y;
        this.f98298b = interfaceC2392y2;
    }
}
