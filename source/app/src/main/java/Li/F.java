package Li;

import Bi.InterfaceC2379k;
import Ti.InterfaceC3091b;
import Xi.C3360o0;
import java.io.ByteArrayOutputStream;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;

public class F implements InterfaceC3091b {

    public static final int f13582k = 4;

    public byte[] f13583a;

    public byte[] f13584b;

    public int[] f13585c;

    public int[] f13586d;

    public int[] f13587e;

    public int[] f13588f;

    public boolean f13589g = false;

    public boolean f13590h = false;

    public a f13591i = new a();

    public byte[] f13592j;

    public static final class a extends ByteArrayOutputStream {
        public byte[] c() {
            return this.buf;
        }
    }

    public static int t(int i10) {
        if ((i10 & 255) == i10) {
            return 1;
        }
        if ((65535 & i10) == i10) {
            return 2;
        }
        return (16777215 & i10) == i10 ? 3 : 4;
    }

    private void u(boolean z10) {
        if (z10) {
            this.f13592j = null;
        }
        this.f13591i.reset();
        this.f13590h = false;
        v(this.f13583a, this.f13584b);
        s();
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        if (!(interfaceC2379k instanceof Xi.w0)) {
            throw new IllegalArgumentException("Grain-128AEAD init parameters must include an IV");
        }
        Xi.w0 w0Var = (Xi.w0) interfaceC2379k;
        byte[] a10 = w0Var.a();
        if (a10 == null || a10.length != 12) {
            throw new IllegalArgumentException("Grain-128AEAD requires exactly 12 bytes of IV");
        }
        if (!(w0Var.b() instanceof C3360o0)) {
            throw new IllegalArgumentException("Grain-128AEAD init parameters must include a key");
        }
        byte[] b10 = ((C3360o0) w0Var.b()).b();
        if (b10.length != 16) {
            throw new IllegalArgumentException("Grain-128AEAD key must be 128 bits long");
        }
        Bi.r.a(new Hi.c(b(), 128, interfaceC2379k, x0.a(z10)));
        byte[] bArr = new byte[16];
        this.f13584b = bArr;
        this.f13583a = new byte[16];
        this.f13585c = new int[4];
        this.f13586d = new int[4];
        this.f13587e = new int[2];
        this.f13588f = new int[2];
        System.arraycopy(a10, 0, bArr, 0, a10.length);
        System.arraycopy(b10, 0, this.f13583a, 0, b10.length);
        reset();
    }

    @Override
    public String b() {
        return "Grain-128AEAD";
    }

    @Override
    public int c(byte[] bArr, int i10) throws IllegalStateException, InvalidCipherTextException {
        if (!this.f13590h) {
            n(this.f13591i.c(), 0, this.f13591i.size());
            this.f13590h = true;
        }
        l();
        byte[] q10 = org.bouncycastle.util.p.q(this.f13587e);
        this.f13592j = q10;
        System.arraycopy(q10, 0, bArr, i10, q10.length);
        u(false);
        return this.f13592j.length;
    }

    @Override
    public byte[] e() {
        return this.f13592j;
    }

