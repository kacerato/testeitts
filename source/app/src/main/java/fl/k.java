package fl;

import sk.C15316b;

public abstract class k {

    public static class a extends k {

        public long[] f86534a = new long[12];

        @Override
        public void H(l lVar, l lVar2, l lVar3) {
            k.B(lVar.f86543a, lVar2.f86543a, lVar2.f86544b, lVar3.f86543a, lVar3.f86544b, this.f86534a);
        }

        @Override
        public void I(l lVar, l lVar2, l lVar3) {
            k.C(lVar.f86543a, lVar2.f86543a, lVar2.f86544b, lVar3.f86543a, lVar3.f86544b, this.f86534a);
        }

        @Override
        public void J(long[] jArr, long[] jArr2, int i10) {
            k.d(jArr, 8, jArr2, i10 + 4);
            k.e(jArr, 0, jArr2, i10);
        }
    }

    public static class b extends k {

        public long[] f86535a = new long[13];

        public long[] f86536b = new long[4];

        @Override
        public void H(l lVar, l lVar2, l lVar3) {
            k.D(lVar.f86543a, lVar2.f86543a, lVar2.f86544b, lVar3.f86543a, lVar3.f86544b, this.f86535a);
        }

        @Override
        public void I(l lVar, l lVar2, l lVar3) {
            k.E(lVar.f86543a, lVar2.f86543a, lVar2.f86544b, lVar3.f86543a, lVar3.f86544b, this.f86535a, this.f86536b);
        }

        @Override
        public void J(long[] jArr, long[] jArr2, int i10) {
            jArr[12] = k.f(jArr2[i10 + 6]);
            k.d(jArr, 8, jArr2, i10 + 4);
            k.e(jArr, 0, jArr2, i10);
        }
    }

    public static class c extends k {

        public long[] f86537a = new long[5];

        public long[] f86538b = new long[5];

        public long[] f86539c = new long[17];

        public long[] f86540d = new long[4];

        @Override
        public void H(l lVar, l lVar2, l lVar3) {
            k.F(lVar.f86543a, lVar2.f86543a, lVar2.f86544b, lVar3.f86543a, lVar3.f86544b, this.f86537a, this.f86538b, this.f86539c);
        }

        @Override
        public void I(l lVar, l lVar2, l lVar3) {
            k.G(lVar.f86543a, lVar2.f86543a, lVar2.f86544b, lVar3.f86543a, lVar3.f86544b, this.f86537a, this.f86538b, this.f86539c, this.f86540d);
        }

        @Override
        public void J(long[] jArr, long[] jArr2, int i10) {
            jArr[16] = k.f(jArr2[i10 + 8]);
            k.e(jArr, 8, jArr2, i10 + 4);
            k.e(jArr, 0, jArr2, i10);
        }
    }

    public static class d extends k {

        public long[] f86541a = new long[6];

        @Override
        public void H(l lVar, l lVar2, l lVar3) {
            k.x(lVar.f86543a, 0, lVar2.f86543a, lVar2.f86544b, lVar3.f86543a, lVar3.f86544b);
        }

        @Override
        public void I(l lVar, l lVar2, l lVar3) {
            k.y(lVar.f86543a, lVar.f86544b, lVar2.f86543a, lVar2.f86544b, lVar3.f86543a, lVar3.f86544b, this.f86541a);
        }

        @Override
        public void J(long[] jArr, long[] jArr2, int i10) {
            k.h(jArr, 4, jArr2[i10 + 2]);
            k.d(jArr, 0, jArr2, i10);
        }
    }

    public static class e extends k {

        public long[] f86542a = new long[9];

        @Override
        public void H(l lVar, l lVar2, l lVar3) {
            k.z(lVar.f86543a, 0, lVar2.f86543a, lVar2.f86544b, lVar3.f86543a, lVar3.f86544b, this.f86542a);
        }

        @Override
        public void I(l lVar, l lVar2, l lVar3) {
            k.A(lVar.f86543a, lVar.f86544b, lVar2.f86543a, lVar2.f86544b, lVar3.f86543a, lVar3.f86544b, this.f86542a);
        }

        @Override
        public void J(long[] jArr, long[] jArr2, int i10) {
            jArr[8] = k.f(jArr2[i10 + 4]);
            k.e(jArr, 0, jArr2, i10);
        }
    }

    public static void A(long[] jArr, int i10, long[] jArr2, int i11, long[] jArr3, int i12, long[] jArr4) {
        int i13 = i11 + 1;
        int i14 = i12 + 1;
        u(jArr4, 0, jArr2[i11], jArr2[i13], jArr3[i12], jArr3[i14]);
        int i15 = i11 + 2;
        int i16 = i12 + 2;
        b(jArr4, 4, jArr2[i15], jArr3[i16]);
        int i17 = i11 + 3;
        int i18 = i12 + 3;
        b(jArr4, 7, jArr2[i17], jArr3[i18]);
        jArr4[7] = jArr4[7] ^ jArr4[5];
        int i19 = i11 + 4;
        int i20 = i12 + 4;
        long a10 = jArr4[8] ^ a(jArr2[i19], jArr3[i20]);
        jArr4[8] = a10;
        long j10 = jArr4[7];
        long j11 = jArr4[4];
        long j12 = j10 ^ j11;
        jArr4[5] = j12;
        long j13 = a10 ^ j10;
        jArr4[7] = j13;
        jArr4[6] = j13 ^ j11;
        jArr4[4] = jArr4[2] ^ j11;
        jArr4[5] = j12 ^ jArr4[3];
        jArr[i10] = jArr[i10] ^ jArr4[0];
        int i21 = i10 + 1;
        jArr[i21] = jArr[i21] ^ jArr4[1];
        int i22 = i10 + 2;
        jArr[i22] = jArr[i22] ^ (jArr4[4] ^ jArr4[0]);
        c(jArr4, 5, jArr2[i17] ^ jArr2[i15], jArr3[i18] ^ jArr3[i16]);
        c(jArr4, 7, jArr2[i19] ^ jArr2[i17], jArr3[i20] ^ jArr3[i18]);
        c(jArr4, 6, jArr2[i19] ^ jArr2[i15], jArr3[i20] ^ jArr3[i16]);
        int i23 = i10 + 3;
        jArr[i23] = jArr[i23] ^ (jArr4[5] ^ jArr4[1]);
        int i24 = i10 + 4;
        jArr[i24] = jArr[i24] ^ (jArr4[4] ^ jArr4[6]);
        int i25 = i10 + 5;
        jArr[i25] = jArr[i25] ^ (jArr4[5] ^ jArr4[7]);
        int i26 = i10 + 6;
        jArr[i26] = jArr[i26] ^ (jArr4[6] ^ jArr4[8]);
        int i27 = i10 + 7;
        jArr[i27] = jArr[i27] ^ jArr4[7];
        int i28 = i10 + 8;
        jArr[i28] = jArr[i28] ^ jArr4[8];
        long j14 = jArr2[i11] ^ jArr2[i15];
        long j15 = jArr2[i13] ^ jArr2[i17];
        long j16 = jArr3[i12] ^ jArr3[i16];
        long j17 = jArr3[i14] ^ jArr3[i18];
        b(jArr4, 0, j14, j16);
        b(jArr4, 2, j15, j17);
        jArr4[2] = jArr4[2] ^ jArr4[1];
        jArr4[3] = jArr4[3] ^ a(jArr2[i19], jArr3[i20]);
        jArr[i22] = jArr[i22] ^ jArr4[0];
        jArr[i23] = jArr[i23] ^ (jArr4[2] ^ jArr4[0]);
        long j18 = jArr4[2] ^ jArr4[3];
        jArr4[2] = j18;
        jArr[i24] = (j18 ^ jArr4[0]) ^ jArr[i24];
        jArr[i25] = jArr[i25] ^ jArr4[2];
        jArr[i26] = jArr[i26] ^ jArr4[3];
        c(jArr, i23, j14 ^ j15, j16 ^ j17);
        c(jArr, i25, j15 ^ jArr2[i19], j17 ^ jArr3[i20]);
        c(jArr, i24, j14 ^ jArr2[i19], jArr3[i20] ^ j16);
    }

