package fl;

public abstract class n {

    public long f86546a;

    public int f86547b;

    public int f86548c;

    public static class a extends n {

        public final int f86549d;

        public final int f86550e;

        public final int f86551f;

        public a(int i10, int i11, int i12, int i13, long j10) {
            this.f86549d = i10;
            this.f86547b = i11;
            this.f86548c = i12;
            this.f86550e = i13;
            this.f86546a = j10;
            this.f86551f = i11 - i10;
        }

        @Override
        public void a(long[] jArr, int i10, long[] jArr2) {
            long j10 = jArr2[2];
            int i11 = this.f86547b;
            long j11 = jArr2[3];
            int i12 = this.f86548c;
            long j12 = (j10 >>> i11) ^ (j11 << i12);
            long j13 = jArr2[4];
            long j14 = (j11 >>> i11) ^ (j13 << i12);
            long j15 = (j13 >>> i11) ^ (jArr2[5] << i12);
            long j16 = jArr2[1] ^ j14;
            int i13 = this.f86550e;
            int i14 = this.f86549d;
            jArr[i10 + 1] = (j16 ^ (j12 >>> i13)) ^ (j14 << i14);
            jArr[i10 + 2] = (((j14 >>> i13) ^ (jArr2[2] ^ j15)) ^ (j15 << i14)) & this.f86546a;
            long j17 = j12 ^ (j15 >>> this.f86551f);
            jArr[i10] = (j17 << i14) ^ (jArr2[0] ^ j17);
        }

        @Override
        public void b(long[] jArr, int i10, long[] jArr2) {
            long j10 = jArr2[2];
            int i11 = this.f86547b;
            long j11 = jArr2[3];
            int i12 = this.f86548c;
            long j12 = (j10 >>> i11) ^ (j11 << i12);
            long j13 = jArr2[4];
            long j14 = (j11 >>> i11) ^ (j13 << i12);
            long j15 = (j13 >>> i11) ^ (jArr2[5] << i12);
            int i13 = i10 + 1;
            long j16 = jArr[i13];
            long j17 = jArr2[1] ^ j14;
            int i14 = this.f86550e;
            int i15 = this.f86549d;
            jArr[i13] = j16 ^ ((j17 ^ (j12 >>> i14)) ^ (j14 << i15));
            int i16 = i10 + 2;
            jArr[i16] = ((((j14 >>> i14) ^ (jArr2[2] ^ j15)) ^ (j15 << i15)) & this.f86546a) ^ jArr[i16];
            long j18 = j12 ^ (j15 >>> this.f86551f);
            jArr[i10] = ((j18 << i15) ^ (jArr2[0] ^ j18)) ^ jArr[i10];
        }
    }

    public static class b extends n {

        public final int f86552d;

        public final int f86553e;

        public final int f86554f;

        public final int f86555g;

        public b(int i10, int i11, int i12, int i13, long j10) {
            this.f86552d = i10;
            this.f86547b = i11;
            this.f86548c = i12;
            this.f86553e = i13;
            this.f86546a = j10;
            this.f86554f = i13 + i11;
            this.f86555g = i10 - i11;
        }

        @Override
        public void a(long[] jArr, int i10, long[] jArr2) {
            long j10 = jArr2[5];
            int i11 = this.f86547b;
            long j11 = jArr2[6];
            int i12 = this.f86548c;
            long j12 = (j10 >>> i11) ^ (j11 << i12);
            long j13 = (j11 >>> i11) ^ (jArr2[7] << i12);
            long j14 = jArr2[2] ^ j13;
            int i13 = this.f86553e;
            int i14 = this.f86552d;
            jArr[i10 + 2] = (j14 ^ (j12 >>> i13)) ^ (j13 << i14);
            long j15 = (jArr2[7] >>> i11) ^ (jArr2[8] << i12);
            jArr[i10 + 3] = ((j13 >>> i13) ^ (jArr2[3] ^ j15)) ^ (j15 << i14);
            long j16 = jArr2[8] >>> i11;
            long j17 = jArr2[4];
            long j18 = (((j17 >>> i11) ^ (jArr2[5] << i12)) ^ (j15 >>> this.f86554f)) ^ (j16 << this.f86555g);
            long j19 = j16 << i14;
            jArr[i10 + 4] = (j19 ^ ((j15 >>> i13) ^ (j17 ^ j16))) & this.f86546a;
            jArr[i10] = (jArr2[0] ^ j18) ^ (j18 << i14);
            jArr[i10 + 1] = ((j12 << i14) ^ (jArr2[1] ^ j12)) ^ (j18 >>> i13);
        }

