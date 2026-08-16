package cl;

import cl.p;
import java.security.SecureRandom;

public class C4219b {

    public static final int f34964A = 32;

    public static final int f34965t = 256;

    public static final int f34966u = 3329;

    public static final int f34967v = 62209;

    public static final int f34968w = 32;

    public static final int f34969x = 32;

    public static final int f34970y = 384;

    public static final int f34971z = 2;

    public SecureRandom f34972a;

    public C4220c f34973b;

    public final int f34974c;

    public final int f34975d;

    public final int f34976e;

    public final int f34977f;

    public final int f34978g;

    public final int f34979h;

    public final int f34980i;

    public final int f34981j;

    public final int f34982k;

    public final int f34983l;

    public final int f34984m;

    public final int f34985n;

    public final int f34986o;

    public final int f34987p;

    public final int f34988q;

    public final int f34989r;

    public final p f34990s;

    /* JADX WARN: Removed duplicated region for block: B:10:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0071  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C4219b(int i10, boolean z10) {
        int i11;
        this.f34974c = i10;
        if (i10 == 2) {
            this.f34978g = 3;
        } else {
            if (i10 != 3) {
                if (i10 != 4) {
                    throw new IllegalArgumentException("K: " + i10 + " is not supported for Crystals Kyber");
                }
                this.f34978g = 2;
                this.f34976e = 160;
                i11 = i10 * 352;
                this.f34977f = i11;
                this.f34989r = 32;
                int i12 = i10 * 384;
                this.f34975d = i12;
                int i13 = i12 + 32;
                this.f34979h = i13;
                this.f34980i = i12;
                int i14 = this.f34977f + this.f34976e;
                this.f34981j = i14;
                this.f34982k = i13;
                int i15 = i12 + i13 + 64;
                this.f34983l = i15;
                this.f34984m = i14;
                this.f34985n = 32;
                this.f34986o = i15;
                this.f34987p = i13;
                this.f34988q = i14;
                this.f34990s = !z10 ? new p.a() : new p.b();
                this.f34973b = new C4220c(this);
            }
            this.f34978g = 2;
        }
        this.f34976e = 128;
        i11 = i10 * 320;
        this.f34977f = i11;
        this.f34989r = 32;
        int i122 = i10 * 384;
        this.f34975d = i122;
        int i132 = i122 + 32;
        this.f34979h = i132;
        this.f34980i = i122;
        int i142 = this.f34977f + this.f34976e;
        this.f34981j = i142;
        this.f34982k = i132;
        int i152 = i122 + i132 + 64;
        this.f34983l = i152;
        this.f34984m = i142;
        this.f34985n = 32;
        this.f34986o = i152;
        this.f34987p = i132;
        this.f34988q = i142;
        this.f34990s = !z10 ? new p.a() : new p.b();
        this.f34973b = new C4220c(this);
    }

    public static int i() {
        return 2;
    }

    public static int k() {
        return 32;
    }

    public final void a(byte[] bArr, byte[] bArr2, int i10, boolean z10) {
        if (z10) {
            System.arraycopy(bArr2, 0, bArr, 0, i10);
        } else {
            System.arraycopy(bArr, 0, bArr, 0, i10);
        }
    }

    public byte[][] b() {
        byte[][] c10 = this.f34973b.c();
        int i10 = this.f34980i;
        byte[] bArr = new byte[i10];
        System.arraycopy(c10[1], 0, bArr, 0, i10);
        byte[] bArr2 = new byte[32];
        this.f34990s.b(bArr2, c10[0], 0);
        byte[] bArr3 = new byte[32];
        this.f34972a.nextBytes(bArr3);
        int i11 = this.f34979h;
        byte[] bArr4 = new byte[i11];
        System.arraycopy(c10[0], 0, bArr4, 0, i11);
        int i12 = i11 - 32;
        return new byte[][]{org.bouncycastle.util.a.X(bArr4, 0, i12), org.bouncycastle.util.a.X(bArr4, i12, i11), bArr, bArr2, bArr3};
    }

    public int c() {
        return this.f34985n;
    }

    public int d() {
        return this.f34988q;
    }

    public int e() {
        return this.f34987p;
    }

    public int f() {
        return this.f34986o;
    }

    public int g() {
        return this.f34984m;
    }

    public int h() {
        return this.f34978g;
    }

    public int j() {
        return this.f34981j;
    }

    public int l() {
        return this.f34979h;
    }

    public int m() {
        return this.f34980i;
    }

    public int n() {
        return this.f34974c;
    }

    public int o() {
        return this.f34976e;
    }

    public int p() {
        return this.f34975d;
    }

    public int q() {
        return this.f34977f;
    }

    public int r() {
        return this.f34982k;
    }

    public int s() {
        return this.f34983l;
    }

    public void t(byte[] bArr) {
        this.f34972a.nextBytes(bArr);
    }

    public p u() {
        return this.f34990s;
    }

    public void v(SecureRandom secureRandom) {
        this.f34972a = secureRandom;
    }

    public byte[] w(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[64];
        byte[] bArr4 = new byte[64];
        byte[] X10 = org.bouncycastle.util.a.X(bArr2, this.f34980i, bArr2.length);
        System.arraycopy(this.f34973b.a(bArr, bArr2), 0, bArr3, 0, 32);
        System.arraycopy(bArr2, this.f34983l - 64, bArr3, 32, 32);
        this.f34990s.a(bArr4, bArr3);
        boolean z10 = !org.bouncycastle.util.a.I(bArr, this.f34973b.b(org.bouncycastle.util.a.X(bArr3, 0, 32), X10, org.bouncycastle.util.a.X(bArr4, 32, 64)));
        this.f34990s.b(bArr4, bArr, 32);
        int i10 = this.f34983l;
        a(bArr4, org.bouncycastle.util.a.X(bArr2, i10 - 32, i10), 32, z10);
        return org.bouncycastle.util.a.X(bArr4, 0, this.f34989r);
    }

    public byte[][] x(byte[] bArr) {
        if (bArr.length != this.f34979h) {
            throw new IllegalArgumentException("Input validation Error: Type check failed for ml-kem encapsulation");
        }
        n nVar = new n(this);
        if (!org.bouncycastle.util.a.g(this.f34973b.f(nVar, this.f34973b.j(nVar, bArr)), bArr)) {
            throw new IllegalArgumentException("Input validation: Modulus check failed for ml-kem encapsulation");
        }
        byte[] bArr2 = new byte[64];
        byte[] bArr3 = new byte[64];
        byte[] bArr4 = new byte[32];
        this.f34972a.nextBytes(bArr4);
        System.arraycopy(bArr4, 0, bArr2, 0, 32);
        this.f34990s.b(bArr2, bArr, 32);
        this.f34990s.a(bArr3, bArr2);
        byte[] b10 = this.f34973b.b(org.bouncycastle.util.a.X(bArr2, 0, 32), bArr, org.bouncycastle.util.a.X(bArr3, 32, 64));
        int i10 = this.f34989r;
        byte[] bArr5 = new byte[i10];
        System.arraycopy(bArr3, 0, bArr5, 0, i10);
        return new byte[][]{bArr5, b10};
    }
}