    public static void B(long[] jArr, long[] jArr2, int i10, long[] jArr3, int i11, long[] jArr4) {
        x(jArr, 0, jArr2, i10, jArr3, i11);
        int i12 = i10 + 3;
        int i13 = i11 + 3;
        x(jArr, 6, jArr2, i12, jArr3, i13);
        long j10 = jArr2[i10] ^ jArr2[i12];
        long j11 = jArr2[i10 + 1] ^ jArr2[i10 + 4];
        long j12 = jArr2[i10 + 2] ^ jArr2[i10 + 5];
        long j13 = jArr3[i11] ^ jArr3[i13];
        long j14 = jArr3[i11 + 1] ^ jArr3[i11 + 4];
        long j15 = jArr3[i11 + 2] ^ jArr3[i11 + 5];
        jArr[6] = jArr[6] ^ jArr[3];
        jArr[7] = jArr[7] ^ jArr[4];
        jArr[8] = jArr[8] ^ jArr[5];
        b(jArr4, 0, j10, j13);
        b(jArr4, 4, j12, j15);
        b(jArr4, 2, j11, j14);
        long j16 = jArr[6];
        long j17 = jArr[0] ^ j16;
        long j18 = jArr4[0];
        jArr[3] = j17 ^ j18;
        long j19 = jArr4[1] ^ jArr4[2];
        jArr4[1] = j19;
        long j20 = j18 ^ j19;
        jArr4[0] = j20;
        long j21 = jArr4[3] ^ jArr4[4];
        jArr4[3] = j21;
        long j22 = j21 ^ jArr4[5];
        jArr4[4] = j22;
        long j23 = jArr[8];
        jArr[5] = ((j23 ^ jArr[2]) ^ j21) ^ j20;
        jArr[6] = j16 ^ ((jArr[9] ^ j19) ^ j22);
        long j24 = jArr[7];
        jArr[4] = (jArr[1] ^ j24) ^ j20;
        jArr[7] = j24 ^ (jArr[10] ^ jArr4[4]);
        jArr[8] = j23 ^ (jArr[11] ^ jArr4[5]);
        c(jArr, 4, j10 ^ j11, j13 ^ j14);
        c(jArr, 6, j11 ^ j12, j14 ^ j15);
        c(jArr, 5, j10 ^ j12, j13 ^ j15);
    }

    public static void C(long[] jArr, long[] jArr2, int i10, long[] jArr3, int i11, long[] jArr4) {
        x(jArr4, 0, jArr2, i10, jArr3, i11);
        int i12 = i10 + 3;
        int i13 = i11 + 3;
        x(jArr4, 6, jArr2, i12, jArr3, i13);
        long j10 = jArr2[i10] ^ jArr2[i12];
        long j11 = jArr2[i10 + 1] ^ jArr2[i10 + 4];
        long j12 = jArr2[i10 + 2] ^ jArr2[i10 + 5];
        long j13 = jArr3[i11] ^ jArr3[i13];
        long j14 = jArr3[i11 + 1] ^ jArr3[i11 + 4];
        long j15 = jArr3[i11 + 2] ^ jArr3[i11 + 5];
        long j16 = jArr4[6] ^ jArr4[3];
        jArr4[6] = j16;
        long j17 = jArr4[7] ^ jArr4[4];
        jArr4[7] = j17;
        long j18 = jArr4[8] ^ jArr4[5];
        jArr4[8] = j18;
        jArr[0] = jArr[0] ^ jArr4[0];
        jArr[1] = jArr[1] ^ jArr4[1];
        jArr[2] = jArr[2] ^ jArr4[2];
        jArr[3] = jArr[3] ^ (j16 ^ jArr4[0]);
        jArr[5] = jArr[5] ^ (j18 ^ jArr4[2]);
        long j19 = jArr[6];
        long j20 = jArr4[9];
        jArr[6] = j19 ^ (j16 ^ j20);
        jArr[4] = jArr[4] ^ (j17 ^ jArr4[1]);
        long j21 = jArr[7];
        long j22 = jArr4[10];
        jArr[7] = j21 ^ (j17 ^ j22);
        long j23 = jArr[8];
        long j24 = jArr4[11];
        jArr[8] = j23 ^ (j18 ^ j24);
        jArr[9] = jArr[9] ^ j20;
        jArr[10] = jArr[10] ^ j22;
        jArr[11] = jArr[11] ^ j24;
        b(jArr4, 0, j10, j13);
        b(jArr4, 4, j12, j15);
        b(jArr4, 2, j11, j14);
        long j25 = jArr[3];
        long j26 = jArr4[0];
        jArr[3] = j25 ^ j26;
        long j27 = jArr4[1] ^ jArr4[2];
        jArr4[1] = j27;
        long j28 = j26 ^ j27;
        jArr4[0] = j28;
        long j29 = jArr4[3] ^ jArr4[4];
        jArr4[3] = j29;
        long j30 = j29 ^ jArr4[5];
        jArr4[4] = j30;
        jArr[5] = jArr[5] ^ (j29 ^ j28);
        jArr[6] = (j27 ^ j30) ^ jArr[6];
        jArr[4] = jArr[4] ^ j28;
        jArr[7] = jArr[7] ^ jArr4[4];
        jArr[8] = jArr[8] ^ jArr4[5];
        c(jArr, 4, j10 ^ j11, j13 ^ j14);
        c(jArr, 6, j11 ^ j12, j14 ^ j15);
        c(jArr, 5, j10 ^ j12, j13 ^ j15);
    }

    public static void D(long[] jArr, long[] jArr2, int i10, long[] jArr3, int i11, long[] jArr4) {
        x(jArr, 0, jArr2, i10, jArr3, i11);
        int i12 = i10 + 3;
        int i13 = i10 + 4;
        int i14 = i11 + 3;
        int i15 = i11 + 4;
        u(jArr, 6, jArr2[i12], jArr2[i13], jArr3[i14], jArr3[i15]);
        int i16 = i10 + 5;
        int i17 = i11 + 5;
        b(jArr, 10, jArr2[i16], jArr3[i17]);
        int i18 = i10 + 6;
        int i19 = i11 + 6;
        long a10 = a(jArr2[i18], jArr3[i19]) ^ jArr[11];
        jArr[12] = a10;
        jArr[11] = a10 ^ jArr[10];
        c(jArr, 11, jArr2[i18] ^ jArr2[i16], jArr3[i19] ^ jArr3[i17]);
        long j10 = jArr[8] ^ jArr[10];
        jArr[8] = j10;
        long j11 = jArr[11] ^ jArr[9];
        jArr[11] = j11;
        jArr[10] = jArr[12] ^ j10;
        jArr[8] = j10 ^ jArr[6];
        jArr[9] = jArr[7] ^ j11;
        w(jArr, 8, jArr2[i16] ^ jArr2[i12], jArr2[i18] ^ jArr2[i13], jArr3[i17] ^ jArr3[i14], jArr3[i19] ^ jArr3[i15], jArr4);
        long j12 = jArr2[i10] ^ jArr2[i12];
        long j13 = jArr2[i10 + 1] ^ jArr2[i13];
        long j14 = jArr2[i10 + 2] ^ jArr2[i16];
        long j15 = jArr2[i18];
        long j16 = jArr3[i11] ^ jArr3[i14];
        long j17 = jArr3[i11 + 1] ^ jArr3[i15];
        long j18 = jArr3[i11 + 2] ^ jArr3[i17];
        long j19 = jArr3[i19];
        jArr[6] = jArr[6] ^ jArr[3];
        jArr[7] = jArr[7] ^ jArr[4];
        jArr[8] = jArr[8] ^ jArr[5];
        u(jArr4, 0, j12, j13, j16, j17);
        b(jArr4, 4, j14, j18);
        long a11 = a(j15, j19) ^ jArr4[5];
        jArr4[6] = a11;
        jArr4[5] = a11 ^ jArr4[4];
        c(jArr4, 5, j14 ^ j15, j18 ^ j19);
        long j20 = jArr[6];
        long j21 = jArr[0] ^ j20;
        long j22 = jArr4[0];
        jArr[3] = j21 ^ j22;
        long j23 = jArr[7];
        long j24 = j23 ^ jArr[1];
        long j25 = jArr4[1];
        jArr[4] = j24 ^ j25;
        long j26 = jArr4[2] ^ jArr4[4];
        jArr4[2] = j26;
        long j27 = jArr4[3] ^ jArr4[5];
        jArr4[3] = j27;
        long j28 = jArr[8];
        jArr[5] = ((j28 ^ jArr[2]) ^ j26) ^ j22;
        long j29 = jArr[9];
        jArr[6] = j20 ^ ((j29 ^ j27) ^ j25);
        long j30 = jArr[10] ^ j26;
        long j31 = jArr4[6];
        jArr[7] = (j30 ^ j31) ^ j23;
        jArr[8] = j28 ^ (jArr[11] ^ j27);
        jArr[9] = (jArr[12] ^ j31) ^ j29;
        w(jArr, 5, j12 ^ j14, j13 ^ j15, j16 ^ j18, j17 ^ j19, jArr4);
    }

