package Ii;

import Bi.EnumC2383o;
import Bi.InterfaceC2382n;

public class S extends AbstractC2658p {

    public static final int f9571j = 32;

    public static final int f9572k = 16;

    public static final int[] f9573l = new int[64];

    public int[] f9574f;

    public int[] f9575g;

    public int f9576h;

    public int[] f9577i;

    static {
        int i10;
        int i11 = 0;
        while (true) {
            if (i11 >= 16) {
                break;
            }
            f9573l[i11] = (2043430169 >>> (32 - i11)) | (2043430169 << i11);
            i11++;
        }
        for (i10 = 16; i10 < 64; i10++) {
            int i12 = i10 % 32;
            f9573l[i10] = (2055708042 >>> (32 - i12)) | (2055708042 << i12);
        }
    }

    public S() {
        this(EnumC2383o.ANY);
    }

    @Override
    public String b() {
        return "SM3";
    }

    @Override
    public int c(byte[] bArr, int i10) {
        l();
        org.bouncycastle.util.p.j(this.f9574f, bArr, i10);
        reset();
        return 32;
    }

    @Override
    public org.bouncycastle.util.n copy() {
        return new S(this);
    }

    @Override
    public int f() {
        return 32;
    }

    @Override
    public void j(org.bouncycastle.util.n nVar) {
        S s10 = (S) nVar;
        super.d(s10);
        w(s10);
    }

    @Override
    public InterfaceC2382n k() {
        return Z.a(this, 256, this.f9919a);
    }

    @Override
    public void n() {
        int i10;
        int i11 = 0;
        while (true) {
            if (i11 >= 16) {
                break;
            }
            this.f9577i[i11] = this.f9575g[i11];
            i11++;
        }
        for (int i12 = 16; i12 < 68; i12++) {
            int[] iArr = this.f9577i;
            int i13 = iArr[i12 - 3];
            int i14 = iArr[i12 - 13];
            iArr[i12] = (v(((i13 >>> 17) | (i13 << 15)) ^ (iArr[i12 - 16] ^ iArr[i12 - 9])) ^ ((i14 >>> 25) | (i14 << 7))) ^ this.f9577i[i12 - 6];
        }
        int[] iArr2 = this.f9574f;
        int i15 = iArr2[0];
        int i16 = iArr2[1];
        int i17 = iArr2[2];
        int i18 = iArr2[3];
        int i19 = iArr2[4];
        int i20 = iArr2[5];
        int i21 = iArr2[6];
        int i22 = iArr2[7];
        int i23 = 0;
        int i24 = i21;
        for (i10 = 16; i23 < i10; i10 = 16) {
            int i25 = (i15 << 12) | (i15 >>> 20);
            int i26 = i25 + i19 + f9573l[i23];
            int i27 = (i26 << 7) | (i26 >>> 25);
            int[] iArr3 = this.f9577i;
            int i28 = iArr3[i23];
            int i29 = i28 ^ iArr3[i23 + 4];
            int q10 = q(i15, i16, i17) + i18;
            int s10 = s(i19, i20, i24) + i22 + i27 + i28;
            int i30 = (i16 << 9) | (i16 >>> 23);
            int i31 = (i20 << 19) | (i20 >>> 13);
            i23++;
            i20 = i19;
            i19 = u(s10);
            i18 = i17;
            i17 = i30;
            i22 = i24;
            i24 = i31;
            i16 = i15;
            i15 = q10 + (i27 ^ i25) + i29;
        }
        int i32 = i22;
        int i33 = i19;
        int i34 = i24;
        int i35 = i18;
        int i36 = i17;
        int i37 = i16;
        int i38 = i15;
        int i39 = 16;
        while (i39 < 64) {
            int i40 = (i38 << 12) | (i38 >>> 20);
            int i41 = i40 + i33 + f9573l[i39];
            int i42 = (i41 << 7) | (i41 >>> 25);
            int[] iArr4 = this.f9577i;
            int i43 = iArr4[i39];
            int i44 = i43 ^ iArr4[i39 + 4];
            int r10 = r(i38, i37, i36) + i35;
            int t10 = t(i33, i20, i34) + i32 + i42 + i43;
            int i45 = (i20 << 19) | (i20 >>> 13);
            i39++;
            i20 = i33;
            i33 = u(t10);
            i35 = i36;
            i36 = (i37 >>> 23) | (i37 << 9);
            i37 = i38;
            i38 = r10 + (i42 ^ i40) + i44;
            i32 = i34;
            i34 = i45;
        }
        int[] iArr5 = this.f9574f;
        iArr5[0] = i38 ^ iArr5[0];
        iArr5[1] = iArr5[1] ^ i37;
        iArr5[2] = iArr5[2] ^ i36;
        iArr5[3] = iArr5[3] ^ i35;
        iArr5[4] = iArr5[4] ^ i33;
        iArr5[5] = iArr5[5] ^ i20;
        iArr5[6] = i34 ^ iArr5[6];
        iArr5[7] = iArr5[7] ^ i32;
        this.f9576h = 0;
    }

