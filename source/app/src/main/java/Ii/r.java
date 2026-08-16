package Ii;

import Bi.EnumC2383o;
import java.lang.reflect.Array;

public class r extends AbstractC2660s {

    public final byte[] f9926d;

    public int f9927e;

    public final EnumC2383o f9928f;

    public r() {
        this(EnumC2383o.ANY);
    }

    @Override
    public String b() {
        return "Haraka-512";
    }

    @Override
    public int c(byte[] bArr, int i10) {
        if (this.f9927e != 64) {
            throw new IllegalStateException("input must be exactly 64 bytes");
        }
        if (bArr.length - i10 < 32) {
            throw new IllegalArgumentException("output too short to receive digest");
        }
        int m10 = m(this.f9926d, bArr, i10);
        reset();
        return m10;
    }

    public final int m(byte[] bArr, byte[] bArr2, int i10) {
        Class<Byte> cls = Byte.TYPE;
        byte[][] bArr3 = (byte[][]) Array.newInstance(cls, 4, 16);
        byte[][] bArr4 = (byte[][]) Array.newInstance(cls, 4, 16);
        System.arraycopy(bArr, 0, bArr3[0], 0, 16);
        System.arraycopy(bArr, 16, bArr3[1], 0, 16);
        System.arraycopy(bArr, 32, bArr3[2], 0, 16);
        System.arraycopy(bArr, 48, bArr3[3], 0, 16);
        byte[] bArr5 = bArr3[0];
        byte[][] bArr6 = AbstractC2660s.f9930b;
        bArr3[0] = AbstractC2660s.a(bArr5, bArr6[0]);
        bArr3[1] = AbstractC2660s.a(bArr3[1], bArr6[1]);
        bArr3[2] = AbstractC2660s.a(bArr3[2], bArr6[2]);
        bArr3[3] = AbstractC2660s.a(bArr3[3], bArr6[3]);
        bArr3[0] = AbstractC2660s.a(bArr3[0], bArr6[4]);
        bArr3[1] = AbstractC2660s.a(bArr3[1], bArr6[5]);
        bArr3[2] = AbstractC2660s.a(bArr3[2], bArr6[6]);
        bArr3[3] = AbstractC2660s.a(bArr3[3], bArr6[7]);
        n(bArr3, bArr4);
        bArr3[0] = AbstractC2660s.a(bArr4[0], bArr6[8]);
        bArr3[1] = AbstractC2660s.a(bArr4[1], bArr6[9]);
        bArr3[2] = AbstractC2660s.a(bArr4[2], bArr6[10]);
        bArr3[3] = AbstractC2660s.a(bArr4[3], bArr6[11]);
        bArr3[0] = AbstractC2660s.a(bArr3[0], bArr6[12]);
        bArr3[1] = AbstractC2660s.a(bArr3[1], bArr6[13]);
        bArr3[2] = AbstractC2660s.a(bArr3[2], bArr6[14]);
        bArr3[3] = AbstractC2660s.a(bArr3[3], bArr6[15]);
        n(bArr3, bArr4);
        bArr3[0] = AbstractC2660s.a(bArr4[0], bArr6[16]);
        bArr3[1] = AbstractC2660s.a(bArr4[1], bArr6[17]);
        bArr3[2] = AbstractC2660s.a(bArr4[2], bArr6[18]);
        bArr3[3] = AbstractC2660s.a(bArr4[3], bArr6[19]);
        bArr3[0] = AbstractC2660s.a(bArr3[0], bArr6[20]);
        bArr3[1] = AbstractC2660s.a(bArr3[1], bArr6[21]);
        bArr3[2] = AbstractC2660s.a(bArr3[2], bArr6[22]);
        bArr3[3] = AbstractC2660s.a(bArr3[3], bArr6[23]);
        n(bArr3, bArr4);
        bArr3[0] = AbstractC2660s.a(bArr4[0], bArr6[24]);
        bArr3[1] = AbstractC2660s.a(bArr4[1], bArr6[25]);
        bArr3[2] = AbstractC2660s.a(bArr4[2], bArr6[26]);
        bArr3[3] = AbstractC2660s.a(bArr4[3], bArr6[27]);
        bArr3[0] = AbstractC2660s.a(bArr3[0], bArr6[28]);
        bArr3[1] = AbstractC2660s.a(bArr3[1], bArr6[29]);
        bArr3[2] = AbstractC2660s.a(bArr3[2], bArr6[30]);
        bArr3[3] = AbstractC2660s.a(bArr3[3], bArr6[31]);
        n(bArr3, bArr4);
        bArr3[0] = AbstractC2660s.a(bArr4[0], bArr6[32]);
        bArr3[1] = AbstractC2660s.a(bArr4[1], bArr6[33]);
        bArr3[2] = AbstractC2660s.a(bArr4[2], bArr6[34]);
        bArr3[3] = AbstractC2660s.a(bArr4[3], bArr6[35]);
        bArr3[0] = AbstractC2660s.a(bArr3[0], bArr6[36]);
        bArr3[1] = AbstractC2660s.a(bArr3[1], bArr6[37]);
        bArr3[2] = AbstractC2660s.a(bArr3[2], bArr6[38]);
        bArr3[3] = AbstractC2660s.a(bArr3[3], bArr6[39]);
        n(bArr3, bArr4);
        org.bouncycastle.util.c.a(16, bArr4[0], 0, bArr, 0, bArr3[0], 0);
        org.bouncycastle.util.c.a(16, bArr4[1], 0, bArr, 16, bArr3[1], 0);
        org.bouncycastle.util.c.a(16, bArr4[2], 0, bArr, 32, bArr3[2], 0);
        org.bouncycastle.util.c.a(16, bArr4[3], 0, bArr, 48, bArr3[3], 0);
        System.arraycopy(bArr3[0], 8, bArr2, i10, 8);
        System.arraycopy(bArr3[1], 8, bArr2, i10 + 8, 8);
        System.arraycopy(bArr3[2], 0, bArr2, i10 + 16, 8);
        System.arraycopy(bArr3[3], 0, bArr2, i10 + 24, 8);
        return 32;
    }