    public static void E(long[] jArr, long[] jArr2, int i10, long[] jArr3, int i11, long[] jArr4, long[] jArr5) {
        x(jArr4, 0, jArr2, i10, jArr3, i11);
        int i12 = i10 + 3;
        int i13 = i10 + 4;
        int i14 = i11 + 3;
        int i15 = i11 + 4;
        u(jArr4, 6, jArr2[i12], jArr2[i13], jArr3[i14], jArr3[i15]);
        int i16 = i10 + 5;
        int i17 = i11 + 5;
        b(jArr4, 10, jArr2[i16], jArr3[i17]);
        int i18 = i10 + 6;
        int i19 = i11 + 6;
        long a10 = a(jArr2[i18], jArr3[i19]) ^ jArr4[11];
        jArr4[12] = a10;
        jArr4[11] = a10 ^ jArr4[10];
        c(jArr4, 11, jArr2[i18] ^ jArr2[i16], jArr3[i19] ^ jArr3[i17]);
        long j10 = jArr4[8] ^ jArr4[10];
        jArr4[8] = j10;
        long j11 = jArr4[11] ^ jArr4[9];
        jArr4[11] = j11;
        jArr4[10] = jArr4[12] ^ j10;
        long j12 = jArr4[6];
        long j13 = j10 ^ j12;
        jArr4[8] = j13;
        long j14 = jArr4[7];
        jArr4[9] = j11 ^ j14;
        jArr4[6] = jArr4[3] ^ j12;
        jArr4[7] = jArr4[4] ^ j14;
        jArr4[8] = j13 ^ jArr4[5];
        w(jArr4, 8, jArr2[i16] ^ jArr2[i12], jArr2[i18] ^ jArr2[i13], jArr3[i17] ^ jArr3[i14], jArr3[i19] ^ jArr3[i15], jArr5);
        jArr[0] = jArr[0] ^ jArr4[0];
        jArr[1] = jArr[1] ^ jArr4[1];
        jArr[2] = jArr[2] ^ jArr4[2];
        long j15 = jArr[3];
        long j16 = jArr4[6];
        jArr[3] = j15 ^ (jArr4[0] ^ j16);
        long j17 = jArr[4];
        long j18 = jArr4[7];
        jArr[4] = j17 ^ (jArr4[1] ^ j18);
        long j19 = jArr[5];
        long j20 = jArr4[8];
        jArr[5] = j19 ^ (jArr4[2] ^ j20);
        long j21 = jArr[6];
        long j22 = jArr4[9];
        jArr[6] = j21 ^ (j16 ^ j22);
        long j23 = jArr[7];
        long j24 = jArr4[10];
        jArr[7] = j23 ^ (j18 ^ j24);
        long j25 = jArr[8];
        long j26 = jArr4[11];
        jArr[8] = j25 ^ (j20 ^ j26);
        long j27 = jArr[9];
        long j28 = jArr4[12];
        jArr[9] = j27 ^ (j22 ^ j28);
        jArr[10] = jArr[10] ^ j24;
        jArr[11] = jArr[11] ^ j26;
        jArr[12] = jArr[12] ^ j28;
        long j29 = jArr2[i10] ^ jArr2[i12];
        long j30 = jArr2[i10 + 1] ^ jArr2[i13];
        long j31 = jArr2[i10 + 2] ^ jArr2[i16];
        long j32 = jArr2[i18];
        long j33 = jArr3[i11] ^ jArr3[i14];
        long j34 = jArr3[i11 + 1] ^ jArr3[i15];
        long j35 = jArr3[i11 + 2] ^ jArr3[i17];
        long j36 = jArr3[i19];
        u(jArr4, 0, j29, j30, j33, j34);
        b(jArr4, 4, j31, j35);
        long a11 = a(j32, j36) ^ jArr4[5];
        jArr4[6] = a11;
        jArr4[5] = a11 ^ jArr4[4];
        c(jArr4, 5, j31 ^ j32, j35 ^ j36);
        long j37 = jArr[3];
        long j38 = jArr4[0];
        jArr[3] = j37 ^ j38;
        long j39 = jArr[4];
        long j40 = jArr4[1];
        jArr[4] = j39 ^ j40;
        long j41 = jArr4[2] ^ jArr4[4];
        jArr4[2] = j41;
        long j42 = jArr4[3] ^ jArr4[5];
        jArr4[3] = j42;
        jArr[5] = jArr[5] ^ (j38 ^ j41);
        jArr[6] = jArr[6] ^ (j40 ^ j42);
        long j43 = jArr[7];
        long j44 = jArr4[6];
        jArr[7] = (j41 ^ j44) ^ j43;
        jArr[8] = jArr[8] ^ j42;
        jArr[9] = jArr[9] ^ j44;
        w(jArr, 5, j29 ^ j31, j30 ^ j32, j33 ^ j35, j34 ^ j36, jArr4);
    }

    public static void F(long[] jArr, long[] jArr2, int i10, long[] jArr3, int i11, long[] jArr4, long[] jArr5, long[] jArr6) {
        int i12 = i10 + 1;
        int i13 = i11 + 1;
        u(jArr, 0, jArr2[i10], jArr2[i12], jArr3[i11], jArr3[i13]);
        int i14 = i10 + 2;
        int i15 = i10 + 3;
        int i16 = i11 + 2;
        int i17 = i11 + 3;
        u(jArr, 4, jArr2[i14], jArr2[i15], jArr3[i16], jArr3[i17]);
        long j10 = jArr[4] ^ jArr[2];
        jArr[4] = j10;
        long j11 = jArr[5] ^ jArr[3];
        jArr[5] = j11;
        jArr[2] = jArr[0] ^ j10;
        jArr[3] = jArr[1] ^ j11;
        jArr[4] = j10 ^ jArr[6];
        jArr[5] = jArr[7] ^ j11;
        w(jArr, 2, jArr2[i14] ^ jArr2[i10], jArr2[i15] ^ jArr2[i12], jArr3[i16] ^ jArr3[i11], jArr3[i17] ^ jArr3[i13], jArr6);
        int i18 = i10 + 4;
        int i19 = i11 + 4;
        z(jArr, 8, jArr2, i18, jArr3, i19, jArr6);
        long j12 = jArr[8] ^ jArr[4];
        jArr[8] = j12;
        long j13 = jArr[9] ^ jArr[5];
        jArr[9] = j13;
        long j14 = jArr[10] ^ jArr[6];
        jArr[10] = j14;
        long j15 = jArr[11] ^ jArr[7];
        jArr[11] = j15;
        jArr[4] = j12 ^ jArr[0];
        jArr[5] = j13 ^ jArr[1];
        jArr[6] = j14 ^ jArr[2];
        jArr[7] = j15 ^ jArr[3];
        long j16 = jArr[12];
        jArr[8] = j12 ^ j16;
        jArr[9] = jArr[13] ^ j13;
        jArr[10] = jArr[14] ^ j14;
        jArr[11] = j15 ^ jArr[15];
        jArr[12] = j16 ^ jArr[16];
        jArr4[0] = jArr2[i10] ^ jArr2[i18];
        jArr4[1] = jArr2[i12] ^ jArr2[i10 + 5];
        jArr4[2] = jArr2[i14] ^ jArr2[i10 + 6];
        jArr4[3] = jArr2[i15] ^ jArr2[i10 + 7];
        jArr4[4] = jArr2[i10 + 8];
        jArr5[0] = jArr3[i11] ^ jArr3[i19];
        jArr5[1] = jArr3[i13] ^ jArr3[i11 + 5];
        jArr5[2] = jArr3[i16] ^ jArr3[i11 + 6];
        jArr5[3] = jArr3[i17] ^ jArr3[i11 + 7];
        jArr5[4] = jArr3[i11 + 8];
        A(jArr, 4, jArr4, 0, jArr5, 0, jArr6);
    }

