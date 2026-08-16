package Li;

public class C2792q extends n0 {
    public C2792q() {
    }

    public static void u(int i10, int[] iArr, int[] iArr2) {
        int i11 = 16;
        if (iArr.length != 16) {
            throw new IllegalArgumentException();
        }
        if (iArr2.length != 16) {
            throw new IllegalArgumentException();
        }
        if (i10 % 2 != 0) {
            throw new IllegalArgumentException("Number of rounds must be even");
        }
        char c10 = 0;
        int i12 = iArr[0];
        int i13 = iArr[1];
        int i14 = iArr[2];
        int i15 = iArr[3];
        int i16 = iArr[4];
        int i17 = iArr[5];
        int i18 = iArr[6];
        int i19 = 7;
        int i20 = iArr[7];
        int i21 = 8;
        int i22 = iArr[8];
        int i23 = iArr[9];
        int i24 = iArr[10];
        int i25 = iArr[11];
        int i26 = 12;
        int i27 = iArr[12];
        int i28 = iArr[13];
        int i29 = iArr[14];
        int i30 = iArr[15];
        int i31 = i29;
        int i32 = i28;
        int i33 = i27;
        int i34 = i25;
        int i35 = i24;
        int i36 = i23;
        int i37 = i22;
        int i38 = i20;
        int i39 = i18;
        int i40 = i17;
        int i41 = i16;
        int i42 = i15;
        int i43 = i14;
        int i44 = i13;
        int i45 = i12;
        int i46 = i10;
        while (i46 > 0) {
            int i47 = i45 + i41;
            int h10 = org.bouncycastle.util.k.h(i33 ^ i47, i11);
            int i48 = i37 + h10;
            int h11 = org.bouncycastle.util.k.h(i41 ^ i48, i26);
            int i49 = i47 + h11;
            int h12 = org.bouncycastle.util.k.h(h10 ^ i49, i21);
            int i50 = i48 + h12;
            int h13 = org.bouncycastle.util.k.h(h11 ^ i50, i19);
            int i51 = i44 + i40;
            int h14 = org.bouncycastle.util.k.h(i32 ^ i51, i11);
            int i52 = i36 + h14;
            int h15 = org.bouncycastle.util.k.h(i40 ^ i52, i26);
            int i53 = i51 + h15;
            int h16 = org.bouncycastle.util.k.h(h14 ^ i53, i21);
            int i54 = i52 + h16;
            int h17 = org.bouncycastle.util.k.h(h15 ^ i54, i19);
            int i55 = i43 + i39;
            int h18 = org.bouncycastle.util.k.h(i31 ^ i55, i11);
            int i56 = i35 + h18;
            int h19 = org.bouncycastle.util.k.h(i39 ^ i56, i26);
            int i57 = i55 + h19;
            int h20 = org.bouncycastle.util.k.h(h18 ^ i57, i21);
            int i58 = i56 + h20;
            int h21 = org.bouncycastle.util.k.h(h19 ^ i58, i19);
            int i59 = i42 + i38;
            int h22 = org.bouncycastle.util.k.h(i30 ^ i59, 16);
            int i60 = i34 + h22;
            int h23 = org.bouncycastle.util.k.h(i38 ^ i60, i26);
            int i61 = i59 + h23;
            int h24 = org.bouncycastle.util.k.h(h22 ^ i61, 8);
            int i62 = i60 + h24;
            int h25 = org.bouncycastle.util.k.h(h23 ^ i62, 7);
            int i63 = i49 + h17;
            int h26 = org.bouncycastle.util.k.h(h24 ^ i63, 16);
            int i64 = i58 + h26;
            int h27 = org.bouncycastle.util.k.h(h17 ^ i64, 12);
            i45 = i63 + h27;
            i30 = org.bouncycastle.util.k.h(h26 ^ i45, 8);
            i35 = i64 + i30;
            i40 = org.bouncycastle.util.k.h(h27 ^ i35, 7);
            int i65 = i53 + h21;
            int h28 = org.bouncycastle.util.k.h(h12 ^ i65, 16);
            int i66 = i62 + h28;
            int h29 = org.bouncycastle.util.k.h(h21 ^ i66, 12);
            i44 = i65 + h29;
            i33 = org.bouncycastle.util.k.h(h28 ^ i44, 8);
            i34 = i66 + i33;
            i39 = org.bouncycastle.util.k.h(h29 ^ i34, 7);
            int i67 = i57 + h25;
            int h30 = org.bouncycastle.util.k.h(h16 ^ i67, 16);
            int i68 = i50 + h30;
            int h31 = org.bouncycastle.util.k.h(h25 ^ i68, 12);
            i43 = i67 + h31;
            i32 = org.bouncycastle.util.k.h(h30 ^ i43, 8);
            i37 = i68 + i32;
            i38 = org.bouncycastle.util.k.h(h31 ^ i37, 7);
            int i69 = i61 + h13;
            i11 = 16;
            int h32 = org.bouncycastle.util.k.h(h20 ^ i69, 16);
            int i70 = i54 + h32;
            int h33 = org.bouncycastle.util.k.h(h13 ^ i70, 12);
            i42 = i69 + h33;
            i31 = org.bouncycastle.util.k.h(h32 ^ i42, 8);
            i36 = i70 + i31;
            i41 = org.bouncycastle.util.k.h(h33 ^ i36, 7);
            i46 -= 2;
            c10 = 0;
            i26 = 12;
            i21 = 8;
            i19 = 7;
        }
        iArr2[c10] = i45 + iArr[c10];
        iArr2[1] = i44 + iArr[1];
        iArr2[2] = i43 + iArr[2];
        iArr2[3] = i42 + iArr[3];
        iArr2[4] = i41 + iArr[4];
        iArr2[5] = i40 + iArr[5];
        iArr2[6] = i39 + iArr[6];
        iArr2[7] = i38 + iArr[7];
        iArr2[8] = i37 + iArr[8];
        iArr2[9] = i36 + iArr[9];
        iArr2[10] = i35 + iArr[10];
        iArr2[11] = i34 + iArr[11];
        iArr2[12] = i33 + iArr[12];
        iArr2[13] = i32 + iArr[13];
        iArr2[14] = i31 + iArr[14];
        iArr2[15] = i30 + iArr[15];
    }