    @Override
    public int f(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws DataLengthException {
        if (!this.f13589g) {
            throw new IllegalStateException(b() + " not initialised");
        }
        if (!this.f13590h) {
            n(this.f13591i.c(), 0, this.f13591i.size());
            this.f13590h = true;
        }
        if (i10 + i11 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (i12 + i11 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        o(bArr, i10, i11, bArr2, i12);
        return i11;
    }

    @Override
    public int g(int i10) {
        return i10;
    }

    @Override
    public int h(int i10) {
        return i10 + 8;
    }

    @Override
    public int i(byte b10, byte[] bArr, int i10) throws DataLengthException {
        return f(new byte[]{b10}, 0, 1, bArr, i10);
    }

    @Override
    public void j(byte[] bArr, int i10, int i11) {
        if (this.f13590h) {
            throw new IllegalStateException("associated data must be added before plaintext/ciphertext");
        }
        this.f13591i.write(bArr, i10, i11);
    }

    @Override
    public void k(byte b10) {
        if (this.f13590h) {
            throw new IllegalStateException("associated data must be added before plaintext/ciphertext");
        }
        this.f13591i.write(b10);
    }

    public final void l() {
        int[] iArr = this.f13587e;
        int i10 = iArr[0];
        int[] iArr2 = this.f13588f;
        iArr[0] = i10 ^ iArr2[0];
        iArr[1] = iArr[1] ^ iArr2[1];
    }

    public final void m(int i10) {
        int[] iArr = this.f13588f;
        int i11 = iArr[0] >>> 1;
        int i12 = iArr[1];
        iArr[0] = i11 | (i12 << 31);
        iArr[1] = (i10 << 31) | (i12 >>> 1);
    }

    public final void n(byte[] bArr, int i10, int i11) {
        int i12;
        byte[] bArr2;
        if (i11 < 128) {
            bArr2 = new byte[i11 + 1];
            bArr2[0] = (byte) i11;
            i12 = 0;
        } else {
            int t10 = t(i11);
            byte[] bArr3 = new byte[t10 + 1 + i11];
            bArr3[0] = (byte) (t10 | 128);
            int i13 = i11;
            int i14 = 0;
            while (i14 < t10) {
                i14++;
                bArr3[i14] = (byte) i13;
                i13 >>>= 8;
            }
            i12 = t10;
            bArr2 = bArr3;
        }
        for (int i15 = 0; i15 < i11; i15++) {
            bArr2[1 + i12 + i15] = bArr[i10 + i15];
        }
        for (byte b10 : bArr2) {
            for (int i16 = 0; i16 < 8; i16++) {
                this.f13586d = w(this.f13586d, (r() ^ this.f13585c[0]) & 1);
                this.f13585c = w(this.f13585c, q() & 1);
                int i17 = -((b10 >> i16) & 1);
                int[] iArr = this.f13587e;
                int i18 = iArr[0];
                int[] iArr2 = this.f13588f;
                iArr[0] = i18 ^ (iArr2[0] & i17);
                iArr[1] = (i17 & iArr2[1]) ^ iArr[1];
                m(p());
                this.f13586d = w(this.f13586d, (r() ^ this.f13585c[0]) & 1);
                this.f13585c = w(this.f13585c, q() & 1);
            }
        }
    }

    public final byte[] o(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) {
        for (int i13 = 0; i13 < i11; i13++) {
            byte b10 = bArr[i10 + i13];
            byte b11 = 0;
            for (int i14 = 0; i14 < 8; i14++) {
                int p10 = p();
                this.f13586d = w(this.f13586d, (r() ^ this.f13585c[0]) & 1);
                this.f13585c = w(this.f13585c, q() & 1);
                int i15 = (b10 >> i14) & 1;
                b11 = (byte) (b11 | ((p10 ^ i15) << i14));
                int i16 = -i15;
                int[] iArr = this.f13587e;
                int i17 = iArr[0];
                int[] iArr2 = this.f13588f;
                iArr[0] = i17 ^ (iArr2[0] & i16);
                iArr[1] = (i16 & iArr2[1]) ^ iArr[1];
                m(p());
                this.f13586d = w(this.f13586d, (r() ^ this.f13585c[0]) & 1);
                this.f13585c = w(this.f13585c, q() & 1);
            }
            bArr2[i12 + i13] = b11;
        }
        return bArr2;
    }

    public final int p() {
        int[] iArr = this.f13586d;
        int i10 = iArr[0];
        int i11 = i10 >>> 12;
        int i12 = iArr[1];
        int i13 = iArr[2];
        int i14 = i13 >>> 9;
        int i15 = i13 >>> 25;
        int i16 = i13 >>> 31;
        int[] iArr2 = this.f13585c;
        int i17 = iArr2[0];
        int i18 = iArr2[1];
        int i19 = iArr2[2];
        int i20 = (i17 >>> 20) & (i17 >>> 13);
        return (((i13 ^ (((((((((i20 ^ ((i17 >>> 8) & i11)) ^ (i16 & (i18 >>> 10))) ^ ((i18 >>> 28) & (i19 >>> 15))) ^ ((i11 & i16) & (i19 >>> 30))) ^ (i19 >>> 29)) ^ (i10 >>> 2)) ^ (i10 >>> 15)) ^ (i12 >>> 4)) ^ (i12 >>> 13))) ^ i14) ^ i15) & 1;
    }

    public final int q() {
        int[] iArr = this.f13585c;
        int i10 = iArr[0];
        int i11 = iArr[1] >>> 6;
        int i12 = iArr[2];
        return (iArr[3] ^ ((((i10 ^ (i10 >>> 7)) ^ i11) ^ (i12 >>> 6)) ^ (i12 >>> 17))) & 1;
    }

    public final int r() {
        int[] iArr = this.f13586d;
        int i10 = iArr[0];
        int i11 = i10 >>> 25;
        int i12 = iArr[1];
        int i13 = iArr[2];
        int i14 = ((i10 >>> 26) ^ i10) ^ (i12 >>> 24);
        return (((((((((((iArr[3] ^ (i14 ^ (i13 >>> 27))) ^ ((i10 & i13) >>> 3)) ^ ((i10 >>> 11) & (i10 >>> 13))) ^ ((i10 >>> 17) & (i10 >>> 18))) ^ ((i10 & i12) >>> 27)) ^ ((i12 >>> 8) & (i12 >>> 16))) ^ ((i12 >>> 29) & (i13 >>> 1))) ^ ((i13 >>> 4) & (i13 >>> 20))) ^ (((i10 >>> 22) & (i10 >>> 24)) & i11)) ^ (((i13 >>> 6) & (i13 >>> 14)) & (i13 >>> 18))) ^ ((((i13 >>> 24) & (i13 >>> 28)) & (i13 >>> 29)) & (i13 >>> 31))) & 1;
    }

    @Override
    public void reset() {
        u(true);
    }

    public final void s() {
        for (int i10 = 0; i10 < 320; i10++) {
            int p10 = p();
            this.f13586d = w(this.f13586d, ((r() ^ this.f13585c[0]) ^ p10) & 1);
            this.f13585c = w(this.f13585c, (p10 ^ q()) & 1);
        }
        for (int i11 = 0; i11 < 8; i11++) {
            for (int i12 = 0; i12 < 8; i12++) {
                int p11 = p();
                this.f13586d = w(this.f13586d, (((r() ^ this.f13585c[0]) ^ p11) ^ (this.f13583a[i11] >> i12)) & 1);
                this.f13585c = w(this.f13585c, ((p11 ^ q()) ^ (this.f13583a[i11 + 8] >> i12)) & 1);
            }
        }
        for (int i13 = 0; i13 < 2; i13++) {
            for (int i14 = 0; i14 < 32; i14++) {
                int p12 = p();
                this.f13586d = w(this.f13586d, (r() ^ this.f13585c[0]) & 1);
                this.f13585c = w(this.f13585c, q() & 1);
                int[] iArr = this.f13587e;
                iArr[i13] = (p12 << i14) | iArr[i13];
            }
        }
        for (int i15 = 0; i15 < 2; i15++) {
            for (int i16 = 0; i16 < 32; i16++) {
                int p13 = p();
                this.f13586d = w(this.f13586d, (r() ^ this.f13585c[0]) & 1);
                this.f13585c = w(this.f13585c, q() & 1);
                int[] iArr2 = this.f13588f;
                iArr2[i15] = (p13 << i16) | iArr2[i15];
            }
        }
        this.f13589g = true;
    }

    public final void v(byte[] bArr, byte[] bArr2) {
        bArr2[12] = -1;
        bArr2[13] = -1;
        bArr2[14] = -1;
        bArr2[15] = Byte.MAX_VALUE;
        this.f13583a = bArr;
        this.f13584b = bArr2;
        org.bouncycastle.util.p.s(bArr, 0, this.f13586d);
        org.bouncycastle.util.p.s(this.f13584b, 0, this.f13585c);
    }

    public final int[] w(int[] iArr, int i10) {
        int i11 = iArr[0] >>> 1;
        int i12 = iArr[1];
        iArr[0] = i11 | (i12 << 31);
        int i13 = i12 >>> 1;
        int i14 = iArr[2];
        iArr[1] = i13 | (i14 << 31);
        int i15 = iArr[3];
        iArr[2] = (i14 >>> 1) | (i15 << 31);
        iArr[3] = (i10 << 31) | (i15 >>> 1);
        return iArr;
    }
}