    public static void G(long[] jArr, long[] jArr2, int i10, long[] jArr3, int i11, long[] jArr4, long[] jArr5, long[] jArr6, long[] jArr7) {
        int i12 = i10 + 1;
        int i13 = i11 + 1;
        u(jArr6, 0, jArr2[i10], jArr2[i12], jArr3[i11], jArr3[i13]);
        int i14 = i10 + 2;
        int i15 = i10 + 3;
        int i16 = i11 + 2;
        int i17 = i11 + 3;
        u(jArr6, 4, jArr2[i14], jArr2[i15], jArr3[i16], jArr3[i17]);
        long j10 = jArr6[4] ^ jArr6[2];
        jArr6[4] = j10;
        long j11 = jArr6[5] ^ jArr6[3];
        jArr6[5] = j11;
        jArr6[2] = jArr6[0] ^ j10;
        jArr6[3] = jArr6[1] ^ j11;
        jArr6[4] = j10 ^ jArr6[6];
        jArr6[5] = jArr6[7] ^ j11;
        w(jArr6, 2, jArr2[i14] ^ jArr2[i10], jArr2[i15] ^ jArr2[i12], jArr3[i16] ^ jArr3[i11], jArr3[i17] ^ jArr3[i13], jArr7);
        int i18 = i10 + 4;
        int i19 = i11 + 4;
        z(jArr6, 8, jArr2, i18, jArr3, i19, jArr7);
        long j12 = jArr6[8] ^ jArr6[4];
        jArr6[8] = j12;
        long j13 = jArr6[9] ^ jArr6[5];
        jArr6[9] = j13;
        long j14 = jArr6[10] ^ jArr6[6];
        jArr6[10] = j14;
        long j15 = jArr6[11] ^ jArr6[7];
        jArr6[11] = j15;
        jArr[0] = jArr[0] ^ jArr6[0];
        jArr[1] = jArr[1] ^ jArr6[1];
        jArr[2] = jArr[2] ^ jArr6[2];
        jArr[3] = jArr[3] ^ jArr6[3];
        jArr[4] = jArr[4] ^ (j12 ^ jArr6[0]);
        jArr[5] = jArr[5] ^ (j13 ^ jArr6[1]);
        jArr[6] = jArr[6] ^ (j14 ^ jArr6[2]);
        jArr[7] = jArr[7] ^ (j15 ^ jArr6[3]);
        long j16 = jArr[8];
        long j17 = jArr6[12];
        jArr[8] = j16 ^ (j12 ^ j17);
        long j18 = jArr[9];
        long j19 = jArr6[13];
        jArr[9] = j18 ^ (j13 ^ j19);
        long j20 = jArr[10];
        long j21 = jArr6[14];
        jArr[10] = j20 ^ (j14 ^ j21);
        long j22 = jArr[11];
        long j23 = jArr6[15];
        jArr[11] = j22 ^ (j15 ^ j23);
        long j24 = jArr[12];
        long j25 = jArr6[16];
        jArr[12] = j24 ^ (j17 ^ j25);
        jArr[13] = jArr[13] ^ j19;
        jArr[14] = jArr[14] ^ j21;
        jArr[15] = jArr[15] ^ j23;
        jArr[16] = jArr[16] ^ j25;
        jArr4[0] = jArr2[i10] ^ jArr2[i18];
        jArr4[1] = jArr2[i12] ^ jArr2[i10 + 5];
        jArr4[2] = jArr2[i14] ^ jArr2[i10 + 6];
        jArr4[3] = jArr2[i15] ^ jArr2[i10 + 7];
        jArr4[4] = jArr2[i10 + 8];
        jArr5[0] = jArr3[i11] ^ jArr3[i19];
        jArr5[1] = jArr3[i13] ^ jArr3[i11 + 5];
        jArr5[2] = jArr3[i16] ^ jArr3[i11 + 6];
        jArr5[3] = jArr3[i17] ^ jArr3[i11 + 7];
        jArr5[4] = jArr3[i11 + 8];
        A(jArr, 4, jArr4, 0, jArr5, 0, jArr6);
    }

    public static long a(long j10, long j11) {
        return ((j10 & (-((j11 >>> 31) & 1))) << 31) ^ ((((((((((((((((((((((((((((((((-(j11 & 1)) & j10) ^ (((-((j11 >>> 1) & 1)) & j10) << 1)) ^ (((-((j11 >>> 2) & 1)) & j10) << 2)) ^ (((-((j11 >>> 3) & 1)) & j10) << 3)) ^ (((-((j11 >>> 4) & 1)) & j10) << 4)) ^ (((-((j11 >>> 5) & 1)) & j10) << 5)) ^ (((-((j11 >>> 6) & 1)) & j10) << 6)) ^ (((-((j11 >>> 7) & 1)) & j10) << 7)) ^ (((-((j11 >>> 8) & 1)) & j10) << 8)) ^ (((-((j11 >>> 9) & 1)) & j10) << 9)) ^ (((-((j11 >>> 10) & 1)) & j10) << 10)) ^ (((-((j11 >>> 11) & 1)) & j10) << 11)) ^ (((-((j11 >>> 12) & 1)) & j10) << 12)) ^ (((-((j11 >>> 13) & 1)) & j10) << 13)) ^ (((-((j11 >>> 14) & 1)) & j10) << 14)) ^ (((-((j11 >>> 15) & 1)) & j10) << 15)) ^ (((-((j11 >>> 16) & 1)) & j10) << 16)) ^ (((-((j11 >>> 17) & 1)) & j10) << 17)) ^ (((-((j11 >>> 18) & 1)) & j10) << 18)) ^ (((-((j11 >>> 19) & 1)) & j10) << 19)) ^ (((-((j11 >>> 20) & 1)) & j10) << 20)) ^ (((-((j11 >>> 21) & 1)) & j10) << 21)) ^ (((-((j11 >>> 22) & 1)) & j10) << 22)) ^ (((-((j11 >>> 23) & 1)) & j10) << 23)) ^ (((-((j11 >>> 24) & 1)) & j10) << 24)) ^ (((-((j11 >>> 25) & 1)) & j10) << 25)) ^ (((-((j11 >>> 26) & 1)) & j10) << 26)) ^ (((-((j11 >>> 27) & 1)) & j10) << 27)) ^ (((-((j11 >>> 28) & 1)) & j10) << 28)) ^ (((-((j11 >>> 29) & 1)) & j10) << 29)) ^ (((-((j11 >>> 30) & 1)) & j10) << 30));
    }