        @Override
        public void b(long[] jArr, int i10, long[] jArr2) {
            long j10 = jArr2[5];
            int i11 = this.f86547b;
            long j11 = jArr2[6];
            int i12 = this.f86548c;
            long j12 = (j10 >>> i11) ^ (j11 << i12);
            long j13 = (j11 >>> i11) ^ (jArr2[7] << i12);
            int i13 = i10 + 2;
            long j14 = jArr[i13];
            long j15 = jArr2[2] ^ j13;
            int i14 = this.f86553e;
            int i15 = this.f86552d;
            jArr[i13] = j14 ^ ((j15 ^ (j12 >>> i14)) ^ (j13 << i15));
            long j16 = (jArr2[7] >>> i11) ^ (jArr2[8] << i12);
            int i16 = i10 + 3;
            jArr[i16] = (((jArr2[3] ^ j16) ^ (j13 >>> i14)) ^ (j16 << i15)) ^ jArr[i16];
            long j17 = jArr2[8] >>> i11;
            int i17 = i10 + 4;
            jArr[i17] = ((((jArr2[4] ^ j17) ^ (j16 >>> i14)) ^ (j17 << i15)) & this.f86546a) ^ jArr[i17];
            long j18 = (((jArr2[4] >>> i11) ^ (jArr2[5] << i12)) ^ (j16 >>> this.f86554f)) ^ (j17 << this.f86555g);
            jArr[i10] = jArr[i10] ^ ((jArr2[0] ^ j18) ^ (j18 << i15));
            int i18 = i10 + 1;
            jArr[i18] = ((j18 >>> i14) ^ ((jArr2[1] ^ j12) ^ (j12 << i15))) ^ jArr[i18];
        }
    }

    public static class c extends n {

        public final int f86556d;

        public final int f86557e;

        public final int f86558f;

        public final int f86559g;

        public c(int i10, int i11, int i12, int i13, long j10) {
            this.f86556d = i10;
            this.f86547b = i11;
            this.f86548c = i12;
            this.f86557e = i13;
            this.f86546a = j10;
            this.f86558f = i13 + i11;
            this.f86559g = i10 - i11;
        }

        @Override
        public void a(long[] jArr, int i10, long[] jArr2) {
            long j10 = jArr2[6];
            int i11 = this.f86547b;
            long j11 = jArr2[7];
            int i12 = this.f86548c;
            long j12 = (j10 >>> i11) ^ (j11 << i12);
            long j13 = (j11 >>> i11) ^ (jArr2[8] << i12);
            long j14 = jArr2[2] ^ j13;
            int i13 = this.f86557e;
            int i14 = this.f86556d;
            jArr[i10 + 2] = (j14 ^ (j12 >>> i13)) ^ (j13 << i14);
            long j15 = (jArr2[8] >>> i11) ^ (jArr2[9] << i12);
            jArr[i10 + 3] = ((j13 >>> i13) ^ (jArr2[3] ^ j15)) ^ (j15 << i14);
            long j16 = (jArr2[9] >>> i11) ^ (jArr2[10] << i12);
            jArr[i10 + 4] = ((j15 >>> i13) ^ (jArr2[4] ^ j16)) ^ (j16 << i14);
            long j17 = (jArr2[10] >>> i11) ^ (jArr2[11] << i12);
            long j18 = jArr2[5];
            long j19 = (((j18 >>> i11) ^ (jArr2[6] << i12)) ^ (j16 >>> this.f86558f)) ^ (j17 << this.f86559g);
            jArr[i10 + 5] = ((j16 >>> i13) ^ (j18 ^ j17)) & this.f86546a;
            jArr[i10] = (jArr2[0] ^ j19) ^ (j19 << i14);
            jArr[i10 + 1] = (j12 << i14) ^ ((jArr2[1] ^ j12) ^ (j19 >>> i13));
        }

        @Override
        public void b(long[] jArr, int i10, long[] jArr2) {
            long j10 = jArr2[6];
            int i11 = this.f86547b;
            long j11 = jArr2[7];
            int i12 = this.f86548c;
            long j12 = (j10 >>> i11) ^ (j11 << i12);
            long j13 = (j11 >>> i11) ^ (jArr2[8] << i12);
            int i13 = i10 + 2;
            long j14 = jArr[i13];
            long j15 = jArr2[2] ^ j13;
            int i14 = this.f86557e;
            int i15 = this.f86556d;
            jArr[i13] = j14 ^ ((j15 ^ (j12 >>> i14)) ^ (j13 << i15));
            long j16 = (jArr2[8] >>> i11) ^ (jArr2[9] << i12);
            int i16 = i10 + 3;
            jArr[i16] = (((jArr2[3] ^ j16) ^ (j13 >>> i14)) ^ (j16 << i15)) ^ jArr[i16];
            long j17 = (jArr2[9] >>> i11) ^ (jArr2[10] << i12);
            int i17 = i10 + 4;
            jArr[i17] = (((jArr2[4] ^ j17) ^ (j16 >>> i14)) ^ (j17 << i15)) ^ jArr[i17];
            long j18 = (jArr2[10] >>> i11) ^ (jArr2[11] << i12);
            int i18 = i10 + 5;
            jArr[i18] = (((jArr2[5] ^ j18) ^ (j17 >>> i14)) & this.f86546a) ^ jArr[i18];
            long j19 = (((jArr2[5] >>> i11) ^ (jArr2[6] << i12)) ^ (j17 >>> this.f86558f)) ^ (j18 << this.f86559g);
            jArr[i10] = jArr[i10] ^ ((jArr2[0] ^ j19) ^ (j19 << i15));
            int i19 = i10 + 1;
            jArr[i19] = (((j19 >>> i14) ^ (jArr2[1] ^ j12)) ^ (j12 << i15)) ^ jArr[i19];
        }
    }

