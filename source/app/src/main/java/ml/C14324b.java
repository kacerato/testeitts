package ml;

import java.lang.reflect.Array;
import java.security.SecureRandom;
import ml.k;

public class C14324b {

    public static final int f97468A = 32;

    public static final int f97469B = 32;

    public static final int f97470C = 32;

    public static final int f97471x = 10;

    public static final int f97472y = 256;

    public static final int f97473z = 32;

    public final int f97474a;

    public final int f97475b;

    public final int f97476c;

    public final int f97477d;

    public final int f97478e;

    public final int f97479f;

    public final int f97480g;

    public final int f97481h;

    public final int f97482i;

    public final int f97483j;

    public final int f97484k;

    public final int f97485l;

    public final int f97486m;

    public final int f97487n;

    public final int f97488o;

    public final int f97489p;

    public final int f97490q;

    public final int f97491r;

    public final l f97492s;

    public final C14323a f97493t;

    public final boolean f97494u;

    public final boolean f97495v;

    public final k f97496w;

    public C14324b(int i10, int i11, boolean z10, boolean z11) {
        int i12;
        this.f97489p = i11;
        this.f97494u = z10;
        this.f97495v = z11;
        this.f97474a = i10;
        if (i10 == 2) {
            this.f97475b = 10;
            this.f97476c = 3;
        } else {
            if (i10 == 3) {
                this.f97475b = 8;
                i12 = 4;
            } else {
                i12 = 6;
                this.f97475b = 6;
            }
            this.f97476c = i12;
        }
        this.f97496w = z10 ? new k.a() : new k.b();
        if (z11) {
            this.f97478e = 12;
            this.f97477d = 64;
        } else {
            this.f97478e = 13;
            this.f97477d = (this.f97475b * 256) / 8;
        }
        int i13 = this.f97478e;
        int i14 = (i13 * 256) / 8;
        this.f97479f = i14;
        int i15 = i14 * i10;
        this.f97480g = i15;
        this.f97481h = 320;
        int i16 = i10 * 320;
        this.f97482i = i16;
        int i17 = this.f97476c;
        int i18 = (i17 * 256) / 8;
        this.f97483j = i18;
        int i19 = i16 + 32;
        this.f97484k = i19;
        this.f97485l = i15;
        this.f97486m = i19;
        this.f97487n = i15 + i19 + 64;
        this.f97488o = i16 + i18;
        this.f97490q = 1 << (i13 - 11);
        this.f97491r = (256 - (1 << (9 - i17))) + (1 << (i13 - 11));
        this.f97492s = new l(this);
        this.f97493t = new C14323a(this);
    }

    public static void a(byte[] bArr, byte[] bArr2, int i10, int i11, byte b10) {
        byte b11 = (byte) (-b10);
        for (int i12 = 0; i12 < i11; i12++) {
            byte b12 = bArr[i12];
            bArr[i12] = (byte) (b12 ^ ((bArr2[i12 + i10] ^ b12) & b11));
        }
    }

    public static int x(byte[] bArr, byte[] bArr2, int i10) {
        long j10 = 0;
        for (int i11 = 0; i11 < i10; i11++) {
            j10 |= bArr[i11] ^ bArr2[i11];
        }
        return (int) ((-j10) >>> 63);
    }

    public int b(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte[] bArr4 = new byte[this.f97488o];
        byte[] bArr5 = new byte[64];
        byte[] bArr6 = new byte[64];
        byte[] X10 = org.bouncycastle.util.a.X(bArr3, this.f97485l, bArr3.length);
        u(bArr3, bArr2, bArr5);
        for (int i10 = 0; i10 < 32; i10++) {
            bArr5[i10 + 32] = bArr3[(this.f97487n - 64) + i10];
        }
        this.f97496w.a(bArr6, bArr5);
        v(bArr5, org.bouncycastle.util.a.X(bArr6, 32, 64), X10, bArr4);
        int x10 = x(bArr2, bArr4, this.f97488o);
        this.f97496w.b(bArr6, bArr2, 32);
        a(bArr6, bArr3, this.f97487n - 32, 32, (byte) x10);
        byte[] bArr7 = new byte[32];
        this.f97496w.b(bArr7, bArr6, 0);
        System.arraycopy(bArr7, 0, bArr, 0, this.f97489p / 8);
        return 0;
    }

    public int c(byte[] bArr, byte[] bArr2, byte[] bArr3, SecureRandom secureRandom) {
        byte[] bArr4 = new byte[64];
        byte[] bArr5 = new byte[64];
        byte[] bArr6 = new byte[32];
        secureRandom.nextBytes(bArr6);
        this.f97496w.b(bArr6, bArr6, 0);
        System.arraycopy(bArr6, 0, bArr5, 0, 32);
        this.f97496w.b(bArr5, bArr3, 32);
        this.f97496w.a(bArr4, bArr5);
        v(bArr5, org.bouncycastle.util.a.X(bArr4, 32, 64), bArr3, bArr);
        this.f97496w.b(bArr4, bArr, 32);
        byte[] bArr7 = new byte[32];
        this.f97496w.b(bArr7, bArr4, 0);
        System.arraycopy(bArr7, 0, bArr2, 0, this.f97489p / 8);
        return 0;
    }