    public static void b(long[] jArr, int i10, long j10, long j11) {
        long j12 = (-(j11 >>> 63)) & j10;
        long j13 = (-((j11 >>> 1) & 1)) & j10;
        long j14 = (((-(j11 & 1)) & j10) ^ (j12 << 63)) ^ (j13 << 1);
        long j15 = (j12 >>> 1) ^ (j13 >>> 63);
        long j16 = (-((j11 >>> 2) & 1)) & j10;
        long j17 = (-((j11 >>> 3) & 1)) & j10;
        long j18 = (-((j11 >>> 4) & 1)) & j10;
        long j19 = (-((j11 >>> 5) & 1)) & j10;
        long j20 = (((j14 ^ (j16 << 2)) ^ (j17 << 3)) ^ (j18 << 4)) ^ (j19 << 5);
        long j21 = (((j15 ^ (j16 >>> 62)) ^ (j17 >>> 61)) ^ (j18 >>> 60)) ^ (j19 >>> 59);
        long j22 = (-((j11 >>> 6) & 1)) & j10;
        long j23 = (-((j11 >>> 7) & 1)) & j10;
        long j24 = (-((j11 >>> 8) & 1)) & j10;
        long j25 = (-((j11 >>> 9) & 1)) & j10;
        long j26 = (-((j11 >>> 10) & 1)) & j10;
        long j27 = (-((j11 >>> 11) & 1)) & j10;
        long j28 = (((((j20 ^ (j22 << 6)) ^ (j23 << 7)) ^ (j24 << 8)) ^ (j25 << 9)) ^ (j26 << 10)) ^ (j27 << 11);
        long j29 = (((((j21 ^ (j22 >>> 58)) ^ (j23 >>> 57)) ^ (j24 >>> 56)) ^ (j25 >>> 55)) ^ (j26 >>> 54)) ^ (j27 >>> 53);
        long j30 = (-((j11 >>> 12) & 1)) & j10;
        long j31 = j28 ^ (j30 << 12);
        long j32 = j29 ^ (j30 >>> 52);
        long j33 = (-((j11 >>> 13) & 1)) & j10;
        long j34 = j31 ^ (j33 << 13);
        long j35 = j32 ^ (j33 >>> 51);
        long j36 = (-((j11 >>> 14) & 1)) & j10;
        long j37 = j34 ^ (j36 << 14);
        long j38 = j35 ^ (j36 >>> 50);
        long j39 = (-((j11 >>> 15) & 1)) & j10;
        long j40 = j37 ^ (j39 << 15);
        long j41 = j38 ^ (j39 >>> 49);
        long j42 = (-((j11 >>> 16) & 1)) & j10;
        long j43 = j40 ^ (j42 << 16);
        long j44 = j41 ^ (j42 >>> 48);
        long j45 = (-((j11 >>> 17) & 1)) & j10;
        long j46 = j43 ^ (j45 << 17);
        long j47 = j44 ^ (j45 >>> 47);
        long j48 = (-((j11 >>> 18) & 1)) & j10;
        long j49 = j46 ^ (j48 << 18);
        long j50 = j47 ^ (j48 >>> 46);
        long j51 = (-((j11 >>> 19) & 1)) & j10;
        long j52 = j49 ^ (j51 << 19);
        long j53 = j50 ^ (j51 >>> 45);
        long j54 = (-((j11 >>> 20) & 1)) & j10;
        long j55 = j52 ^ (j54 << 20);
        long j56 = j53 ^ (j54 >>> 44);
        long j57 = (-((j11 >>> 21) & 1)) & j10;
        long j58 = j55 ^ (j57 << 21);
        long j59 = j56 ^ (j57 >>> 43);
        long j60 = (-((j11 >>> 22) & 1)) & j10;
        long j61 = j58 ^ (j60 << 22);
        long j62 = j59 ^ (j60 >>> 42);
        long j63 = (-((j11 >>> 23) & 1)) & j10;
        long j64 = j61 ^ (j63 << 23);
        long j65 = j62 ^ (j63 >>> 41);
        long j66 = (-((j11 >>> 24) & 1)) & j10;
        long j67 = j64 ^ (j66 << 24);
        long j68 = j65 ^ (j66 >>> 40);
        long j69 = (-((j11 >>> 25) & 1)) & j10;
        long j70 = j67 ^ (j69 << 25);
        long j71 = j68 ^ (j69 >>> 39);
        long j72 = (-((j11 >>> 26) & 1)) & j10;
        long j73 = j70 ^ (j72 << 26);
        long j74 = j71 ^ (j72 >>> 38);
        long j75 = (-((j11 >>> 27) & 1)) & j10;
        long j76 = j73 ^ (j75 << 27);
        long j77 = j74 ^ (j75 >>> 37);
        long j78 = (-((j11 >>> 28) & 1)) & j10;
        long j79 = j76 ^ (j78 << 28);
        long j80 = j77 ^ (j78 >>> 36);
        long j81 = (-((j11 >>> 29) & 1)) & j10;
        long j82 = j79 ^ (j81 << 29);
        long j83 = j80 ^ (j81 >>> 35);
        long j84 = (-((j11 >>> 30) & 1)) & j10;
        long j85 = j82 ^ (j84 << 30);
        long j86 = j83 ^ (j84 >>> 34);
        long j87 = (-((j11 >>> 31) & 1)) & j10;
        long j88 = j85 ^ (j87 << 31);
        long j89 = j86 ^ (j87 >>> 33);
        long j90 = (-((j11 >>> 32) & 1)) & j10;
        long j91 = j88 ^ (j90 << 32);
        long j92 = j89 ^ (j90 >>> 32);
        long j93 = (-((j11 >>> 33) & 1)) & j10;
        long j94 = j91 ^ (j93 << 33);
        long j95 = j92 ^ (j93 >>> 31);
        long j96 = (-((j11 >>> 34) & 1)) & j10;
        long j97 = j94 ^ (j96 << 34);
        long j98 = j95 ^ (j96 >>> 30);
        long j99 = (-((j11 >>> 35) & 1)) & j10;
        long j100 = j97 ^ (j99 << 35);
        long j101 = j98 ^ (j99 >>> 29);
        long j102 = (-((j11 >>> 36) & 1)) & j10;
        long j103 = j100 ^ (j102 << 36);
        long j104 = j101 ^ (j102 >>> 28);
        long j105 = (-((j11 >>> 37) & 1)) & j10;
        long j106 = j103 ^ (j105 << 37);
        long j107 = j104 ^ (j105 >>> 27);
        long j108 = (-((j11 >>> 38) & 1)) & j10;
        long j109 = j106 ^ (j108 << 38);
        long j110 = j107 ^ (j108 >>> 26);
        long j111 = (-((j11 >>> 39) & 1)) & j10;
        long j112 = j109 ^ (j111 << 39);
        long j113 = j110 ^ (j111 >>> 25);
        long j114 = (-((j11 >>> 40) & 1)) & j10;
        long j115 = j112 ^ (j114 << 40);
        long j116 = j113 ^ (j114 >>> 24);
        long j117 = (-((j11 >>> 41) & 1)) & j10;
        long j118 = j115 ^ (j117 << 41);
        long j119 = j116 ^ (j117 >>> 23);
        long j120 = (-((j11 >>> 42) & 1)) & j10;
        long j121 = j118 ^ (j120 << 42);
        long j122 = j119 ^ (j120 >>> 22);
        long j123 = (-((j11 >>> 43) & 1)) & j10;
        long j124 = j121 ^ (j123 << 43);
        long j125 = j122 ^ (j123 >>> 21);
        long j126 = (-((j11 >>> 44) & 1)) & j10;
        long j127 = j124 ^ (j126 << 44);
        long j128 = j125 ^ (j126 >>> 20);
        long j129 = (-((j11 >>> 45) & 1)) & j10;
        long j130 = j127 ^ (j129 << 45);
        long j131 = j128 ^ (j129 >>> 19);
        long j132 = (-((j11 >>> 46) & 1)) & j10;
        long j133 = j130 ^ (j132 << 46);
        long j134 = j131 ^ (j132 >>> 18);
        long j135 = (-((j11 >>> 47) & 1)) & j10;
        long j136 = j133 ^ (j135 << 47);
        long j137 = j134 ^ (j135 >>> 17);
        long j138 = (-((j11 >>> 48) & 1)) & j10;
        long j139 = j136 ^ (j138 << 48);
        long j140 = j137 ^ (j138 >>> 16);
        long j141 = (-((j11 >>> 49) & 1)) & j10;
        long j142 = j139 ^ (j141 << 49);
        long j143 = j140 ^ (j141 >>> 15);
        long j144 = (-((j11 >>> 50) & 1)) & j10;
        long j145 = j142 ^ (j144 << 50);
        long j146 = j143 ^ (j144 >>> 14);
        long j147 = (-((j11 >>> 51) & 1)) & j10;
        long j148 = j145 ^ (j147 << 51);
        long j149 = j146 ^ (j147 >>> 13);
        long j150 = (-((j11 >>> 52) & 1)) & j10;
        long j151 = j148 ^ (j150 << 52);
        long j152 = j149 ^ (j150 >>> 12);
        long j153 = (-((j11 >>> 53) & 1)) & j10;
        long j154 = j151 ^ (j153 << 53);
        long j155 = j152 ^ (j153 >>> 11);
        long j156 = (-((j11 >>> 54) & 1)) & j10;
        long j157 = j154 ^ (j156 << 54);
        long j158 = j155 ^ (j156 >>> 10);
        long j159 = (-((j11 >>> 55) & 1)) & j10;
        long j160 = j157 ^ (j159 << 55);
        long j161 = j158 ^ (j159 >>> 9);
        long j162 = (-((j11 >>> 56) & 1)) & j10;
        long j163 = j160 ^ (j162 << 56);
        long j164 = j161 ^ (j162 >>> 8);
        long j165 = (-((j11 >>> 57) & 1)) & j10;
        long j166 = j163 ^ (j165 << 57);
        long j167 = j164 ^ (j165 >>> 7);
        long j168 = (-((j11 >>> 58) & 1)) & j10;
        long j169 = (-((j11 >>> 59) & 1)) & j10;
        long j170 = (j166 ^ (j168 << 58)) ^ (j169 << 59);
        long j171 = (j167 ^ (j168 >>> 6)) ^ (j169 >>> 5);
        long j172 = (-((j11 >>> 60) & 1)) & j10;
        long j173 = j170 ^ (j172 << 60);
        long j174 = j171 ^ (j172 >>> 4);
        long j175 = (-((j11 >>> 61) & 1)) & j10;
        long j176 = (-(1 & (j11 >>> 62))) & j10;
        jArr[i10] = (j173 ^ (j175 << 61)) ^ (j176 << 62);
        jArr[i10 + 1] = (j176 >>> 2) ^ (j174 ^ (j175 >>> 3));
    }

