package Ii;

import java.lang.reflect.Array;

public class C2648f implements Bi.D {

    public int f9786c;

    public int f9787d;

    public int f9788e;

    public long f9790g;

    public C2647e f9792i;

    public int f9784a = 0;

    public int f9785b = 0;

    public int f9789f = 0;

    public C2647e[] f9791h = new C2647e[8];

    public byte[] f9794k = null;

    public byte[] f9796m = null;

    public final int f9797n = 64;

    public final int f9798o = 32;

    public final int f9799p = 32;

    public final int f9800q = 8;

    public final byte[] f9801r = new byte[1];

    public byte[] f9795l = new byte[32];

    public byte[] f9793j = new byte[512];

    public C2648f(byte[] bArr) {
        a(bArr);
    }

    private void a(byte[] bArr) {
        int i10;
        if (bArr != null && bArr.length > 0) {
            int length = bArr.length;
            this.f9785b = length;
            if (length > 32) {
                throw new IllegalArgumentException("Keys > 32 bytes are not supported");
            }
            this.f9796m = org.bouncycastle.util.a.p(bArr);
        }
        this.f9784a = 0;
        this.f9786c = 32;
        this.f9787d = 8;
        this.f9788e = 2;
        this.f9790g = 32L;
        byte[] bArr2 = this.f9795l;
        bArr2[0] = (byte) 32;
        bArr2[1] = (byte) this.f9785b;
        bArr2[2] = (byte) 8;
        bArr2[3] = (byte) 2;
        org.bouncycastle.util.p.m(0, bArr2, 8);
        byte[] bArr3 = this.f9795l;
        bArr3[14] = 1;
        bArr3[15] = (byte) this.f9790g;
        this.f9792i = new C2647e((byte[]) null, this.f9795l);
        org.bouncycastle.util.p.m(this.f9789f, this.f9795l, 8);
        this.f9795l[14] = 0;
        for (int i11 = 0; i11 < 8; i11++) {
            org.bouncycastle.util.p.m(i11, this.f9795l, 8);
            this.f9791h[i11] = new C2647e((byte[]) null, this.f9795l);
        }
        this.f9792i.m();
        this.f9791h[7].m();
        if (bArr == null || (i10 = this.f9785b) <= 0) {
            return;
        }
        byte[] bArr4 = new byte[64];
        System.arraycopy(bArr, 0, bArr4, 0, i10);
        for (int i12 = 0; i12 < 8; i12++) {
            this.f9791h[i12].update(bArr4, 0, 64);
        }
    }

    @Override
    public String b() {
        return "BLAKE2sp";
    }

    @Override
    public int c(byte[] bArr, int i10) {
        byte[][] bArr2 = (byte[][]) Array.newInstance(Byte.TYPE, 8, 32);
        for (int i11 = 0; i11 < 8; i11++) {
            int i12 = this.f9784a;
            int i13 = i11 * 64;
            if (i12 > i13) {
                int i14 = i12 - i13;
                if (i14 > 64) {
                    i14 = 64;
                }
                this.f9791h[i11].update(this.f9793j, i13, i14);
            }
            this.f9791h[i11].c(bArr2[i11], 0);
        }
        for (int i15 = 0; i15 < 8; i15++) {
            this.f9792i.update(bArr2[i15], 0, 32);
        }
        int c10 = this.f9792i.c(bArr, i10);
        reset();
        return c10;
    }

    @Override
    public int f() {
        return this.f9786c;
    }

    @Override
    public int i() {
        return 64;
    }

    @Override
    public void reset() {
        this.f9784a = 0;
        this.f9786c = 32;
        this.f9792i.reset();
        for (int i10 = 0; i10 < 8; i10++) {
            this.f9791h[i10].reset();
        }
        this.f9792i.m();
        this.f9791h[7].m();
        byte[] bArr = this.f9796m;
        if (bArr != null) {
            byte[] bArr2 = new byte[64];
            System.arraycopy(bArr, 0, bArr2, 0, this.f9785b);
            for (int i11 = 0; i11 < 8; i11++) {
                this.f9791h[i11].update(bArr2, 0, 64);
            }
        }
    }

    @Override
    public void update(byte b10) {
        byte[] bArr = this.f9801r;
        bArr[0] = b10;
        update(bArr, 0, 1);
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        int i12 = this.f9784a;
        int i13 = 512 - i12;
        if (i12 != 0 && i11 >= i13) {
            System.arraycopy(bArr, i10, this.f9793j, i12, i13);
            for (int i14 = 0; i14 < 8; i14++) {
                this.f9791h[i14].update(this.f9793j, i14 * 64, 64);
            }
            i10 += i13;
            i11 -= i13;
            i12 = 0;
        }
        for (int i15 = 0; i15 < 8; i15++) {
            int i16 = (i15 * 64) + i10;
            for (int i17 = i11; i17 >= 512; i17 -= 512) {
                this.f9791h[i15].update(bArr, i16, 64);
                i16 += 512;
            }
        }
        int i18 = i11 % 512;
        int i19 = i10 + (i11 - i18);
        if (i18 > 0) {
            System.arraycopy(bArr, i19, this.f9793j, i12, i18);
        }
        this.f9784a = i12 + i18;
    }
}