    public int d(byte[] bArr, byte[] bArr2, SecureRandom secureRandom) {
        w(bArr, bArr2, secureRandom);
        for (int i10 = 0; i10 < this.f97484k; i10++) {
            bArr2[this.f97485l + i10] = bArr[i10];
        }
        this.f97496w.b(bArr2, bArr, this.f97487n - 64);
        byte[] bArr3 = new byte[32];
        secureRandom.nextBytes(bArr3);
        System.arraycopy(bArr3, 0, bArr2, this.f97487n - 32, 32);
        return 0;
    }

    public int e() {
        return this.f97488o;
    }

    public int f() {
        return this.f97487n;
    }

    public int g() {
        return this.f97486m;
    }

    public int h() {
        return 10;
    }

    public int i() {
        return this.f97476c;
    }

    public int j() {
        return 32;
    }

    public int k() {
        return this.f97474a;
    }

    public int l() {
        return this.f97475b;
    }

    public int m() {
        return 256;
    }

    public int n() {
        return 32;
    }

    public int o() {
        return this.f97479f;
    }

    public int p() {
        return this.f97477d;
    }

    public int q() {
        return this.f97480g;
    }

    public int r() {
        return 32;
    }

    public int s() {
        return this.f97489p / 8;
    }

    public l t() {
        return this.f97492s;
    }

    public final void u(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int[] iArr = {this.f97474a, 256};
        Class<Short> cls = Short.TYPE;
        short[][] sArr = (short[][]) Array.newInstance(cls, iArr);
        short[][] sArr2 = (short[][]) Array.newInstance(cls, this.f97474a, 256);
        short[] sArr3 = new short[256];
        short[] sArr4 = new short[256];
        this.f97492s.c(bArr, 0, sArr);
        this.f97492s.b(bArr2, sArr2);
        this.f97493t.c(sArr2, sArr, sArr3);
        this.f97492s.a(bArr2, this.f97482i, sArr4);
        for (int i10 = 0; i10 < 256; i10++) {
            sArr3[i10] = (short) ((((sArr3[i10] + this.f97491r) - (sArr4[i10] << (10 - this.f97476c))) & 65535) >> 9);
        }
        this.f97492s.j(bArr3, sArr3);
    }

    public final void v(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        int i10 = this.f97474a;
        int[] iArr = {i10, i10, 256};
        Class<Short> cls = Short.TYPE;
        short[][][] sArr = (short[][][]) Array.newInstance(cls, iArr);
        short[][] sArr2 = (short[][]) Array.newInstance(cls, this.f97474a, 256);
        short[][] sArr3 = (short[][]) Array.newInstance(cls, this.f97474a, 256);
        short[][] sArr4 = (short[][]) Array.newInstance(cls, this.f97474a, 256);
        short[] sArr5 = new short[256];
        short[] sArr6 = new short[256];
        this.f97493t.a(sArr, org.bouncycastle.util.a.X(bArr3, this.f97482i, bArr3.length));
        this.f97493t.b(sArr2, bArr2);
        this.f97493t.d(sArr, sArr2, sArr3, 0);
        for (int i11 = 0; i11 < this.f97474a; i11++) {
            for (int i12 = 0; i12 < 256; i12++) {
                short[] sArr7 = sArr3[i11];
                sArr7[i12] = (short) (((sArr7[i12] + this.f97490q) & 65535) >>> (this.f97478e - 10));
            }
        }
        this.f97492s.h(bArr4, sArr3);
        this.f97492s.b(bArr3, sArr4);
        this.f97493t.c(sArr4, sArr2, sArr6);
        this.f97492s.d(bArr, sArr5);
        for (int i13 = 0; i13 < 256; i13++) {
            sArr6[i13] = (short) ((((sArr6[i13] - (sArr5[i13] << 9)) + this.f97490q) & 65535) >>> (10 - this.f97476c));
        }
        this.f97492s.g(bArr4, this.f97482i, sArr6);
    }

    public final void w(byte[] bArr, byte[] bArr2, SecureRandom secureRandom) {
        int i10 = this.f97474a;
        int[] iArr = {i10, i10, 256};
        Class<Short> cls = Short.TYPE;
        short[][][] sArr = (short[][][]) Array.newInstance(cls, iArr);
        short[][] sArr2 = (short[][]) Array.newInstance(cls, this.f97474a, 256);
        short[][] sArr3 = (short[][]) Array.newInstance(cls, this.f97474a, 256);
        byte[] bArr3 = new byte[32];
        byte[] bArr4 = new byte[32];
        secureRandom.nextBytes(bArr3);
        this.f97496w.c(bArr3, bArr3, 32, 32);
        secureRandom.nextBytes(bArr4);
        this.f97493t.a(sArr, bArr3);
        this.f97493t.b(sArr2, bArr4);
        this.f97493t.d(sArr, sArr2, sArr3, 1);
        for (int i11 = 0; i11 < this.f97474a; i11++) {
            for (int i12 = 0; i12 < 256; i12++) {
                short[] sArr4 = sArr3[i11];
                sArr4[i12] = (short) (((sArr4[i12] + this.f97490q) & 65535) >>> (this.f97478e - 10));
            }
        }
        this.f97492s.i(bArr2, sArr2);
        this.f97492s.h(bArr, sArr3);
        System.arraycopy(bArr3, 0, bArr, this.f97482i, 32);
    }
}