    public static class d extends n {

        public final int f86560d;

        public final int f86561e;

        public final int f86562f;

        public final int f86563g;

        public d(int i10, int i11, int i12, int i13, long j10) {
            this.f86560d = i10;
            this.f86547b = i11;
            this.f86548c = i12;
            this.f86561e = i13;
            this.f86546a = j10;
            this.f86562f = i13 + i11;
            this.f86563g = i10 - i11;
        }

        @Override
        public void a(long[] jArr, int i10, long[] jArr2) {
            long j10 = jArr2[7];
            int i11 = this.f86547b;
            long j11 = jArr2[8];
            int i12 = this.f86548c;
            long j12 = (j10 >>> i11) ^ (j11 << i12);
            long j13 = jArr2[9];
            long j14 = (j11 >>> i11) ^ (j13 << i12);
            long j15 = jArr2[10];
            long j16 = (j13 >>> i11) ^ (j15 << i12);
            long j17 = (j15 >>> i11) ^ (jArr2[11] << i12);
            long j18 = jArr2[5] >>> i11;
            long j19 = jArr2[6];
            int i13 = this.f86562f;
            long j20 = (j18 ^ (j19 << i12)) ^ (j14 >>> i13);
            int i14 = this.f86563g;
            long j21 = j20 ^ (j16 << i14);
            long j22 = (((j19 >>> i11) ^ (j10 << i12)) ^ (j16 >>> i13)) ^ (j17 << i14);
            jArr[i10] = jArr2[0] ^ j21;
            long j23 = jArr2[1] ^ j22;
            int i15 = this.f86560d;
            jArr[i10 + 1] = j23 ^ (j21 << i15);
            long j24 = jArr2[2] ^ j12;
            int i16 = this.f86561e;
            jArr[i10 + 2] = (j24 ^ (j21 >>> i16)) ^ (j22 << i15);
            jArr[i10 + 3] = ((j22 >>> i16) ^ (jArr2[3] ^ j14)) ^ (j12 << i15);
            jArr[i10 + 4] = ((jArr2[4] ^ j16) ^ (j12 >>> i16)) ^ (j14 << i15);
            jArr[i10 + 5] = ((jArr2[5] ^ j17) ^ (j14 >>> i16)) & this.f86546a;
        }

        @Override
        public void b(long[] jArr, int i10, long[] jArr2) {
            long j10 = jArr2[7];
            int i11 = this.f86547b;
            long j11 = jArr2[8];
            int i12 = this.f86548c;
            long j12 = (j10 >>> i11) ^ (j11 << i12);
            long j13 = jArr2[9];
            long j14 = (j11 >>> i11) ^ (j13 << i12);
            long j15 = jArr2[10];
            long j16 = (j13 >>> i11) ^ (j15 << i12);
            long j17 = (j15 >>> i11) ^ (jArr2[11] << i12);
            long j18 = jArr2[5] >>> i11;
            long j19 = jArr2[6];
            int i13 = this.f86562f;
            long j20 = (j18 ^ (j19 << i12)) ^ (j14 >>> i13);
            int i14 = this.f86563g;
            long j21 = j20 ^ (j16 << i14);
            long j22 = (((j19 >>> i11) ^ (j10 << i12)) ^ (j16 >>> i13)) ^ (j17 << i14);
            jArr[i10] = jArr[i10] ^ (jArr2[0] ^ j21);
            int i15 = i10 + 1;
            long j23 = jArr[i15];
            long j24 = jArr2[1] ^ j22;
            int i16 = this.f86560d;
            jArr[i15] = j23 ^ (j24 ^ (j21 << i16));
            int i17 = i10 + 2;
            long j25 = jArr[i17];
            long j26 = jArr2[2] ^ j12;
            int i18 = this.f86561e;
            jArr[i17] = j25 ^ ((j26 ^ (j21 >>> i18)) ^ (j22 << i16));
            int i19 = i10 + 3;
            jArr[i19] = (((j22 >>> i18) ^ (jArr2[3] ^ j14)) ^ (j12 << i16)) ^ jArr[i19];
            int i20 = i10 + 4;
            jArr[i20] = jArr[i20] ^ (((j12 >>> i18) ^ (jArr2[4] ^ j16)) ^ (j14 << i16));
            int i21 = i10 + 5;
            jArr[i21] = jArr[i21] ^ (((jArr2[5] ^ j17) ^ (j14 >>> i18)) & this.f86546a);
        }
    }

    public static class e extends n {

        public final int f86564d;

        public final int f86565e;

