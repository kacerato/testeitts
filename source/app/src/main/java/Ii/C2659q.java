package Ii;

import Bi.EnumC2383o;
import java.lang.reflect.Array;

public class C2659q extends AbstractC2660s {

    public final byte[] f9923d;

    public int f9924e;

    public final EnumC2383o f9925f;

    public C2659q() {
        this(EnumC2383o.ANY);
    }

    @Override
    public String b() {
        return "Haraka-256";
    }

    @Override
    public int c(byte[] bArr, int i10) {
        if (this.f9924e != 32) {
            throw new IllegalStateException("input must be exactly 32 bytes");
        }
        if (bArr.length - i10 < 32) {
            throw new IllegalArgumentException("output too short to receive digest");
        }
        int m10 = m(this.f9923d, bArr, i10);
        reset();
        return m10;
    }

    public final int m(byte[] bArr, byte[] bArr2, int i10) {
        Class<Byte> cls = Byte.TYPE;
        byte[][] bArr3 = (byte[][]) Array.newInstance(cls, 2, 16);
        byte[][] bArr4 = (byte[][]) Array.newInstance(cls, 2, 16);
        System.arraycopy(bArr, 0, bArr3[0], 0, 16);
        System.arraycopy(bArr, 16, bArr3[1], 0, 16);
        byte[] bArr5 = bArr3[0];
        byte[][] bArr6 = AbstractC2660s.f9930b;
        bArr3[0] = AbstractC2660s.a(bArr5, bArr6[0]);
        bArr3[1] = AbstractC2660s.a(bArr3[1], bArr6[1]);
        bArr3[0] = AbstractC2660s.a(bArr3[0], bArr6[2]);
        bArr3[1] = AbstractC2660s.a(bArr3[1], bArr6[3]);
        n(bArr3, bArr4);
        bArr3[0] = AbstractC2660s.a(bArr4[0], bArr6[4]);
        bArr3[1] = AbstractC2660s.a(bArr4[1], bArr6[5]);
        bArr3[0] = AbstractC2660s.a(bArr3[0], bArr6[6]);
        bArr3[1] = AbstractC2660s.a(bArr3[1], bArr6[7]);
        n(bArr3, bArr4);
        bArr3[0] = AbstractC2660s.a(bArr4[0], bArr6[8]);
        bArr3[1] = AbstractC2660s.a(bArr4[1], bArr6[9]);
        bArr3[0] = AbstractC2660s.a(bArr3[0], bArr6[10]);
        bArr3[1] = AbstractC2660s.a(bArr3[1], bArr6[11]);
        n(bArr3, bArr4);
        bArr3[0] = AbstractC2660s.a(bArr4[0], bArr6[12]);
        bArr3[1] = AbstractC2660s.a(bArr4[1], bArr6[13]);
        bArr3[0] = AbstractC2660s.a(bArr3[0], bArr6[14]);
        bArr3[1] = AbstractC2660s.a(bArr3[1], bArr6[15]);
        n(bArr3, bArr4);
        bArr3[0] = AbstractC2660s.a(bArr4[0], bArr6[16]);
        bArr3[1] = AbstractC2660s.a(bArr4[1], bArr6[17]);
        bArr3[0] = AbstractC2660s.a(bArr3[0], bArr6[18]);
        bArr3[1] = AbstractC2660s.a(bArr3[1], bArr6[19]);
        n(bArr3, bArr4);
        org.bouncycastle.util.c.a(16, bArr4[0], 0, bArr, 0, bArr2, i10);
        org.bouncycastle.util.c.a(16, bArr4[1], 0, bArr, 16, bArr2, i10 + 16);
        return 32;
    }

    public final void n(byte[][] bArr, byte[][] bArr2) {
        System.arraycopy(bArr[0], 0, bArr2[0], 0, 4);
        System.arraycopy(bArr[1], 0, bArr2[0], 4, 4);
        System.arraycopy(bArr[0], 4, bArr2[0], 8, 4);
        System.arraycopy(bArr[1], 4, bArr2[0], 12, 4);
        System.arraycopy(bArr[0], 8, bArr2[1], 0, 4);
        System.arraycopy(bArr[1], 8, bArr2[1], 4, 4);
        System.arraycopy(bArr[0], 12, bArr2[1], 8, 4);
        System.arraycopy(bArr[1], 12, bArr2[1], 12, 4);
    }

    @Override
    public void reset() {
        this.f9924e = 0;
        org.bouncycastle.util.a.n(this.f9923d);
    }

    @Override
    public void update(byte b10) {
        int i10 = this.f9924e;
        if (i10 > 31) {
            throw new IllegalArgumentException("total input cannot be more than 32 bytes");
        }
        byte[] bArr = this.f9923d;
        this.f9924e = i10 + 1;
        bArr[i10] = b10;
    }

    public C2659q(EnumC2383o enumC2383o) {
        this.f9925f = enumC2383o;
        this.f9923d = new byte[32];
        Bi.r.a(Z.a(this, f() * 4, enumC2383o));
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        int i12 = this.f9924e;
        if (i12 > 32 - i11) {
            throw new IllegalArgumentException("total input cannot be more than 32 bytes");
        }
        System.arraycopy(bArr, i10, this.f9923d, i12, i11);
        this.f9924e += i11;
    }

    public C2659q(C2659q c2659q) {
        EnumC2383o enumC2383o = c2659q.f9925f;
        this.f9925f = enumC2383o;
        this.f9923d = org.bouncycastle.util.a.p(c2659q.f9923d);
        this.f9924e = c2659q.f9924e;
        Bi.r.a(Z.a(this, f() * 4, enumC2383o));
    }
}