    public static void c(long[] jArr, int i10, long j10, long j11) {
        long j12 = (-(j11 >>> 63)) & j10;
        long j13 = (-((j11 >>> 1) & 1)) & j10;
        long j14 = (((-(j11 & 1)) & j10) ^ (j12 << 63)) ^ (j13 << 1);
        long j15 = (j12 >>> 1) ^ (j13 >>> 63);
        long j16 = (-((j11 >>> 2) & 1)) & j10;
        long j17 = (-((j11 >>> 3) & 1)) & j10;
        long j18 = (-((j11 >>> 4) & 1)) & j10;
        long j19 = (-((j11 >>> 5) & 1)) & j10;
        long j20 = (((j14 ^ (j16 << 2)) ^ (j17 << 3)) ^ (j18 << 4)) ^ (j19 << 5);
        long j21 = (((j15 ^ (j16 >>> 62)) ^ (j17 >>> 61)) ^ (j18 >>> 60)) ^ (j19 >>> 59);
        long j22 = (-((j11 >>> 6) & 1)) & j10;
        long j23 = (-((j11 >>> 7) & 1)) & j10;
        long j24 = (-((j11 >>> 8) & 1)) & j10;
        long j25 = (-((j11 >>> 9) & 1)) & j10;
        long j26 = (-((j11 >>> 10) & 1)) & j10;
        long j27 = (-((j11 >>> 11) & 1)) & j10;
        long j28 = (((((j20 ^ (j22 << 6)) ^ (j23 << 7)) ^ (j24 << 8)) ^ (j25 << 9)) ^ (j26 << 10)) ^ (j27 << 11);
        long j29 = (((((j21 ^ (j22 >>> 58)) ^ (j23 >>> 57)) ^ (j24 >>> 56)) ^ (j25 >>> 55)) ^ (j26 >>> 54)) ^ (j27 >>> 53);
        long j30 = (-((j11 >>> 12) & 1)) & j10;
        long j31 = j28 ^ (j30 << 12);
        long j32 = j29 ^ (j30 >>> 52);
        long j33 = (-((j11 >>> 13) & 1)) & j10;
        long j34 = j31 ^ (j33 << 13);
        long j35 = j32 ^ (j33 >>> 51);
        long j36 = (-((j11 >>> 14) & 1)) & j10;
        long j37 = j34 ^ (j36 << 14);
        long j38 = j35 ^ (j36 >>> 50);
        long j39 = (-((j11 >>> 15) & 1)) & j10;
        long j40 = j37 ^ (j39 << 15);
        long j41 = j38 ^ (j39 >>> 49);
        long j42 = (-((j11 >>> 16) & 1)) & j10;
        long j43 = j40 ^ (j42 << 16);
        long j44 = j41 ^ (j42 >>> 48);
        long j45 = (-((j11 >>> 17) & 1)) & j10;
        long j46 = j43 ^ (j45 << 17);
        long j47 = j44 ^ (j45 >>> 47);
        long j48 = (-((j11 >>> 18) & 1)) & j10;
        long j49 = j46 ^ (j48 << 18);
        long j50 = j47 ^ (j48 >>> 46);
        long j51 = (-((j11 >>> 19) & 1)) & j10;
        long j52 = j49 ^ (j51 << 19);
        long j53 = j50 ^ (j51 >>> 45);
        long j54 = (-((j11 >>> 20) & 1)) & j10;
        long j55 = j52 ^ (j54 << 20);
        long j56 = j53 ^ (j54 >>> 44);
        long j57 = (-((j11 >>> 21) & 1)) & j10;
        long j58 = j55 ^ (j57 << 21);
        long j59 = j56 ^ (j57 >>> 43);
        long j60 = (-((j11 >>> 22) & 1)) & j10;
        long j61 = j58 ^ (j60 << 22);
        long j62 = j59 ^ (j60 >>> 42);
        long j63 = (-((j11 >>> 23) & 1)) & j10;
        long j64 = j61 ^ (j63 << 23);
        long j65 = j62 ^ (j63 >>> 41);
        long j66 = (-((j11 >>> 24) & 1)) & j10;
        long j67 = j64 ^ (j66 << 24);
        long j68 = j65 ^ (j66 >>> 40);
        long j69 = (-((j11 >>> 25) & 1)) & j10;
        long j70 = j67 ^ (j69 << 25);
        long j71 = j68 ^ (j69 >>> 39);
        long j72 = (-((j11 >>> 26) & 1)) & j10;
        long j73 = j70 ^ (j72 << 26);
        long j74 = j71 ^ (j72 >>> 38);
        long j75 = (-((j11 >>> 27) & 1)) & j10;
        long j76 = j73 ^ (j75 << 27);
        long j77 = j74 ^ (j75 >>> 37);
        long j78 = (-((j11 >>> 28) & 1)) & j10;
        long j79 = j76 ^ (j78 << 28);
        long j80 = j77 ^ (j78 >>> 36);
        long j81 = (-((j11 >>> 29) & 1)) & j10;
        long j82 = j79 ^ (j81 << 29);
        long j83 = j80 ^ (j81 >>> 35);
        long j84 = (-((j11 >>> 30) & 1)) & j10;
        long j85 = j82 ^ (j84 << 30);
        long j86 = j83 ^ (j84 >>> 34);
        long j87 = (-((j11 >>> 31) & 1)) & j10;
        long j88 = j85 ^ (j87 << 31);
        long j89 = j86 ^ (j87 >>> 33);
        long j90 = (-((j11 >>> 32) & 1)) & j10;
        long j91 = j88 ^ (j90 << 32);
        long j92 = j89 ^ (j90 >>> 32);
        long j93 = (-((j11 >>> 33) & 1)) & j10;
        long j94 = j91 ^ (j93 << 33);
        long j95 = j92 ^ (j93 >>> 31);
        long j96 = (-((j11 >>> 34) & 1)) & j10;
        long j97 = j94 ^ (j96 << 34);
        long j98 = j95 ^ (j96 >>> 30);
        long j99 = (-((j11 >>> 35) & 1)) & j10;
        long j100 = j97 ^ (j99 << 35);
        long j101 = j98 ^ (j99 >>> 29);
        long j102 = (-((j11 >>> 36) & 1)) & j10;
        long j103 = j100 ^ (j102 << 36);
        long j104 = j101 ^ (j102 >>> 28);
        long j105 = (-((j11 >>> 37) & 1)) & j10;
        long j106 = j103 ^ (j105 << 37);
        long j107 = j104 ^ (j105 >>> 27);
        long j108 = (-((j11 >>> 38) & 1)) & j10;
        long j109 = j106 ^ (j108 << 38);
        long j110 = j107 ^ (j108 >>> 26);
        long j111 = (-((j11 >>> 39) & 1)) & j10;
        long j112 = j109 ^ (j111 << 39);
        long j113 = j110 ^ (j111 >>> 25);
        long j114 = (-((j11 >>> 40) & 1)) & j10;
        long j115 = j112 ^ (j114 << 40);
        long j116 = j113 ^ (j114 >>> 24);
        long j117 = (-((j11 >>> 41) & 1)) & j10;
        long j118 = j115 ^ (j117 << 41);
        long j119 = j116 ^ (j117 >>> 23);
        long j120 = (-((j11 >>> 42) & 1)) & j10;
        long j121 = j118 ^ (j120 << 42);
        long j122 = j119 ^ (j120 >>> 22);
        long j123 = (-((j11 >>> 43) & 1)) & j10;
        long j124 = j121 ^ (j123 << 43);
        long j125 = j122 ^ (j123 >>> 21);
        long j126 = (-((j11 >>> 44) & 1)) & j10;
        long j127 = j124 ^ (j126 << 44);
        long j128 = j125 ^ (j126 >>> 20);
        long j129 = (-((j11 >>> 45) & 1)) & j10;
        long j130 = j127 ^ (j129 << 45);
        long j131 = j128 ^ (j129 >>> 19);
        long j132 = (-((j11 >>> 46) & 1)) & j10;
        long j133 = j130 ^ (j132 << 46);
        long j134 = j131 ^ (j132 >>> 18);
        long j135 = (-((j11 >>> 47) & 1)) & j10;
        long j136 = j133 ^ (j135 << 47);
        long j137 = j134 ^ (j135 >>> 17);
        long j138 = (-((j11 >>> 48) & 1)) & j10;
        long j139 = j136 ^ (j138 << 48);
        long j140 = j137 ^ (j138 >>> 16);
        long j141 = (-((j11 >>> 49) & 1)) & j10;
        long j142 = j139 ^ (j141 << 49);
        long j143 = j140 ^ (j141 >>> 15);
        long j144 = (-((j11 >>> 50) & 1)) & j10;
        long j145 = j142 ^ (j144 << 50);
        long j146 = j143 ^ (j144 >>> 14);
        long j147 = (-((j11 >>> 51) & 1)) & j10;
        long j148 = j145 ^ (j147 << 51);
        long j149 = j146 ^ (j147 >>> 13);
        long j150 = (-((j11 >>> 52) & 1)) & j10;
        long j151 = j148 ^ (j150 << 52);
        long j152 = j149 ^ (j150 >>> 12);
        long j153 = (-((j11 >>> 53) & 1)) & j10;
        long j154 = j151 ^ (j153 << 53);
        long j155 = j152 ^ (j153 >>> 11);
        long j156 = (-((j11 >>> 54) & 1)) & j10;
        long j157 = j154 ^ (j156 << 54);
        long j158 = j155 ^ (j156 >>> 10);
        long j159 = (-((j11 >>> 55) & 1)) & j10;
        long j160 = j157 ^ (j159 << 55);
        long j161 = j158 ^ (j159 >>> 9);
        long j162 = (-((j11 >>> 56) & 1)) & j10;
        long j163 = j160 ^ (j162 << 56);
        long j164 = j161 ^ (j162 >>> 8);
        long j165 = (-((j11 >>> 57) & 1)) & j10;
        long j166 = j163 ^ (j165 << 57);
        long j167 = j164 ^ (j165 >>> 7);
        long j168 = (-((j11 >>> 58) & 1)) & j10;
        long j169 = (-((j11 >>> 59) & 1)) & j10;
        long j170 = (j166 ^ (j168 << 58)) ^ (j169 << 59);
        long j171 = (j167 ^ (j168 >>> 6)) ^ (j169 >>> 5);
        long j172 = (-((j11 >>> 60) & 1)) & j10;
        long j173 = j170 ^ (j172 << 60);
        long j174 = j171 ^ (j172 >>> 4);
        long j175 = (-((j11 >>> 61) & 1)) & j10;
        long j176 = (-(1 & (j11 >>> 62))) & j10;
        jArr[i10] = ((j173 ^ (j175 << 61)) ^ (j176 << 62)) ^ jArr[i10];
        int i11 = i10 + 1;
        jArr[i11] = ((j176 >>> 2) ^ (j174 ^ (j175 >>> 3))) ^ jArr[i11];
    }