        public final int f86566f;

        public e(int i10, int i11, int i12, int i13, long j10) {
            this.f86564d = i10;
            this.f86547b = i11;
            this.f86548c = i12;
            this.f86565e = i13;
            this.f86546a = j10;
            this.f86566f = i11 - i10;
        }

        @Override
        public void a(long[] jArr, int i10, long[] jArr2) {
            long j10 = jArr2[5];
            int i11 = this.f86547b;
            long j11 = jArr2[6];
            int i12 = this.f86548c;
            long j12 = (j10 >>> i11) ^ (j11 << i12);
            long j13 = jArr2[7];
            long j14 = (j11 >>> i11) ^ (j13 << i12);
            long j15 = jArr2[8];
            long j16 = (j13 >>> i11) ^ (j15 << i12);
            long j17 = jArr2[9];
            long j18 = (j15 >>> i11) ^ (j17 << i12);
            long j19 = jArr2[10];
            long j20 = (j17 >>> i11) ^ (j19 << i12);
            long j21 = (j19 >>> i11) ^ (jArr2[11] << i12);
            long j22 = j12 ^ (j21 >>> this.f86566f);
            long j23 = jArr2[0] ^ j22;
            int i13 = this.f86564d;
            jArr[i10] = j23 ^ (j22 << i13);
            long j24 = jArr2[1] ^ j14;
            int i14 = this.f86565e;
            jArr[i10 + 1] = (j24 ^ (j12 >>> i14)) ^ (j14 << i13);
            jArr[i10 + 2] = ((jArr2[2] ^ j16) ^ (j14 >>> i14)) ^ (j16 << i13);
            jArr[i10 + 3] = ((jArr2[3] ^ j18) ^ (j16 >>> i14)) ^ (j18 << i13);
            jArr[i10 + 4] = ((jArr2[4] ^ j20) ^ (j18 >>> i14)) ^ (j20 << i13);
            jArr[i10 + 5] = (((j20 >>> i14) ^ (jArr2[5] ^ j21)) ^ (j21 << i13)) & this.f86546a;
        }

        @Override
        public void b(long[] jArr, int i10, long[] jArr2) {
            long j10 = jArr2[5];
            int i11 = this.f86547b;
            long j11 = jArr2[6];
            int i12 = this.f86548c;
            long j12 = (j10 >>> i11) ^ (j11 << i12);
            long j13 = jArr2[7];
            long j14 = (j11 >>> i11) ^ (j13 << i12);
            long j15 = jArr2[8];
            long j16 = (j13 >>> i11) ^ (j15 << i12);
            long j17 = jArr2[9];
            long j18 = (j15 >>> i11) ^ (j17 << i12);
            long j19 = jArr2[10];
            long j20 = (j17 >>> i11) ^ (j19 << i12);
            long j21 = (j19 >>> i11) ^ (jArr2[11] << i12);
            long j22 = j12 ^ (j21 >>> this.f86566f);
            long j23 = jArr[i10];
            long j24 = jArr2[0] ^ j22;
            int i13 = this.f86564d;
            jArr[i10] = j23 ^ (j24 ^ (j22 << i13));
            int i14 = i10 + 1;
            long j25 = jArr[i14];
            long j26 = jArr2[1] ^ j14;
            int i15 = this.f86565e;
            jArr[i14] = j25 ^ ((j26 ^ (j12 >>> i15)) ^ (j14 << i13));
            int i16 = i10 + 2;
            jArr[i16] = jArr[i16] ^ (((jArr2[2] ^ j16) ^ (j14 >>> i15)) ^ (j16 << i13));
            int i17 = i10 + 3;
            jArr[i17] = jArr[i17] ^ (((jArr2[3] ^ j18) ^ (j16 >>> i15)) ^ (j18 << i13));
            int i18 = i10 + 4;
            jArr[i18] = jArr[i18] ^ (((jArr2[4] ^ j20) ^ (j18 >>> i15)) ^ (j20 << i13));
            int i19 = i10 + 5;
            jArr[i19] = ((((j20 >>> i15) ^ (jArr2[5] ^ j21)) ^ (j21 << i13)) & this.f86546a) ^ jArr[i19];
        }
    }

    public static class f extends n {

        public final int f86567d;

        public final int f86568e;

        public f(int i10, int i11, int i12, int i13, long j10) {
            this.f86567d = i10;
            this.f86547b = i11;
            this.f86548c = i12;
            this.f86568e = i13;
            this.f86546a = j10;
        }

