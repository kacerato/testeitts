package ll;

import java.lang.reflect.Array;

public class j extends g {

    public short[][][] f96610e;

    public byte[] f96611f;

    public short[][][] f96612g;

    public short[][][] f96613h;

    public short[][][] f96614i;

    public short[][][] f96615j;

    public short[][][] f96616k;

    public j(h hVar, byte[] bArr) {
        super(false, hVar);
        int e10 = hVar.e();
        int f10 = hVar.f();
        if (e().l() != n.CLASSIC) {
            this.f96611f = org.bouncycastle.util.a.X(bArr, 0, hVar.b());
            int[] iArr = {hVar.h(), hVar.j(), hVar.i()};
            Class<Short> cls = Short.TYPE;
            this.f96612g = (short[][][]) Array.newInstance(cls, iArr);
            this.f96613h = (short[][][]) Array.newInstance(cls, hVar.h(), hVar.h(), hVar.h());
            this.f96614i = (short[][][]) Array.newInstance(cls, hVar.h(), hVar.h(), hVar.i());
            this.f96615j = (short[][][]) Array.newInstance(cls, hVar.h(), hVar.i(), hVar.i());
            this.f96616k = (short[][][]) Array.newInstance(cls, hVar.i(), hVar.i(), hVar.i());
            int b10 = hVar.b();
            int o10 = b10 + m.o(this.f96612g, bArr, b10, false);
            int o11 = o10 + m.o(this.f96613h, bArr, o10, true);
            int o12 = o11 + m.o(this.f96614i, bArr, o11, false);
            int o13 = o12 + m.o(this.f96615j, bArr, o12, true);
            if (o13 + m.o(this.f96616k, bArr, o13, true) != bArr.length) {
                throw new IllegalArgumentException("unparsed data in key encoding");
            }
            return;
        }
        this.f96610e = (short[][][]) Array.newInstance(Short.TYPE, e10, f10, f10);
        int i10 = 0;
        for (int i11 = 0; i11 < f10; i11++) {
            for (int i12 = 0; i12 < f10; i12++) {
                for (int i13 = 0; i13 < e10; i13++) {
                    short[][][] sArr = this.f96610e;
                    if (i11 > i12) {
                        sArr[i13][i11][i12] = 0;
                    } else {
                        sArr[i13][i11][i12] = (short) (bArr[i10] & 255);
                        i10++;
                    }
                }
            }
        }
    }

    public short[][][] f() {
        return m.b(this.f96610e);
    }

    public byte[] getEncoded() {
        return e().l() != n.CLASSIC ? org.bouncycastle.util.a.B(org.bouncycastle.util.a.B(org.bouncycastle.util.a.B(org.bouncycastle.util.a.B(org.bouncycastle.util.a.B(this.f96611f, m.k(this.f96612g, false)), m.k(this.f96613h, true)), m.k(this.f96614i, false)), m.k(this.f96615j, true)), m.k(this.f96616k, true)) : m.k(this.f96610e, true);
    }

    public j(h hVar, byte[] bArr, short[][][] sArr, short[][][] sArr2, short[][][] sArr3, short[][][] sArr4, short[][][] sArr5) {
        super(false, hVar);
        this.f96611f = (byte[]) bArr.clone();
        this.f96612g = m.b(sArr);
        this.f96613h = m.b(sArr2);
        this.f96614i = m.b(sArr3);
        this.f96615j = m.b(sArr4);
        this.f96616k = m.b(sArr5);
    }

    public j(h hVar, short[][][] sArr, short[][][] sArr2, short[][][] sArr3, short[][][] sArr4, short[][][] sArr5, short[][][] sArr6, short[][][] sArr7, short[][][] sArr8, short[][][] sArr9, short[][][] sArr10, short[][][] sArr11, short[][][] sArr12) {
        super(false, hVar);
        int j10 = hVar.j();
        int h10 = hVar.h();
        int i10 = hVar.i();
        this.f96610e = (short[][][]) Array.newInstance(Short.TYPE, hVar.e(), hVar.f(), hVar.f());
        for (int i11 = 0; i11 < h10; i11++) {
            for (int i12 = 0; i12 < j10; i12++) {
                System.arraycopy(sArr[i11][i12], 0, this.f96610e[i11][i12], 0, j10);
                System.arraycopy(sArr2[i11][i12], 0, this.f96610e[i11][i12], j10, h10);
                System.arraycopy(sArr3[i11][i12], 0, this.f96610e[i11][i12], j10 + h10, i10);
            }
            for (int i13 = 0; i13 < h10; i13++) {
                int i14 = i13 + j10;
                System.arraycopy(sArr4[i11][i13], 0, this.f96610e[i11][i14], j10, h10);
                System.arraycopy(sArr5[i11][i13], 0, this.f96610e[i11][i14], j10 + h10, i10);
            }
            for (int i15 = 0; i15 < i10; i15++) {
                System.arraycopy(sArr6[i11][i15], 0, this.f96610e[i11][i15 + j10 + h10], j10 + h10, i10);
            }
        }
        for (int i16 = 0; i16 < i10; i16++) {
            for (int i17 = 0; i17 < j10; i17++) {
                int i18 = i16 + h10;
                System.arraycopy(sArr7[i16][i17], 0, this.f96610e[i18][i17], 0, j10);
                System.arraycopy(sArr8[i16][i17], 0, this.f96610e[i18][i17], j10, h10);
                System.arraycopy(sArr9[i16][i17], 0, this.f96610e[i18][i17], j10 + h10, i10);
            }
            for (int i19 = 0; i19 < h10; i19++) {
                int i20 = i16 + h10;
                int i21 = i19 + j10;
                System.arraycopy(sArr10[i16][i19], 0, this.f96610e[i20][i21], j10, h10);
                System.arraycopy(sArr11[i16][i19], 0, this.f96610e[i20][i21], j10 + h10, i10);
            }
            for (int i22 = 0; i22 < i10; i22++) {
                System.arraycopy(sArr12[i16][i22], 0, this.f96610e[i16 + h10][i22 + j10 + h10], j10 + h10, i10);
            }
        }
    }
}