    @Override
    public String b() {
        return "ChaCha" + this.f14030a;
    }

    @Override
    public void c() {
        int[] iArr = this.f14032c;
        int i10 = iArr[12] + 1;
        iArr[12] = i10;
        if (i10 == 0) {
            iArr[13] = iArr[13] + 1;
        }
    }

    @Override
    public void e(long j10) {
        int i10 = (int) (j10 >>> 32);
        int i11 = (int) j10;
        if (i10 > 0) {
            int[] iArr = this.f14032c;
            iArr[13] = iArr[13] + i10;
        }
        int[] iArr2 = this.f14032c;
        int i12 = iArr2[12];
        int i13 = i11 + i12;
        iArr2[12] = i13;
        if (i12 == 0 || i13 >= i12) {
            return;
        }
        iArr2[13] = iArr2[13] + 1;
    }

    @Override
    public void g(byte[] bArr) {
        u(this.f14030a, this.f14032c, this.f14033d);
        org.bouncycastle.util.p.o(this.f14033d, bArr, 0);
    }

    @Override
    public long h() {
        int[] iArr = this.f14032c;
        return (iArr[13] << 32) | (iArr[12] & 4294967295L);
    }

    @Override
    public void o() {
        int[] iArr = this.f14032c;
        iArr[13] = 0;
        iArr[12] = 0;
    }

    @Override
    public void q() {
        int[] iArr = this.f14032c;
        int i10 = iArr[12];
        if (i10 == 0 && iArr[13] == 0) {
            throw new IllegalStateException("attempt to reduce counter past zero.");
        }
        int i11 = i10 - 1;
        iArr[12] = i11;
        if (i11 == -1) {
            iArr[13] = iArr[13] - 1;
        }
    }

    @Override
    public void r(long j10) {
        int i10 = (int) (j10 >>> 32);
        int i11 = (int) j10;
        if (i10 != 0) {
            int[] iArr = this.f14032c;
            int i12 = iArr[13];
            if ((i12 & 4294967295L) < (i10 & 4294967295L)) {
                throw new IllegalStateException("attempt to reduce counter past zero.");
            }
            iArr[13] = i12 - i10;
        }
        int[] iArr2 = this.f14032c;
        int i13 = iArr2[12];
        if ((i13 & 4294967295L) >= (4294967295L & i11)) {
            iArr2[12] = i13 - i11;
            return;
        }
        int i14 = iArr2[13];
        if (i14 == 0) {
            throw new IllegalStateException("attempt to reduce counter past zero.");
        }
        iArr2[13] = i14 - 1;
        iArr2[12] = i13 - i11;
    }

    @Override
    public void t(byte[] bArr, byte[] bArr2) {
        if (bArr != null) {
            if (bArr.length != 16 && bArr.length != 32) {
                throw new IllegalArgumentException(b() + " requires 128 bit or 256 bit key");
            }
            n(bArr.length, this.f14032c, 0);
            org.bouncycastle.util.p.t(bArr, 0, this.f14032c, 4, 4);
            org.bouncycastle.util.p.t(bArr, bArr.length - 16, this.f14032c, 8, 4);
        }
        org.bouncycastle.util.p.t(bArr2, 0, this.f14032c, 14, 2);
    }

    public C2792q(int i10) {
        super(i10);
    }
}