        @Override
        public void a(long[] jArr, int i10, long[] jArr2) {
            long j10 = jArr2[9];
            int i11 = this.f86547b;
            long j11 = jArr2[10];
            int i12 = this.f86548c;
            long j12 = (j10 >>> i11) ^ (j11 << i12);
            long j13 = jArr2[11];
            long j14 = (j11 >>> i11) ^ (j13 << i12);
            long j15 = jArr2[12];
            long j16 = (j13 >>> i11) ^ (j15 << i12);
            long j17 = j15 >>> i11;
            long j18 = ((j12 >>> 39) ^ (j14 << 25)) ^ (jArr2[6] >>> i11);
            long j19 = jArr2[7];
            long j20 = j18 ^ (j19 << i12);
            long j21 = jArr2[8];
            long j22 = (((j14 >>> 39) ^ (j16 << 25)) ^ (j19 >>> i11)) ^ (j21 << i12);
            long j23 = (((j16 >>> 39) ^ (j17 << 25)) ^ (j21 >>> i11)) ^ (j10 << i12);
            jArr[i10] = jArr2[0] ^ j20;
            jArr[i10 + 1] = jArr2[1] ^ j22;
            long j24 = jArr2[2] ^ j23;
            int i13 = this.f86567d;
            jArr[i10 + 2] = j24 ^ (j20 << i13);
            long j25 = jArr2[3] ^ j12;
            int i14 = this.f86568e;
            jArr[i10 + 3] = (j25 ^ (j20 >>> i14)) ^ (j22 << i13);
            jArr[i10 + 4] = ((j14 ^ jArr2[4]) ^ (j22 >>> i14)) ^ (j23 << i13);
            jArr[i10 + 5] = ((j23 >>> i14) ^ (jArr2[5] ^ j16)) ^ (j12 << i13);
            jArr[i10 + 6] = ((jArr2[6] ^ j17) ^ (j12 >>> i14)) & this.f86546a;
        }

        @Override
        public void b(long[] jArr, int i10, long[] jArr2) {
            long j10 = jArr2[9];
            int i11 = this.f86547b;
            long j11 = jArr2[10];
            int i12 = this.f86548c;
            long j12 = (j10 >>> i11) ^ (j11 << i12);
            long j13 = jArr2[11];
            long j14 = (j11 >>> i11) ^ (j13 << i12);
            long j15 = jArr2[12];
            long j16 = (j13 >>> i11) ^ (j15 << i12);
            long j17 = j15 >>> i11;
            long j18 = ((j12 >>> 39) ^ (j14 << 25)) ^ (jArr2[6] >>> i11);
            long j19 = jArr2[7];
            long j20 = j18 ^ (j19 << i12);
            long j21 = jArr2[8];
            long j22 = (((j14 >>> 39) ^ (j16 << 25)) ^ (j19 >>> i11)) ^ (j21 << i12);
            long j23 = (((j16 >>> 39) ^ (j17 << 25)) ^ (j21 >>> i11)) ^ (j10 << i12);
            jArr[i10] = jArr[i10] ^ (jArr2[0] ^ j20);
            int i13 = i10 + 1;
            jArr[i13] = jArr[i13] ^ (jArr2[1] ^ j22);
            int i14 = i10 + 2;
            long j24 = jArr[i14];
            long j25 = jArr2[2] ^ j23;
            int i15 = this.f86567d;
            jArr[i14] = j24 ^ (j25 ^ (j20 << i15));
            int i16 = i10 + 3;
            long j26 = jArr[i16];
            long j27 = jArr2[3] ^ j12;
            int i17 = this.f86568e;
            jArr[i16] = j26 ^ ((j27 ^ (j20 >>> i17)) ^ (j22 << i15));
            int i18 = i10 + 4;
            jArr[i18] = (((jArr2[4] ^ j14) ^ (j22 >>> i17)) ^ (j23 << i15)) ^ jArr[i18];
            int i19 = i10 + 5;
            jArr[i19] = (((j23 >>> i17) ^ (j16 ^ jArr2[5])) ^ (j12 << i15)) ^ jArr[i19];
            int i20 = i10 + 6;
            jArr[i20] = jArr[i20] ^ (((j12 >>> i17) ^ (jArr2[6] ^ j17)) & this.f86546a);
        }
    }

    public static class g extends n {

        public final int f86569d;

        public final int f86570e;

        public final int f86571f;

        public final int f86572g;

        public final int f86573h;

        public final int f86574i;

        public final int f86575j;

        public final int f86576k;

        public final int f86577l;

        public g(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, long j10) {
            this.f86569d = i10;
            this.f86570e = i11;
            this.f86571f = i12;
            this.f86547b = i13;
            this.f86548c = i14;
            this.f86572g = i15;
            this.f86573h = i16;
            this.f86574i = i17;
            this.f86546a = j10;
            this.f86575j = i13 - i12;
            this.f86576k = i13 - i11;
            this.f86577l = i13 - i10;
        }

