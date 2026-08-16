package aj;

import Bi.InterfaceC2374f;
import Oi.K;
import Xi.C3360o0;
import android.security.keystore.KeyProperties;
import em.h;
import em.l;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public class C3660a implements f {

    public static final long f32239j = 2147483648L;

    public static final long f32240k = 140737488355328L;

    public static final int f32241l = 4096;

    public static final int f32242m = 262144;

    public static final byte[] f32243n = h.d("000102030405060708090A0B0C0D0E0F101112131415161718191A1B1C1D1E1F");

    public Zi.d f32244a;

    public InterfaceC2374f f32245b;

    public int f32246c;

    public int f32247d;

    public int f32248e;

    public byte[] f32249f;

    public byte[] f32250g;

    public long f32251h = 0;

    public boolean f32252i;

    public C3660a(InterfaceC2374f interfaceC2374f, int i10, int i11, Zi.d dVar, byte[] bArr, byte[] bArr2) {
        this.f32252i = false;
        this.f32244a = dVar;
        this.f32245b = interfaceC2374f;
        this.f32246c = i10;
        this.f32248e = i11;
        this.f32247d = (interfaceC2374f.c() * 8) + i10;
        this.f32252i = n(interfaceC2374f);
        if (i11 > 256) {
            throw new IllegalArgumentException("Requested security strength is not supported by the derivation function");
        }
        if (m(interfaceC2374f, i10) < i11) {
            throw new IllegalArgumentException("Requested security strength is not supported by block cipher and key size");
        }
        if (dVar.d() < i11) {
            throw new IllegalArgumentException("Not enough entropy for security strength required");
        }
        f(l(), bArr2, bArr);
    }

    @Override
    public int a(byte[] bArr, byte[] bArr2, boolean z10) {
        byte[] bArr3;
        boolean z11 = this.f32252i;
        long j10 = this.f32251h;
        if (z11) {
            if (j10 > 2147483648L) {
                return -1;
            }
            if (g.d(bArr, 512)) {
                throw new IllegalArgumentException("Number of bits per request limited to 4096");
            }
        } else {
            if (j10 > 140737488355328L) {
                return -1;
            }
            if (g.d(bArr, 32768)) {
                throw new IllegalArgumentException("Number of bits per request limited to 262144");
            }
        }
        if (z10) {
            g(bArr2);
            bArr2 = null;
        }
        if (bArr2 != null) {
            bArr3 = e(bArr2, this.f32247d);
            h(bArr3, this.f32249f, this.f32250g);
        } else {
            bArr3 = new byte[this.f32247d / 8];
        }
        int length = this.f32250g.length;
        byte[] bArr4 = new byte[length];
        this.f32245b.a(true, new C3360o0(k(this.f32249f)));
        for (int i10 = 0; i10 <= bArr.length / length; i10++) {
            int i11 = i10 * length;
            int length2 = bArr.length - i11 > length ? length : bArr.length - (this.f32250g.length * i10);
            if (length2 != 0) {
                i(this.f32250g);
                this.f32245b.g(this.f32250g, 0, bArr4, 0);
                System.arraycopy(bArr4, 0, bArr, i11, length2);
            }
        }
        h(bArr3, this.f32249f, this.f32250g);
        this.f32251h++;
        return bArr.length * 8;
    }

    @Override
    public void b(byte[] bArr) {
        g(bArr);
    }

    @Override
    public int c() {
        return this.f32250g.length * 8;
    }

    public final void d(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        int c10 = this.f32245b.c();
        byte[] bArr5 = new byte[c10];
        int length = bArr4.length / c10;
        byte[] bArr6 = new byte[c10];
        this.f32245b.a(true, new C3360o0(k(bArr2)));
        this.f32245b.g(bArr3, 0, bArr5, 0);
        for (int i10 = 0; i10 < length; i10++) {
            org.bouncycastle.util.c.a(c10, bArr5, 0, bArr4, i10 * c10, bArr6, 0);
            this.f32245b.g(bArr6, 0, bArr5, 0);
        }
        System.arraycopy(bArr5, 0, bArr, 0, bArr.length);
    }

    public final byte[] e(byte[] bArr, int i10) {
        int c10 = this.f32245b.c();
        int length = bArr.length;
        int i11 = i10 / 8;
        byte[] bArr2 = new byte[((((length + 9) + c10) - 1) / c10) * c10];
        j(bArr2, length, 0);
        j(bArr2, i11, 4);
        System.arraycopy(bArr, 0, bArr2, 8, length);
        bArr2[length + 8] = Byte.MIN_VALUE;
        int i12 = this.f32246c;
        int i13 = (i12 / 8) + c10;
        byte[] bArr3 = new byte[i13];
        byte[] bArr4 = new byte[c10];
        byte[] bArr5 = new byte[c10];
        int i14 = i12 / 8;
        byte[] bArr6 = new byte[i14];
        System.arraycopy(f32243n, 0, bArr6, 0, i14);
        int i15 = 0;
        while (true) {
            int i16 = i15 * c10;
            if (i16 * 8 >= this.f32246c + (c10 * 8)) {
                break;
            }
            j(bArr5, i15, 0);
            d(bArr4, bArr6, bArr5, bArr2);
            int i17 = i13 - i16;
            if (i17 > c10) {
                i17 = c10;
            }
            System.arraycopy(bArr4, 0, bArr3, i16, i17);
            i15++;
        }
        byte[] bArr7 = new byte[c10];
        System.arraycopy(bArr3, 0, bArr6, 0, i14);
        System.arraycopy(bArr3, i14, bArr7, 0, c10);
        byte[] bArr8 = new byte[i11];
        this.f32245b.a(true, new C3360o0(k(bArr6)));
        int i18 = 0;
        while (true) {
            int i19 = i18 * c10;
            if (i19 >= i11) {
                return bArr8;
            }
            this.f32245b.g(bArr7, 0, bArr7, 0);
            int i20 = i11 - i19;
            if (i20 > c10) {
                i20 = c10;
            }
            System.arraycopy(bArr7, 0, bArr8, i19, i20);
            i18++;
        }
    }

    public final void f(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte[] e10 = e(org.bouncycastle.util.a.C(bArr, bArr2, bArr3), this.f32247d);
        int c10 = this.f32245b.c();
        byte[] bArr4 = new byte[(this.f32246c + 7) / 8];
        this.f32249f = bArr4;
        byte[] bArr5 = new byte[c10];
        this.f32250g = bArr5;
        h(e10, bArr4, bArr5);
        this.f32251h = 1L;
    }

    public final void g(byte[] bArr) {
        h(e(org.bouncycastle.util.a.B(l(), bArr), this.f32247d), this.f32249f, this.f32250g);
        this.f32251h = 1L;
    }

    public final void h(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int length = bArr.length;
        byte[] bArr4 = new byte[length];
        byte[] bArr5 = new byte[this.f32245b.c()];
        int c10 = this.f32245b.c();
        this.f32245b.a(true, new C3360o0(k(bArr2)));
        int i10 = 0;
        while (true) {
            int i11 = i10 * c10;
            if (i11 >= bArr.length) {
                org.bouncycastle.util.c.d(bArr.length, bArr, bArr4);
                System.arraycopy(bArr4, 0, bArr2, 0, bArr2.length);
                System.arraycopy(bArr4, bArr2.length, bArr3, 0, bArr3.length);
                return;
            } else {
                i(bArr3);
                this.f32245b.g(bArr3, 0, bArr5, 0);
                int i12 = length - i11;
                if (i12 > c10) {
                    i12 = c10;
                }
                System.arraycopy(bArr5, 0, bArr4, i11, i12);
                i10++;
            }
        }
    }

    public final void i(byte[] bArr) {
        int i10 = 1;
        for (int i11 = 1; i11 <= bArr.length; i11++) {
            int i12 = (bArr[bArr.length - i11] & 255) + i10;
            i10 = i12 > 255 ? 1 : 0;
            bArr[bArr.length - i11] = (byte) i12;
        }
    }

    public final void j(byte[] bArr, int i10, int i11) {
        bArr[i11] = (byte) (i10 >> 24);
        bArr[i11 + 1] = (byte) (i10 >> 16);
        bArr[i11 + 2] = (byte) (i10 >> 8);
        bArr[i11 + 3] = (byte) i10;
    }

    public byte[] k(byte[] bArr) {
        if (!this.f32252i) {
            return bArr;
        }
        byte[] bArr2 = new byte[24];
        o(bArr, 0, bArr2, 0);
        o(bArr, 7, bArr2, 8);
        o(bArr, 14, bArr2, 16);
        return bArr2;
    }

    public final byte[] l() {
        byte[] b10 = this.f32244a.b();
        if (b10.length >= (this.f32248e + 7) / 8) {
            return b10;
        }
        throw new IllegalStateException("Insufficient entropy provided by entropy source");
    }

    public final int m(InterfaceC2374f interfaceC2374f, int i10) {
        if (n(interfaceC2374f) && i10 == 168) {
            return 112;
        }
        if (interfaceC2374f.b().equals(KeyProperties.KEY_ALGORITHM_AES)) {
            return i10;
        }
        return -1;
    }

    public final boolean n(InterfaceC2374f interfaceC2374f) {
        return interfaceC2374f.b().equals("DESede") || interfaceC2374f.b().equals("TDEA");
    }

    public final void o(byte[] bArr, int i10, byte[] bArr2, int i11) {
        bArr2[i11] = (byte) (bArr[i10] & l.f85913l);
        int i12 = i10 + 1;
        bArr2[i11 + 1] = (byte) ((bArr[i10] << 7) | ((bArr[i12] & K.f20148c) >>> 1));
        int i13 = bArr[i12] << 6;
        int i14 = i10 + 2;
        bArr2[i11 + 2] = (byte) (i13 | ((bArr[i14] & 248) >>> 2));
        int i15 = bArr[i14] << 5;
        int i16 = i10 + 3;
        bArr2[i11 + 3] = (byte) (i15 | ((bArr[i16] & 240) >>> 3));
        int i17 = bArr[i16] << 4;
        int i18 = i10 + 4;
        bArr2[i11 + 4] = (byte) (i17 | ((bArr[i18] & 224) >>> 4));
        int i19 = bArr[i18] << 3;
        int i20 = i10 + 5;
        bArr2[i11 + 5] = (byte) (i19 | ((bArr[i20] & Opcodes.OPC_checkcast) >>> 5));
        int i21 = i10 + 6;
        bArr2[i11 + 6] = (byte) ((bArr[i20] << 2) | ((bArr[i21] & 128) >>> 6));
        int i22 = i11 + 7;
        bArr2[i22] = (byte) (bArr[i21] << 1);
        while (i11 <= i22) {
            byte b10 = bArr2[i11];
            bArr2[i11] = (byte) (((((b10 >> 7) ^ ((((((b10 >> 1) ^ (b10 >> 2)) ^ (b10 >> 3)) ^ (b10 >> 4)) ^ (b10 >> 5)) ^ (b10 >> 6))) ^ 1) & 1) | (b10 & l.f85913l));
            i11++;
        }
    }
}