    public final void n(byte[][] bArr, byte[][] bArr2) {
        System.arraycopy(bArr[0], 12, bArr2[0], 0, 4);
        System.arraycopy(bArr[2], 12, bArr2[0], 4, 4);
        System.arraycopy(bArr[1], 12, bArr2[0], 8, 4);
        System.arraycopy(bArr[3], 12, bArr2[0], 12, 4);
        System.arraycopy(bArr[2], 0, bArr2[1], 0, 4);
        System.arraycopy(bArr[0], 0, bArr2[1], 4, 4);
        System.arraycopy(bArr[3], 0, bArr2[1], 8, 4);
        System.arraycopy(bArr[1], 0, bArr2[1], 12, 4);
        System.arraycopy(bArr[2], 4, bArr2[2], 0, 4);
        System.arraycopy(bArr[0], 4, bArr2[2], 4, 4);
        System.arraycopy(bArr[3], 4, bArr2[2], 8, 4);
        System.arraycopy(bArr[1], 4, bArr2[2], 12, 4);
        System.arraycopy(bArr[0], 8, bArr2[3], 0, 4);
        System.arraycopy(bArr[2], 8, bArr2[3], 4, 4);
        System.arraycopy(bArr[1], 8, bArr2[3], 8, 4);
        System.arraycopy(bArr[3], 8, bArr2[3], 12, 4);
    }

    @Override
    public void reset() {
        this.f9927e = 0;
        org.bouncycastle.util.a.n(this.f9926d);
    }

    @Override
    public void update(byte b10) {
        int i10 = this.f9927e;
        if (i10 > 63) {
            throw new IllegalArgumentException("total input cannot be more than 64 bytes");
        }
        byte[] bArr = this.f9926d;
        this.f9927e = i10 + 1;
        bArr[i10] = b10;
    }

    public r(EnumC2383o enumC2383o) {
        this.f9928f = enumC2383o;
        this.f9926d = new byte[64];
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        int i12 = this.f9927e;
        if (i12 > 64 - i11) {
            throw new IllegalArgumentException("total input cannot be more than 64 bytes");
        }
        System.arraycopy(bArr, i10, this.f9926d, i12, i11);
        this.f9927e += i11;
    }

    public r(r rVar) {
        this.f9928f = rVar.f9928f;
        this.f9926d = org.bouncycastle.util.a.p(rVar.f9926d);
        this.f9927e = rVar.f9927e;
    }
}