        @Override
        public void a(long[] jArr, int i10, long[] jArr2) {
            long j10 = jArr2[16];
            int i11 = this.f86547b;
            long j11 = j10 >>> i11;
            long j12 = jArr2[8] >>> i11;
            long j13 = jArr2[9];
            int i12 = this.f86548c;
            long j14 = j12 ^ (j13 << i12);
            long j15 = (j13 >>> i11) ^ (jArr2[10] << i12);
            long j16 = jArr2[1] ^ j15;
            int i13 = this.f86572g;
            int i14 = this.f86569d;
            int i15 = this.f86573h;
            int i16 = this.f86570e;
            long j17 = (((j16 ^ (j14 >>> i13)) ^ (j15 << i14)) ^ (j14 >>> i15)) ^ (j15 << i16);
            int i17 = this.f86574i;
            long j18 = j17 ^ (j14 >>> i17);
            int i18 = this.f86571f;
            jArr[i10 + 1] = j18 ^ (j15 << i18);
            long j19 = j14 ^ (((j11 >>> this.f86575j) ^ (j11 >>> this.f86576k)) ^ (j11 >>> this.f86577l));
            jArr[i10] = (j19 << i18) ^ (((jArr2[0] ^ j19) ^ (j19 << i14)) ^ (j19 << i16));
            long j20 = (jArr2[10] >>> i11) ^ (jArr2[11] << i12);
            jArr[i10 + 2] = ((((((jArr2[2] ^ j20) ^ (j15 >>> i13)) ^ (j20 << i14)) ^ (j15 >>> i15)) ^ (j20 << i16)) ^ (j15 >>> i17)) ^ (j20 << i18);
            long j21 = (jArr2[11] >>> i11) ^ (jArr2[12] << i12);
            jArr[i10 + 3] = ((((((jArr2[3] ^ j21) ^ (j20 >>> i13)) ^ (j21 << i14)) ^ (j20 >>> i15)) ^ (j21 << i16)) ^ (j20 >>> i17)) ^ (j21 << i18);
            long j22 = (jArr2[12] >>> i11) ^ (jArr2[13] << i12);
            jArr[i10 + 4] = ((((((jArr2[4] ^ j22) ^ (j21 >>> i13)) ^ (j22 << i14)) ^ (j21 >>> i15)) ^ (j22 << i16)) ^ (j21 >>> i17)) ^ (j22 << i18);
            long j23 = (jArr2[13] >>> i11) ^ (jArr2[14] << i12);
            jArr[i10 + 5] = ((((((jArr2[5] ^ j23) ^ (j22 >>> i13)) ^ (j23 << i14)) ^ (j22 >>> i15)) ^ (j23 << i16)) ^ (j22 >>> i17)) ^ (j23 << i18);
            long j24 = (jArr2[14] >>> i11) ^ (jArr2[15] << i12);
            jArr[i10 + 6] = ((((((jArr2[6] ^ j24) ^ (j23 >>> i13)) ^ (j24 << i14)) ^ (j23 >>> i15)) ^ (j24 << i16)) ^ (j23 >>> i17)) ^ (j24 << i18);
            long j25 = (jArr2[15] >>> i11) ^ (jArr2[16] << i12);
            jArr[i10 + 7] = ((j24 >>> i17) ^ (((((jArr2[7] ^ j25) ^ (j24 >>> i13)) ^ (j25 << i14)) ^ (j24 >>> i15)) ^ (j25 << i16))) ^ (j25 << i18);
            jArr[i10 + 8] = ((j11 << i18) ^ (((((j11 << i14) ^ ((jArr2[8] ^ j11) ^ (j25 >>> i13))) ^ (j25 >>> i15)) ^ (j11 << i16)) ^ (j25 >>> i17))) & this.f86546a;
        }