    public static void d(long[] jArr, int i10, long[] jArr2, int i11) {
        h(jArr, i10 + 2, jArr2[i11 + 1]);
        h(jArr, i10, jArr2[i11]);
    }

    public static void e(long[] jArr, int i10, long[] jArr2, int i11) {
        d(jArr, i10 + 4, jArr2, i11 + 2);
        d(jArr, i10, jArr2, i11);
    }

    public static long f(long j10) {
        long j11 = (j10 ^ (j10 << 16)) & 281470681808895L;
        long j12 = (j11 ^ (j11 << 8)) & 71777214294589695L;
        long j13 = (j12 ^ (j12 << 4)) & 1085102592571150095L;
        long j14 = (j13 ^ (j13 << 2)) & 3689348814741910323L;
        return (j14 ^ (j14 << 1)) & C15316b.f109661b;
    }

    public static long g(long j10) {
        long j11 = ((j10 << 16) ^ (4294967295L & j10)) & 281470681808895L;
        long j12 = (j11 ^ (j11 << 8)) & 71777214294589695L;
        long j13 = (j12 ^ (j12 << 4)) & 1085102592571150095L;
        long j14 = (j13 ^ (j13 << 2)) & 3689348814741910323L;
        return (j14 ^ (j14 << 1)) & C15316b.f109661b;
    }

    public static void h(long[] jArr, int i10, long j10) {
        jArr[i10 + 1] = f(j10 >>> 32);
        jArr[i10] = g(j10);
    }

    public static void u(long[] jArr, int i10, long j10, long j11, long j12, long j13) {
        b(jArr, i10, j10, j12);
        int i11 = i10 + 2;
        b(jArr, i11, j11, j13);
        int i12 = i10 + 1;
        long j14 = jArr[i11] ^ jArr[i12];
        jArr[i11] = j14;
        jArr[i12] = j14 ^ jArr[i10];
        jArr[i11] = jArr[i11] ^ jArr[i10 + 3];
        c(jArr, i12, j10 ^ j11, j12 ^ j13);
    }