    @Override
    public void o(long j10) {
        int i10 = this.f9576h;
        if (i10 > 14) {
            this.f9575g[i10] = 0;
            this.f9576h = i10 + 1;
            n();
        }
        while (true) {
            int i11 = this.f9576h;
            if (i11 >= 14) {
                int[] iArr = this.f9575g;
                int i12 = i11 + 1;
                this.f9576h = i12;
                iArr[i11] = (int) (j10 >>> 32);
                this.f9576h = i11 + 2;
                iArr[i12] = (int) j10;
                return;
            }
            this.f9575g[i11] = 0;
            this.f9576h = i11 + 1;
        }
    }

    @Override
    public void p(byte[] bArr, int i10) {
        int[] iArr = this.f9575g;
        int i11 = this.f9576h;
        this.f9576h = i11 + 1;
        iArr[i11] = org.bouncycastle.util.p.a(bArr, i10);
        if (this.f9576h >= 16) {
            n();
        }
    }

    public final int q(int i10, int i11, int i12) {
        return (i10 ^ i11) ^ i12;
    }

    public final int r(int i10, int i11, int i12) {
        return (i10 & (i11 | i12)) | (i11 & i12);
    }

    @Override
    public void reset() {
        super.reset();
        int[] iArr = this.f9574f;
        iArr[0] = 1937774191;
        iArr[1] = 1226093241;
        iArr[2] = 388252375;
        iArr[3] = -628488704;
        iArr[4] = -1452330820;
        iArr[5] = 372324522;
        iArr[6] = -477237683;
        iArr[7] = -1325724082;
        this.f9576h = 0;
    }

    public final int s(int i10, int i11, int i12) {
        return (i10 ^ i11) ^ i12;
    }

    public final int t(int i10, int i11, int i12) {
        return ((~i10) & i12) | (i11 & i10);
    }

    public final int u(int i10) {
        return (i10 ^ ((i10 << 9) | (i10 >>> 23))) ^ ((i10 << 17) | (i10 >>> 15));
    }

    public final int v(int i10) {
        return (i10 ^ ((i10 << 15) | (i10 >>> 17))) ^ ((i10 << 23) | (i10 >>> 9));
    }

    public final void w(S s10) {
        int[] iArr = s10.f9574f;
        int[] iArr2 = this.f9574f;
        System.arraycopy(iArr, 0, iArr2, 0, iArr2.length);
        int[] iArr3 = s10.f9575g;
        int[] iArr4 = this.f9575g;
        System.arraycopy(iArr3, 0, iArr4, 0, iArr4.length);
        this.f9576h = s10.f9576h;
    }

    public S(EnumC2383o enumC2383o) {
        super(enumC2383o);
        this.f9574f = new int[8];
        this.f9575g = new int[16];
        this.f9577i = new int[68];
        Bi.r.a(k());
        reset();
    }

    public S(S s10) {
        super(s10);
        this.f9574f = new int[8];
        this.f9575g = new int[16];
        this.f9577i = new int[68];
        Bi.r.a(k());
        w(s10);
    }
}