        @Override
        public void b(long[] jArr, int i10, long[] jArr2) {
            long j10 = jArr2[16];
            int i11 = this.f86547b;
            long j11 = j10 >>> i11;
            long j12 = jArr2[8] >>> i11;
            long j13 = jArr2[9];
            int i12 = this.f86548c;
            long j14 = j12 ^ (j13 << i12);
            long j15 = (j13 >>> i11) ^ (jArr2[10] << i12);
            int i13 = i10 + 1;
            long j16 = jArr[i13];
            long j17 = jArr2[1] ^ j15;
            int i14 = this.f86572g;
            int i15 = this.f86569d;
            int i16 = this.f86573h;
            long j18 = ((j17 ^ (j14 >>> i14)) ^ (j15 << i15)) ^ (j14 >>> i16);
            int i17 = this.f86570e;
            int i18 = this.f86574i;
            long j19 = (j18 ^ (j15 << i17)) ^ (j14 >>> i18);
            int i19 = this.f86571f;
            jArr[i13] = j16 ^ (j19 ^ (j15 << i19));
            long j20 = j14 ^ (((j11 >>> this.f86575j) ^ (j11 >>> this.f86576k)) ^ (j11 >>> this.f86577l));
            jArr[i10] = ((j20 << i19) ^ (((jArr2[0] ^ j20) ^ (j20 << i15)) ^ (j20 << i17))) ^ jArr[i10];
            long j21 = (jArr2[10] >>> i11) ^ (jArr2[11] << i12);
            int i20 = i10 + 2;
            jArr[i20] = (((((((jArr2[2] ^ j21) ^ (j15 >>> i14)) ^ (j21 << i15)) ^ (j15 >>> i16)) ^ (j21 << i17)) ^ (j15 >>> i18)) ^ (j21 << i19)) ^ jArr[i20];
            long j22 = (jArr2[11] >>> i11) ^ (jArr2[12] << i12);
            int i21 = i10 + 3;
            jArr[i21] = (((((((jArr2[3] ^ j22) ^ (j21 >>> i14)) ^ (j22 << i15)) ^ (j21 >>> i16)) ^ (j22 << i17)) ^ (j21 >>> i18)) ^ (j22 << i19)) ^ jArr[i21];
            long j23 = (jArr2[12] >>> i11) ^ (jArr2[13] << i12);
            int i22 = i10 + 4;
            jArr[i22] = (((((((jArr2[4] ^ j23) ^ (j22 >>> i14)) ^ (j23 << i15)) ^ (j22 >>> i16)) ^ (j23 << i17)) ^ (j22 >>> i18)) ^ (j23 << i19)) ^ jArr[i22];
            long j24 = (jArr2[13] >>> i11) ^ (jArr2[14] << i12);
            int i23 = i10 + 5;
            jArr[i23] = (((((((jArr2[5] ^ j24) ^ (j23 >>> i14)) ^ (j24 << i15)) ^ (j23 >>> i16)) ^ (j24 << i17)) ^ (j23 >>> i18)) ^ (j24 << i19)) ^ jArr[i23];
            long j25 = (jArr2[14] >>> i11) ^ (jArr2[15] << i12);
            int i24 = i10 + 6;
            jArr[i24] = (((((((jArr2[6] ^ j25) ^ (j24 >>> i14)) ^ (j25 << i15)) ^ (j24 >>> i16)) ^ (j25 << i17)) ^ (j24 >>> i18)) ^ (j25 << i19)) ^ jArr[i24];
            long j26 = (jArr2[15] >>> i11) ^ (jArr2[16] << i12);
            int i25 = i10 + 7;
            jArr[i25] = (((j25 >>> i18) ^ (((((jArr2[7] ^ j26) ^ (j25 >>> i14)) ^ (j26 << i15)) ^ (j25 >>> i16)) ^ (j26 << i17))) ^ (j26 << i19)) ^ jArr[i25];
            int i26 = i10 + 8;
            long j27 = j26 >>> i18;
            jArr[i26] = (((j11 << i19) ^ (j27 ^ ((j11 << i17) ^ ((((jArr2[8] ^ j11) ^ (j26 >>> i14)) ^ (j11 << i15)) ^ (j26 >>> i16))))) & this.f86546a) ^ jArr[i26];
        }
    }

    public static class h extends n {

        public final int f86578d;

        public final int f86579e;

        public final int f86580f;

        public final int f86581g;

        public h(int i10, int i11, int i12, int i13, int i14, int i15, long j10) {
            this.f86578d = i10;
            this.f86579e = i11;
            this.f86547b = i12;
            this.f86548c = i13;
            this.f86580f = i14;
            this.f86581g = i15;
            this.f86546a = j10;
        }

        @Override
        public void a(long[] jArr, int i10, long[] jArr2) {
            long j10 = jArr2[10];
            int i11 = this.f86547b;
            long j11 = jArr2[11];
            int i12 = this.f86548c;
            long j12 = (j10 >>> i11) ^ (j11 << i12);
            long j13 = jArr2[12];
            long j14 = (j11 >>> i11) ^ (j13 << i12);
            long j15 = (j13 >>> i11) ^ (jArr2[13] << i12);
            long j16 = (jArr2[4] ^ j15) ^ j12;
            int i13 = this.f86580f;
            int i14 = this.f86578d;
            int i15 = this.f86581g;
            int i16 = this.f86579e;
            jArr[i10 + 4] = (((j16 ^ (j14 >>> i13)) ^ (j15 << i14)) ^ (j14 >>> i15)) ^ (j15 << i16);
            long j17 = (jArr2[13] >>> i11) ^ (jArr2[14] << i12);
            jArr[i10 + 5] = (((((jArr2[5] ^ j17) ^ j14) ^ (j15 >>> i13)) ^ (j17 << i14)) ^ (j15 >>> i15)) ^ (j17 << i16);
            long j18 = (jArr2[14] >>> i11) ^ (jArr2[15] << i12);
            jArr[i10 + 6] = (((((jArr2[6] ^ j18) ^ j15) ^ (j17 >>> i13)) ^ (j18 << i14)) ^ (j17 >>> i15)) ^ (j18 << i16);
            long j19 = (jArr2[15] >>> i11) ^ (jArr2[16] << i12);
            jArr[i10 + 7] = (((((jArr2[7] ^ j19) ^ j17) ^ (j18 >>> i13)) ^ (j19 << i14)) ^ (j18 >>> i15)) ^ (j19 << i16);
            long j20 = jArr2[16] >>> i11;
            jArr[i10 + 8] = ((((((jArr2[8] ^ j20) ^ j18) ^ (j19 >>> i13)) ^ (j20 << i14)) ^ (j19 >>> i15)) ^ (j20 << i16)) & this.f86546a;
            long j21 = (jArr2[8] ^ j18) >>> i11;
            long j22 = jArr2[9];
            long j23 = (j21 ^ ((j22 ^ j19) << i12)) ^ (jArr2[16] >>> i15);
            long j24 = ((j22 ^ j19) >>> i11) ^ ((jArr2[10] ^ j20) << i12);
            jArr[i10] = ((jArr2[0] ^ j23) ^ (j23 << i14)) ^ (j23 << i16);
            jArr[i10 + 1] = ((((jArr2[1] ^ j24) ^ (j23 >>> i13)) ^ (j24 << i14)) ^ (j23 >>> i15)) ^ (j24 << i16);
            jArr[i10 + 2] = (((((jArr2[2] ^ j12) ^ j23) ^ (j24 >>> i13)) ^ (j12 << i14)) ^ (j24 >>> i15)) ^ (j12 << i16);
            jArr[i10 + 3] = ((j12 >>> i15) ^ (((j24 ^ (jArr2[3] ^ j14)) ^ (j12 >>> i13)) ^ (j14 << i14))) ^ (j14 << i16);
        }