    public static void v(long[] jArr, int i10, long[] jArr2, int i11, long[] jArr3, int i12) {
        b(jArr, i10, jArr2[i11], jArr3[i12]);
        int i13 = i10 + 2;
        int i14 = i11 + 1;
        int i15 = i12 + 1;
        b(jArr, i13, jArr2[i14], jArr3[i15]);
        int i16 = i10 + 1;
        long j10 = jArr[i13] ^ jArr[i16];
        jArr[i13] = j10;
        jArr[i16] = j10 ^ jArr[i10];
        jArr[i13] = jArr[i13] ^ jArr[i10 + 3];
        c(jArr, i16, jArr2[i11] ^ jArr2[i14], jArr3[i12] ^ jArr3[i15]);
    }

    public static void w(long[] jArr, int i10, long j10, long j11, long j12, long j13, long[] jArr2) {
        b(jArr2, 0, j10, j12);
        b(jArr2, 2, j11, j13);
        jArr[i10] = jArr[i10] ^ jArr2[0];
        long j14 = jArr2[2] ^ jArr2[1];
        jArr2[2] = j14;
        int i11 = i10 + 1;
        jArr[i11] = (jArr2[0] ^ j14) ^ jArr[i11];
        int i12 = i10 + 2;
        jArr[i12] = jArr[i12] ^ (jArr2[2] ^ jArr2[3]);
        int i13 = i10 + 3;
        jArr[i13] = jArr[i13] ^ jArr2[3];
        c(jArr, i11, j10 ^ j11, j12 ^ j13);
    }

    public static void x(long[] jArr, int i10, long[] jArr2, int i11, long[] jArr3, int i12) {
        b(jArr, i10, jArr2[i11], jArr3[i12]);
        int i13 = i10 + 4;
        int i14 = i11 + 2;
        int i15 = i12 + 2;
        b(jArr, i13, jArr2[i14], jArr3[i15]);
        int i16 = i10 + 2;
        int i17 = i11 + 1;
        int i18 = i12 + 1;
        b(jArr, i16, jArr2[i17], jArr3[i18]);
        int i19 = i10 + 1;
        jArr[i19] = jArr[i19] ^ jArr[i16];
        int i20 = i10 + 3;
        long j10 = jArr[i20] ^ jArr[i13];
        jArr[i20] = j10;
        jArr[i13] = j10 ^ jArr[i10 + 5];
        jArr[i16] = (jArr[i20] ^ jArr[i19]) ^ jArr[i10];
        jArr[i20] = jArr[i19] ^ jArr[i13];
        jArr[i19] = jArr[i19] ^ jArr[i10];
        c(jArr, i19, jArr2[i11] ^ jArr2[i17], jArr3[i12] ^ jArr3[i18]);
        c(jArr, i20, jArr2[i14] ^ jArr2[i17], jArr3[i15] ^ jArr3[i18]);
        c(jArr, i16, jArr2[i11] ^ jArr2[i14], jArr3[i12] ^ jArr3[i15]);
    }

    public static void y(long[] jArr, int i10, long[] jArr2, int i11, long[] jArr3, int i12, long[] jArr4) {
        b(jArr4, 0, jArr2[i11], jArr3[i12]);
        int i13 = i11 + 2;
        int i14 = i12 + 2;
        b(jArr4, 4, jArr2[i13], jArr3[i14]);
        int i15 = i11 + 1;
        int i16 = i12 + 1;
        b(jArr4, 2, jArr2[i15], jArr3[i16]);
        jArr[i10] = jArr[i10] ^ jArr4[0];
        long j10 = jArr4[1] ^ jArr4[2];
        jArr4[1] = j10;
        long j11 = jArr4[3] ^ jArr4[4];
        jArr4[3] = j11;
        jArr4[4] = j11 ^ jArr4[5];
        long j12 = j10 ^ jArr4[0];
        jArr4[0] = j12;
        int i17 = i10 + 1;
        jArr[i17] = j12 ^ jArr[i17];
        int i18 = i10 + 2;
        jArr[i18] = (jArr4[0] ^ jArr4[3]) ^ jArr[i18];
        int i19 = i10 + 3;
        jArr[i19] = jArr[i19] ^ (jArr4[1] ^ jArr4[4]);
        int i20 = i10 + 4;
        jArr[i20] = jArr[i20] ^ jArr4[4];
        int i21 = i10 + 5;
        jArr[i21] = jArr[i21] ^ jArr4[5];
        c(jArr, i17, jArr2[i15] ^ jArr2[i11], jArr3[i16] ^ jArr3[i12]);
        c(jArr, i19, jArr2[i13] ^ jArr2[i15], jArr3[i14] ^ jArr3[i16]);
        c(jArr, i18, jArr2[i11] ^ jArr2[i13], jArr3[i12] ^ jArr3[i14]);
    }

    public static void z(long[] jArr, int i10, long[] jArr2, int i11, long[] jArr3, int i12, long[] jArr4) {
        int i13 = i11 + 1;
        int i14 = i12 + 1;
        u(jArr, i10, jArr2[i11], jArr2[i13], jArr3[i12], jArr3[i14]);
        int i15 = i10 + 4;
        int i16 = i11 + 2;
        int i17 = i12 + 2;
        b(jArr, i15, jArr2[i16], jArr3[i17]);
        int i18 = i10 + 7;
        int i19 = i11 + 3;
        int i20 = i12 + 3;
        b(jArr, i18, jArr2[i19], jArr3[i20]);
        int i21 = i10 + 5;
        jArr[i18] = jArr[i18] ^ jArr[i21];
        int i22 = i10 + 8;
        int i23 = i11 + 4;
        int i24 = i12 + 4;
        jArr[i22] = jArr[i22] ^ a(jArr2[i23], jArr3[i24]);
        jArr[i21] = jArr[i18] ^ jArr[i15];
        long j10 = jArr[i18] ^ jArr[i22];
        jArr[i18] = j10;
        int i25 = i10 + 6;
        jArr[i25] = j10 ^ jArr[i15];
        c(jArr, i21, jArr2[i19] ^ jArr2[i16], jArr3[i20] ^ jArr3[i17]);
        c(jArr, i18, jArr2[i23] ^ jArr2[i19], jArr3[i24] ^ jArr3[i20]);
        c(jArr, i25, jArr2[i23] ^ jArr2[i16], jArr3[i24] ^ jArr3[i17]);
        int i26 = i10 + 2;
        jArr[i15] = jArr[i15] ^ jArr[i26];
        int i27 = i10 + 3;
        jArr[i21] = jArr[i21] ^ jArr[i27];
        long j11 = jArr2[i11] ^ jArr2[i16];
        long j12 = jArr2[i13] ^ jArr2[i19];
        long j13 = jArr3[i12] ^ jArr3[i17];
        long j14 = jArr3[i14] ^ jArr3[i20];
        b(jArr4, 0, j11, j13);
        b(jArr4, 2, j12, j14);
        jArr4[2] = jArr4[2] ^ jArr4[1];
        jArr4[3] = a(jArr2[i23], jArr3[i24]) ^ jArr4[3];
        jArr[i26] = (jArr[i15] ^ jArr[i10]) ^ jArr4[0];
        jArr[i27] = ((jArr[i21] ^ jArr[i10 + 1]) ^ jArr4[2]) ^ jArr4[0];
        long j15 = jArr4[2] ^ jArr4[3];
        jArr4[2] = j15;
        jArr[i15] = ((j15 ^ jArr[i25]) ^ jArr4[0]) ^ jArr[i15];
        jArr[i21] = jArr[i21] ^ (jArr4[2] ^ jArr[i18]);
        jArr[i25] = jArr[i25] ^ (jArr[i22] ^ jArr4[3]);
        c(jArr, i27, j11 ^ j12, j13 ^ j14);
        c(jArr, i21, j12 ^ jArr2[i23], j14 ^ jArr3[i24]);
        c(jArr, i15, j11 ^ jArr2[i23], jArr3[i24] ^ j13);
    }

    public abstract void H(l lVar, l lVar2, l lVar3);

    public abstract void I(l lVar, l lVar2, l lVar3);

    public abstract void J(long[] jArr, long[] jArr2, int i10);
}