        @Override
        public void b(long[] jArr, int i10, long[] jArr2) {
            long j10 = jArr2[10];
            int i11 = this.f86547b;
            long j11 = jArr2[11];
            int i12 = this.f86548c;
            long j12 = (j10 >>> i11) ^ (j11 << i12);
            long j13 = jArr2[12];
            long j14 = (j11 >>> i11) ^ (j13 << i12);
            long j15 = (j13 >>> i11) ^ (jArr2[13] << i12);
            int i13 = i10 + 4;
            long j16 = jArr[i13];
            long j17 = (jArr2[4] ^ j15) ^ j12;
            int i14 = this.f86580f;
            int i15 = this.f86578d;
            int i16 = this.f86581g;
            int i17 = this.f86579e;
            jArr[i13] = j16 ^ ((((j17 ^ (j14 >>> i14)) ^ (j15 << i15)) ^ (j14 >>> i16)) ^ (j15 << i17));
            long j18 = (jArr2[13] >>> i11) ^ (jArr2[14] << i12);
            int i18 = i10 + 5;
            jArr[i18] = jArr[i18] ^ ((((((jArr2[5] ^ j18) ^ j14) ^ (j15 >>> i14)) ^ (j18 << i15)) ^ (j15 >>> i16)) ^ (j18 << i17));
            long j19 = (jArr2[14] >>> i11) ^ (jArr2[15] << i12);
            int i19 = i10 + 6;
            jArr[i19] = jArr[i19] ^ ((((((jArr2[6] ^ j19) ^ j15) ^ (j18 >>> i14)) ^ (j19 << i15)) ^ (j18 >>> i16)) ^ (j19 << i17));
            long j20 = (jArr2[15] >>> i11) ^ (jArr2[16] << i12);
            int i20 = i10 + 7;
            jArr[i20] = jArr[i20] ^ ((((((jArr2[7] ^ j20) ^ j18) ^ (j19 >>> i14)) ^ (j20 << i15)) ^ (j19 >>> i16)) ^ (j20 << i17));
            long j21 = jArr2[16] >>> i11;
            int i21 = i10 + 8;
            jArr[i21] = jArr[i21] ^ (((((((jArr2[8] ^ j21) ^ j19) ^ (j20 >>> i14)) ^ (j21 << i15)) ^ (j20 >>> i16)) ^ (j21 << i17)) & this.f86546a);
            long j22 = (jArr2[8] ^ j19) >>> i11;
            long j23 = jArr2[9];
            long j24 = (j22 ^ ((j23 ^ j20) << i12)) ^ (jArr2[16] >>> i16);
            long j25 = ((j20 ^ j23) >>> i11) ^ ((j21 ^ jArr2[10]) << i12);
            jArr[i10] = jArr[i10] ^ (((jArr2[0] ^ j24) ^ (j24 << i15)) ^ (j24 << i17));
            int i22 = i10 + 1;
            jArr[i22] = jArr[i22] ^ (((((jArr2[1] ^ j25) ^ (j24 >>> i14)) ^ (j25 << i15)) ^ (j24 >>> i16)) ^ (j25 << i17));
            int i23 = i10 + 2;
            jArr[i23] = (((((j24 ^ (jArr2[2] ^ j12)) ^ (j25 >>> i14)) ^ (j12 << i15)) ^ (j25 >>> i16)) ^ (j12 << i17)) ^ jArr[i23];
            int i24 = i10 + 3;
            jArr[i24] = (((j12 >>> i16) ^ ((((jArr2[3] ^ j14) ^ j25) ^ (j12 >>> i14)) ^ (j14 << i15))) ^ (j14 << i17)) ^ jArr[i24];
        }
    }

    public abstract void a(long[] jArr, int i10, long[] jArr2);

    public abstract void b(long[] jArr, int i10, long[] jArr2);
}
