package Li;

import Bi.InterfaceC2379k;
import Ti.InterfaceC3091b;
import Xi.C3360o0;
import java.io.ByteArrayOutputStream;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;
import org.eclipse.jdt.internal.core.nd.db.Database;

public class N implements InterfaceC3091b {

    public String f13661a;

    public boolean f13662b;

    public boolean f13663c;

    public byte[] f13667g;

    public byte[] f13668h;

    public byte[] f13669i;

    public byte[] f13670j;

    public byte[] f13671k;

    public int f13675o;

    public int f13676p;

    public h f13677q;

    public final int f13664d = 16;

    public final int f13665e = 16;

    public final int f13666f = 40;

    public ByteArrayOutputStream f13672l = new ByteArrayOutputStream();

    public final ByteArrayOutputStream f13673m = new ByteArrayOutputStream();

    public final ByteArrayOutputStream f13674n = new ByteArrayOutputStream();

    public static class a {

        public static final int[] f13678a;

        static {
            int[] iArr = new int[i.values().length];
            f13678a = iArr;
            try {
                iArr[i.ISAP_A_128A.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f13678a[i.ISAP_K_128A.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f13678a[i.ISAP_A_128.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f13678a[i.ISAP_K_128.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public abstract class b implements h {

        public long[] f13679a;

        public long[] f13680b;

        public long f13681c;

        public long f13682d;

        public long f13683e;

        public long f13684f;

        public long f13685g;

        public long f13686h;

        public long f13687i;

        public long f13688j;

        public long f13689k;

        public long f13690l;

        public long f13691m;

        public long f13692n;

        public long f13693o;

        public b() {
            N.this.f13675o = 64;
            N.this.f13676p = (N.this.f13675o + 7) >> 3;
        }

        @Override
        public void a(byte[] bArr, int i10, int i11, byte[] bArr2, int i12, int i13) {
            int i14 = i11 >> 3;
            long[] jArr = new long[i14];
            org.bouncycastle.util.p.z(bArr, i10, jArr, 0, i14);
            long[] jArr2 = new long[i14];
            int i15 = 0;
            while (i11 >= N.this.f13676p) {
                jArr2[i15] = j(this.f13684f) ^ jArr[i15];
                f();
                i15++;
                i11 -= N.this.f13676p;
            }
            org.bouncycastle.util.p.K(jArr2, 0, i14, bArr2, i12);
            byte[] M10 = org.bouncycastle.util.p.M(this.f13684f);
            while (i11 > 0) {
                int i16 = i15 << 3;
                int i17 = ((i16 + i12) + i11) - 1;
                byte b10 = M10[N.this.f13676p - i11];
                i11--;
                bArr2[i17] = (byte) (bArr[(i16 + i10) + i11] ^ b10);
            }
        }

        @Override
        public void b(byte[] bArr, int i10, byte[] bArr2, int i11, byte[] bArr3, int i12) {
            long[] jArr = this.f13680b;
            this.f13684f = jArr[0];
            this.f13685g = jArr[1];
            this.f13686h = this.f13681c;
            this.f13688j = 0L;
            this.f13687i = 0L;
            d();
            c(bArr, i10);
            this.f13688j ^= 1;
            c(bArr2, i11);
            org.bouncycastle.util.p.J(j(this.f13684f), bArr3, 0);
            org.bouncycastle.util.p.J(j(this.f13685g), bArr3, 8);
            long j10 = this.f13686h;
            long j11 = this.f13687i;
            long j12 = this.f13688j;
            l(this.f13682d, bArr3, 16);
            this.f13686h = j10;
            this.f13687i = j11;
            this.f13688j = j12;
            d();
            org.bouncycastle.util.p.J(j(this.f13684f), bArr3, i12);
            org.bouncycastle.util.p.J(j(this.f13685g), bArr3, i12 + 8);
        }

        public void c(byte[] bArr, int i10) {
            int length = bArr.length >> 3;
            long[] jArr = new long[length];
            org.bouncycastle.util.p.z(bArr, 0, jArr, 0, length);
            int i11 = 0;
            while (i10 >= N.this.f13676p) {
                this.f13684f ^= j(jArr[i11]);
                d();
                i10 -= N.this.f13676p;
                i11++;
            }
            for (int i12 = 0; i12 < i10; i12++) {
                this.f13684f ^= (bArr[(i11 << 3) + i12] & 255) << ((7 - i12) << 3);
            }
            this.f13684f = (128 << ((7 - i10) << 3)) ^ this.f13684f;
            d();
        }

        public void d() {
            i(240L);
            i(225L);
            i(210L);
            i(195L);
            i(180L);
            i(165L);
            e();
        }

        public void e() {
            i(150L);
            i(135L);
            i(120L);
            i(105L);
            i(90L);
            i(75L);
        }

        public abstract void f();

        public abstract void g();

        public final long h(long j10, long j11) {
            return (j10 << ((int) (64 - j11))) | (j10 >>> ((int) j11));
        }

        public void i(long j10) {
            long j11 = this.f13684f;
            long j12 = this.f13685g;
            long j13 = this.f13686h;
            long j14 = this.f13687i;
            long j15 = this.f13688j;
            long j16 = ((((j11 ^ j12) ^ j13) ^ j14) ^ j10) ^ ((((j11 ^ j13) ^ j15) ^ j10) & j12);
            this.f13689k = j16;
            this.f13690l = ((((j11 ^ j13) ^ j14) ^ j15) ^ j10) ^ (((j12 ^ j13) ^ j10) & (j12 ^ j14));
            this.f13691m = (((j12 ^ j13) ^ j15) ^ j10) ^ (j14 & j15);
            this.f13692n = ((j13 ^ (j11 ^ j12)) ^ j10) ^ ((~j11) & (j14 ^ j15));
            this.f13693o = ((j11 ^ j15) & j12) ^ ((j12 ^ j14) ^ j15);
            this.f13684f = (h(j16, 19L) ^ j16) ^ h(this.f13689k, 28L);
            long j17 = this.f13690l;
            this.f13685g = (j17 ^ h(j17, 39L)) ^ h(this.f13690l, 61L);
            long j18 = this.f13691m;
            this.f13686h = ~((j18 ^ h(j18, 1L)) ^ h(this.f13691m, 6L));
            long j19 = this.f13692n;
            this.f13687i = (j19 ^ h(j19, 10L)) ^ h(this.f13692n, 17L);
            long j20 = this.f13693o;
            this.f13688j = (j20 ^ h(j20, 7L)) ^ h(this.f13693o, 41L);
        }

        @Override
        public void init() {
            this.f13680b = new long[k(N.this.f13670j.length)];
            byte[] bArr = N.this.f13670j;
            long[] jArr = this.f13680b;
            org.bouncycastle.util.p.z(bArr, 0, jArr, 0, jArr.length);
            long[] jArr2 = this.f13680b;
            jArr2[0] = j(jArr2[0]);
            long[] jArr3 = this.f13680b;
            jArr3[1] = j(jArr3[1]);
            this.f13679a = new long[k(N.this.f13667g.length)];
            byte[] bArr2 = N.this.f13667g;
            long[] jArr4 = this.f13679a;
            org.bouncycastle.util.p.z(bArr2, 0, jArr4, 0, jArr4.length);
            long[] jArr5 = this.f13679a;
            jArr5[0] = j(jArr5[0]);
            long[] jArr6 = this.f13679a;
            jArr6[1] = j(jArr6[1]);
            reset();
        }

        public long j(long j10) {
            return (h(j10, 56L) & 1095216660735L) | (h(j10, 8L) & (-72057589759737856L)) | (h(j10, 24L) & 71776119077928960L) | (h(j10, 40L) & 280375465148160L);
        }

        public final int k(int i10) {
            return (i10 >>> 3) + ((i10 & 7) != 0 ? 1 : 0);
        }

        public void l(long j10, byte[] bArr, int i10) {
            long[] jArr = this.f13679a;
            this.f13684f = jArr[0];
            this.f13685g = jArr[1];
            this.f13686h = j10;
            this.f13688j = 0L;
            this.f13687i = 0L;
            d();
            for (int i11 = 0; i11 < (i10 << 3) - 1; i11++) {
                this.f13684f ^= ((((bArr[i11 >>> 3] >>> (7 - (i11 & 7))) & 1) << 7) & 255) << 56;
                g();
            }
            this.f13684f ^= (bArr[i10 - 1] & 1) << 63;
            d();
        }

        @Override
        public void reset() {
            l(this.f13683e, N.this.f13670j, 16);
            long[] jArr = this.f13680b;
            this.f13687i = jArr[0];
            this.f13688j = jArr[1];
            f();
        }
    }

    public class c extends b {
        public c() {
            super();
            this.f13681c = 108156764298152972L;
            this.f13682d = 180214358336080908L;
            this.f13683e = 252271952374008844L;
        }

        @Override
        public void f() {
            d();
        }

        @Override
        public void g() {
            d();
        }
    }

    public class d extends b {
        public d() {
            super();
            this.f13681c = 108156764297430540L;
            this.f13682d = 180214358335358476L;
            this.f13683e = 252271952373286412L;
        }

        @Override
        public void f() {
            e();
        }

        @Override
        public void g() {
            i(75L);
        }
    }

    public abstract class e implements h {

        public short[] f13698b;

        public short[] f13699c;

        public short[] f13700d;

        public short[] f13701e;

        public short[] f13702f;

        public final int f13697a = 24;

        public final int[] f13703g = {1, 32898, 32906, 32768, 32907, 1, 32897, 32777, 138, 136, 32777, 10, 32907, 139, 32905, 32771, 32770, 128, 32778, 10};

        public short[] f13704h = new short[25];

        public short[] f13705i = new short[25];

        public short[] f13706j = new short[5];

        public e() {
            N.this.f13675o = 144;
            N.this.f13676p = (N.this.f13675o + 7) >> 3;
        }

        @Override
        public void a(byte[] bArr, int i10, int i11, byte[] bArr2, int i12, int i13) {
            int i14;
            while (true) {
                i14 = 0;
                if (i11 < N.this.f13676p) {
                    break;
                }
                while (i14 < N.this.f13676p) {
                    bArr2[i12] = (byte) (bArr[i10] ^ (this.f13704h[i14 >> 1] >>> ((i14 & 1) << 3)));
                    i14++;
                    i12++;
                    i10++;
                }
                i11 -= N.this.f13676p;
                f(this.f13704h, this.f13705i, this.f13706j);
            }
            while (i14 < i11) {
                bArr2[i12] = (byte) (bArr[i10] ^ (this.f13704h[i14 >> 1] >>> ((i14 & 1) << 3)));
                i14++;
                i12++;
                i10++;
            }
        }

        @Override
        public void b(byte[] bArr, int i10, byte[] bArr2, int i11, byte[] bArr3, int i12) {
            short[] sArr = new short[25];
            this.f13704h = sArr;
            System.arraycopy(this.f13702f, 0, sArr, 0, 8);
            System.arraycopy(this.f13698b, 0, this.f13704h, 8, 4);
            e(this.f13704h, this.f13705i, this.f13706j);
            c(this.f13704h, bArr, i10, this.f13705i, this.f13706j);
            short[] sArr2 = this.f13704h;
            sArr2[24] = (short) (sArr2[24] ^ Database.POOL_FIRST_NODE_TYPE);
            c(sArr2, bArr2, i11, this.f13705i, this.f13706j);
            p(this.f13704h, bArr3, i12);
            j(this.f13699c, bArr3, 16, this.f13704h, 16, this.f13706j);
            e(this.f13704h, this.f13705i, this.f13706j);
            p(this.f13704h, bArr3, i12);
        }

        public void c(short[] sArr, byte[] bArr, int i10, short[] sArr2, short[] sArr3) {
            int i11 = 0;
            int i12 = 0;
            while (i10 > N.this.f13676p) {
                i(bArr, sArr, N.this.f13676p >> 1);
                i12 += N.this.f13676p;
                i10 -= N.this.f13676p;
                e(sArr, sArr2, sArr3);
            }
            if (i10 == N.this.f13676p) {
                i(bArr, sArr, N.this.f13676p >> 1);
                e(sArr, sArr2, sArr3);
                sArr[0] = (short) (sArr[0] ^ 128);
            } else {
                while (i11 < i10) {
                    int i13 = i11 >> 1;
                    sArr[i13] = (short) (((bArr[i12] & 255) << ((i11 & 1) << 3)) ^ sArr[i13]);
                    i11++;
                    i12++;
                }
                int i14 = i10 >> 1;
                sArr[i14] = (short) ((128 << ((i10 & 1) << 3)) ^ sArr[i14]);
            }
            e(sArr, sArr2, sArr3);
        }

        public abstract void d(short[] sArr, short[] sArr2, short[] sArr3);

        public abstract void e(short[] sArr, short[] sArr2, short[] sArr3);

        public abstract void f(short[] sArr, short[] sArr2, short[] sArr3);

        public final short g(short s10, int i10) {
            int i11 = s10 & 65535;
            return (short) ((i11 >>> (16 - i10)) ^ (i11 << i10));
        }

        public final void h(byte[] bArr, short[] sArr, int i10) {
            for (int i11 = 0; i11 < i10; i11++) {
                sArr[i11] = org.bouncycastle.util.p.C(bArr, i11 << 1);
            }
        }

        public final void i(byte[] bArr, short[] sArr, int i10) {
            for (int i11 = 0; i11 < i10; i11++) {
                sArr[i11] = (short) (sArr[i11] ^ org.bouncycastle.util.p.C(bArr, i11 << 1));
            }
        }

        @Override
        public void init() {
            this.f13701e = new short[N.this.f13667g.length >> 1];
            byte[] bArr = N.this.f13667g;
            short[] sArr = this.f13701e;
            h(bArr, sArr, sArr.length);
            this.f13702f = new short[N.this.f13670j.length >> 1];
            byte[] bArr2 = N.this.f13670j;
            short[] sArr2 = this.f13702f;
            h(bArr2, sArr2, sArr2.length);
            reset();
        }

        public void j(short[] sArr, byte[] bArr, int i10, short[] sArr2, int i11, short[] sArr3) {
            short[] sArr4 = new short[25];
            short[] sArr5 = new short[25];
            System.arraycopy(this.f13701e, 0, sArr4, 0, 8);
            System.arraycopy(sArr, 0, sArr4, 8, 4);
            f(sArr4, sArr5, sArr3);
            for (int i12 = 0; i12 < (i10 << 3) - 1; i12++) {
                sArr4[0] = (short) (sArr4[0] ^ (((bArr[i12 >> 3] >>> (7 - (i12 & 7))) & 1) << 7));
                d(sArr4, sArr5, sArr3);
            }
            sArr4[0] = (short) (sArr4[0] ^ ((bArr[i10 - 1] & 1) << 7));
            f(sArr4, sArr5, sArr3);
            System.arraycopy(sArr4, 0, sArr2, 0, i11 == 24 ? 17 : 8);
        }

        public void k(short[] sArr, short[] sArr2) {
            sArr2[0] = (short) ((((sArr[0] ^ sArr[5]) ^ sArr[10]) ^ sArr[15]) ^ sArr[20]);
            sArr2[1] = (short) ((((sArr[1] ^ sArr[6]) ^ sArr[11]) ^ sArr[16]) ^ sArr[21]);
            sArr2[2] = (short) ((((sArr[2] ^ sArr[7]) ^ sArr[12]) ^ sArr[17]) ^ sArr[22]);
            sArr2[3] = (short) ((((sArr[3] ^ sArr[8]) ^ sArr[13]) ^ sArr[18]) ^ sArr[23]);
            sArr2[4] = (short) (sArr[24] ^ (((sArr[4] ^ sArr[9]) ^ sArr[14]) ^ sArr[19]));
        }

        public void l(short[] sArr, short[] sArr2, short[] sArr3) {
            k(sArr, sArr3);
            o(sArr, sArr2, sArr3);
        }

        public void m(short[] sArr, short[] sArr2, short[] sArr3) {
            r(12, sArr, sArr2, sArr3);
            r(13, sArr2, sArr, sArr3);
            r(14, sArr, sArr2, sArr3);
            r(15, sArr2, sArr, sArr3);
            r(16, sArr, sArr2, sArr3);
            r(17, sArr2, sArr, sArr3);
            r(18, sArr, sArr2, sArr3);
            q(sArr2, sArr, sArr3);
        }

        public void n(short[] sArr, short[] sArr2, short[] sArr3) {
            r(4, sArr, sArr2, sArr3);
            r(5, sArr2, sArr, sArr3);
            r(6, sArr, sArr2, sArr3);
            r(7, sArr2, sArr, sArr3);
            o(sArr, sArr2, sArr3);
        }

        public void o(short[] sArr, short[] sArr2, short[] sArr3) {
            r(8, sArr, sArr2, sArr3);
            r(9, sArr2, sArr, sArr3);
            r(10, sArr, sArr2, sArr3);
            r(11, sArr2, sArr, sArr3);
            m(sArr, sArr2, sArr3);
        }

        public final void p(short[] sArr, byte[] bArr, int i10) {
            for (int i11 = 0; i11 < 8; i11++) {
                org.bouncycastle.util.p.R(sArr[i11], bArr, (i11 << 1) + i10);
            }
        }

        public void q(short[] sArr, short[] sArr2, short[] sArr3) {
            short g10 = (short) (sArr3[4] ^ g(sArr3[1], 1));
            short g11 = (short) (sArr3[0] ^ g(sArr3[2], 1));
            short g12 = (short) (sArr3[1] ^ g(sArr3[3], 1));
            short g13 = (short) (sArr3[2] ^ g(sArr3[4], 1));
            short g14 = (short) (sArr3[3] ^ g(sArr3[0], 1));
            short s10 = (short) (sArr[0] ^ g10);
            sArr[0] = s10;
            short s11 = (short) (sArr[6] ^ g11);
            sArr[6] = s11;
            short g15 = g(s11, 12);
            short s12 = (short) (sArr[12] ^ g12);
            sArr[12] = s12;
            short g16 = g(s12, 11);
            short s13 = (short) (sArr[18] ^ g13);
            sArr[18] = s13;
            short g17 = g(s13, 5);
            short s14 = (short) (sArr[24] ^ g14);
            sArr[24] = s14;
            short g18 = g(s14, 14);
            sArr2[0] = (short) ((((~g15) & g16) ^ s10) ^ this.f13703g[19]);
            sArr2[1] = (short) (((~g16) & g17) ^ g15);
            sArr2[2] = (short) (((~g17) & g18) ^ g16);
            sArr2[3] = (short) (((~g18) & s10) ^ g17);
            sArr2[4] = (short) (((~s10) & g15) ^ g18);
            short s15 = (short) (sArr[3] ^ g13);
            sArr[3] = s15;
            short g19 = g(s15, 12);
            short s16 = (short) (sArr[9] ^ g14);
            sArr[9] = s16;
            short g20 = g(s16, 4);
            short s17 = (short) (sArr[10] ^ g10);
            sArr[10] = s17;
            short g21 = g(s17, 3);
            short s18 = (short) (sArr[16] ^ g11);
            sArr[16] = s18;
            short g22 = g(s18, 13);
            short s19 = (short) (sArr[22] ^ g12);
            sArr[22] = s19;
            short g23 = g(s19, 13);
            sArr2[5] = (short) (((~g20) & g21) ^ g19);
            sArr2[6] = (short) (((~g21) & g22) ^ g20);
            sArr2[7] = (short) (((~g22) & g23) ^ g21);
            sArr2[8] = (short) (((~g23) & g19) ^ g22);
            sArr2[9] = (short) (((~g19) & g20) ^ g23);
            short s20 = (short) (sArr[1] ^ g11);
            sArr[1] = s20;
            short g24 = g(s20, 1);
            short s21 = (short) (sArr[7] ^ g12);
            sArr[7] = s21;
            short g25 = g(s21, 6);
            short s22 = (short) (sArr[13] ^ g13);
            sArr[13] = s22;
            short g26 = g(s22, 9);
            short s23 = (short) (sArr[19] ^ g14);
            sArr[19] = s23;
            short g27 = g(s23, 8);
            short s24 = (short) (sArr[20] ^ g10);
            sArr[20] = s24;
            short g28 = g(s24, 2);
            sArr2[10] = (short) (((~g25) & g26) ^ g24);
            sArr2[11] = (short) (((~g26) & g27) ^ g25);
            sArr2[12] = (short) (g26 ^ ((~g27) & g28));
            sArr2[13] = (short) (((~g28) & g24) ^ g27);
            sArr2[14] = (short) (((~g24) & g25) ^ g28);
            short s25 = (short) (sArr[4] ^ g14);
            sArr[4] = s25;
            short g29 = g(s25, 11);
            short s26 = (short) (sArr[5] ^ g10);
            sArr[5] = s26;
            short g30 = g(s26, 4);
            short s27 = (short) (sArr[11] ^ g11);
            sArr[11] = s27;
            short g31 = g(s27, 10);
            short s28 = (short) (sArr[17] ^ g12);
            sArr[17] = s28;
            short g32 = g(s28, 15);
            short s29 = (short) (sArr[23] ^ g13);
            sArr[23] = s29;
            short g33 = g(s29, 8);
            sArr2[15] = (short) (((~g30) & g31) ^ g29);
            sArr2[16] = (short) (((~g31) & g32) ^ g30);
            sArr2[17] = (short) (g31 ^ ((~g32) & g33));
            sArr2[18] = (short) (((~g33) & g29) ^ g32);
            sArr2[19] = (short) ((g30 & (~g29)) ^ g33);
            short s30 = (short) (sArr[2] ^ g12);
            sArr[2] = s30;
            short g34 = g(s30, 14);
            short s31 = (short) (sArr[8] ^ g13);
            sArr[8] = s31;
            short g35 = g(s31, 7);
            short s32 = (short) (sArr[14] ^ g14);
            sArr[14] = s32;
            short g36 = g(s32, 7);
            short s33 = (short) (g10 ^ sArr[15]);
            sArr[15] = s33;
            short g37 = g(s33, 9);
            short s34 = (short) (g11 ^ sArr[21]);
            sArr[21] = s34;
            short g38 = g(s34, 2);
            sArr2[20] = (short) (((~g35) & g36) ^ g34);
            sArr2[21] = (short) (((~g36) & g37) ^ g35);
            sArr2[22] = (short) (g36 ^ ((~g37) & g38));
            sArr2[23] = (short) (g37 ^ ((~g38) & g34));
            sArr2[24] = (short) (((~g34) & g35) ^ g38);
        }

        public void r(int i10, short[] sArr, short[] sArr2, short[] sArr3) {
            short g10 = (short) (sArr3[4] ^ g(sArr3[1], 1));
            short g11 = (short) (sArr3[0] ^ g(sArr3[2], 1));
            short g12 = (short) (sArr3[1] ^ g(sArr3[3], 1));
            short g13 = (short) (sArr3[2] ^ g(sArr3[4], 1));
            short g14 = (short) (sArr3[3] ^ g(sArr3[0], 1));
            short s10 = (short) (sArr[0] ^ g10);
            sArr[0] = s10;
            short s11 = (short) (sArr[6] ^ g11);
            sArr[6] = s11;
            short g15 = g(s11, 12);
            short s12 = (short) (sArr[12] ^ g12);
            sArr[12] = s12;
            short g16 = g(s12, 11);
            short s13 = (short) (sArr[18] ^ g13);
            sArr[18] = s13;
            short g17 = g(s13, 5);
            short s14 = (short) (sArr[24] ^ g14);
            sArr[24] = s14;
            short g18 = g(s14, 14);
            short s15 = (short) ((((~g15) & g16) ^ s10) ^ this.f13703g[i10]);
            sArr2[0] = s15;
            sArr3[0] = s15;
            short s16 = (short) (((~g16) & g17) ^ g15);
            sArr2[1] = s16;
            sArr3[1] = s16;
            short s17 = (short) (((~g17) & g18) ^ g16);
            sArr2[2] = s17;
            sArr3[2] = s17;
            short s18 = (short) (((~g18) & s10) ^ g17);
            sArr2[3] = s18;
            sArr3[3] = s18;
            short s19 = (short) (((~s10) & g15) ^ g18);
            sArr2[4] = s19;
            sArr3[4] = s19;
            short s20 = (short) (sArr[3] ^ g13);
            sArr[3] = s20;
            short g19 = g(s20, 12);
            short s21 = (short) (sArr[9] ^ g14);
            sArr[9] = s21;
            short g20 = g(s21, 4);
            short s22 = (short) (sArr[10] ^ g10);
            sArr[10] = s22;
            short g21 = g(s22, 3);
            short s23 = (short) (sArr[16] ^ g11);
            sArr[16] = s23;
            short g22 = g(s23, 13);
            short s24 = (short) (sArr[22] ^ g12);
            sArr[22] = s24;
            short g23 = g(s24, 13);
            short s25 = (short) (((~g20) & g21) ^ g19);
            sArr2[5] = s25;
            sArr3[0] = (short) (sArr3[0] ^ s25);
            short s26 = (short) (((~g21) & g22) ^ g20);
            sArr2[6] = s26;
            sArr3[1] = (short) (sArr3[1] ^ s26);
            short s27 = (short) (g21 ^ ((~g22) & g23));
            sArr2[7] = s27;
            sArr3[2] = (short) (sArr3[2] ^ s27);
            short s28 = (short) (((~g23) & g19) ^ g22);
            sArr2[8] = s28;
            sArr3[3] = (short) (sArr3[3] ^ s28);
            short s29 = (short) (((~g19) & g20) ^ g23);
            sArr2[9] = s29;
            sArr3[4] = (short) (s29 ^ sArr3[4]);
            short s30 = (short) (sArr[1] ^ g11);
            sArr[1] = s30;
            short g24 = g(s30, 1);
            short s31 = (short) (sArr[7] ^ g12);
            sArr[7] = s31;
            short g25 = g(s31, 6);
            short s32 = (short) (sArr[13] ^ g13);
            sArr[13] = s32;
            short g26 = g(s32, 9);
            short s33 = (short) (sArr[19] ^ g14);
            sArr[19] = s33;
            short g27 = g(s33, 8);
            short s34 = (short) (sArr[20] ^ g10);
            sArr[20] = s34;
            short g28 = g(s34, 2);
            short s35 = (short) (((~g25) & g26) ^ g24);
            sArr2[10] = s35;
            sArr3[0] = (short) (sArr3[0] ^ s35);
            short s36 = (short) (((~g26) & g27) ^ g25);
            sArr2[11] = s36;
            sArr3[1] = (short) (sArr3[1] ^ s36);
            short s37 = (short) (g26 ^ ((~g27) & g28));
            sArr2[12] = s37;
            sArr3[2] = (short) (s37 ^ sArr3[2]);
            short s38 = (short) (g27 ^ ((~g28) & g24));
            sArr2[13] = s38;
            sArr3[3] = (short) (s38 ^ sArr3[3]);
            short s39 = (short) (((~g24) & g25) ^ g28);
            sArr2[14] = s39;
            sArr3[4] = (short) (s39 ^ sArr3[4]);
            short s40 = (short) (sArr[4] ^ g14);
            sArr[4] = s40;
            short g29 = g(s40, 11);
            short s41 = (short) (sArr[5] ^ g10);
            sArr[5] = s41;
            short g30 = g(s41, 4);
            short s42 = (short) (sArr[11] ^ g11);
            sArr[11] = s42;
            short g31 = g(s42, 10);
            short s43 = (short) (sArr[17] ^ g12);
            sArr[17] = s43;
            short g32 = g(s43, 15);
            short s44 = (short) (sArr[23] ^ g13);
            sArr[23] = s44;
            short g33 = g(s44, 8);
            short s45 = (short) (((~g30) & g31) ^ g29);
            sArr2[15] = s45;
            sArr3[0] = (short) (sArr3[0] ^ s45);
            short s46 = (short) (((~g31) & g32) ^ g30);
            sArr2[16] = s46;
            sArr3[1] = (short) (sArr3[1] ^ s46);
            short s47 = (short) (g31 ^ ((~g32) & g33));
            sArr2[17] = s47;
            sArr3[2] = (short) (sArr3[2] ^ s47);
            short s48 = (short) (((~g33) & g29) ^ g32);
            sArr2[18] = s48;
            sArr3[3] = (short) (s48 ^ sArr3[3]);
            short s49 = (short) (((~g29) & g30) ^ g33);
            sArr2[19] = s49;
            sArr3[4] = (short) (s49 ^ sArr3[4]);
            short s50 = (short) (sArr[2] ^ g12);
            sArr[2] = s50;
            short g34 = g(s50, 14);
            short s51 = (short) (sArr[8] ^ g13);
            sArr[8] = s51;
            short g35 = g(s51, 7);
            short s52 = (short) (sArr[14] ^ g14);
            sArr[14] = s52;
            short g36 = g(s52, 7);
            short s53 = (short) (g10 ^ sArr[15]);
            sArr[15] = s53;
            short g37 = g(s53, 9);
            short s54 = (short) (g11 ^ sArr[21]);
            sArr[21] = s54;
            short g38 = g(s54, 2);
            short s55 = (short) (((~g35) & g36) ^ g34);
            sArr2[20] = s55;
            sArr3[0] = (short) (s55 ^ sArr3[0]);
            short s56 = (short) (((~g36) & g37) ^ g35);
            sArr2[21] = s56;
            sArr3[1] = (short) (s56 ^ sArr3[1]);
            short s57 = (short) (g36 ^ ((~g37) & g38));
            sArr2[22] = s57;
            sArr3[2] = (short) (s57 ^ sArr3[2]);
            short s58 = (short) (((~g38) & g34) ^ g37);
            sArr2[23] = s58;
            sArr3[3] = (short) (s58 ^ sArr3[3]);
            short s59 = (short) (((~g34) & g35) ^ g38);
            sArr2[24] = s59;
            sArr3[4] = (short) (s59 ^ sArr3[4]);
        }

        @Override
        public void reset() {
            this.f13704h = new short[25];
            this.f13705i = new short[25];
            this.f13706j = new short[5];
            j(this.f13700d, N.this.f13670j, 16, this.f13704h, 24, this.f13706j);
            System.arraycopy(this.f13702f, 0, this.f13704h, 17, 8);
            f(this.f13704h, this.f13705i, this.f13706j);
        }
    }

    public class f extends e {
        public f() {
            super();
            this.f13698b = new short[]{-32767, 400, 3092, 3084};
            this.f13699c = new short[]{-32766, 400, 3092, 3084};
            this.f13700d = new short[]{-32765, 400, 3092, 3084};
        }

        @Override
        public void d(short[] sArr, short[] sArr2, short[] sArr3) {
            l(sArr, sArr2, sArr3);
        }

        @Override
        public void e(short[] sArr, short[] sArr2, short[] sArr3) {
            k(sArr, sArr3);
            r(0, sArr, sArr2, sArr3);
            r(1, sArr2, sArr, sArr3);
            r(2, sArr, sArr2, sArr3);
            r(3, sArr2, sArr, sArr3);
            n(sArr, sArr2, sArr3);
        }

        @Override
        public void f(short[] sArr, short[] sArr2, short[] sArr3) {
            l(sArr, sArr2, sArr3);
        }
    }

    public class g extends e {
        public g() {
            super();
            this.f13698b = new short[]{-32767, 400, 272, 2056};
            this.f13699c = new short[]{-32766, 400, 272, 2056};
            this.f13700d = new short[]{-32765, 400, 272, 2056};
        }

        @Override
        public void d(short[] sArr, short[] sArr2, short[] sArr3) {
            k(sArr, sArr3);
            r(19, sArr, sArr2, sArr3);
            System.arraycopy(sArr2, 0, sArr, 0, sArr2.length);
        }

        @Override
        public void e(short[] sArr, short[] sArr2, short[] sArr3) {
            k(sArr, sArr3);
            n(sArr, sArr2, sArr3);
        }

        @Override
        public void f(short[] sArr, short[] sArr2, short[] sArr3) {
            k(sArr, sArr3);
            m(sArr, sArr2, sArr3);
        }
    }

    public interface h {
        void a(byte[] bArr, int i10, int i11, byte[] bArr2, int i12, int i13);

        void b(byte[] bArr, int i10, byte[] bArr2, int i11, byte[] bArr3, int i12);

        void init();

        void reset();
    }

    public enum i {
        ISAP_A_128A,
        ISAP_K_128A,
        ISAP_A_128,
        ISAP_K_128
    }

    public N(i iVar) {
        String str;
        int i10 = a.f13678a[iVar.ordinal()];
        if (i10 == 1) {
            this.f13677q = new d();
            str = "ISAP-A-128A AEAD";
        } else if (i10 == 2) {
            this.f13677q = new g();
            str = "ISAP-K-128A AEAD";
        } else if (i10 == 3) {
            this.f13677q = new c();
            str = "ISAP-A-128 AEAD";
        } else {
            if (i10 != 4) {
                return;
            }
            this.f13677q = new f();
            str = "ISAP-K-128 AEAD";
        }
        this.f13661a = str;
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        this.f13662b = z10;
        if (!(interfaceC2379k instanceof Xi.w0)) {
            throw new IllegalArgumentException("ISAP AEAD init parameters must include an IV");
        }
        Xi.w0 w0Var = (Xi.w0) interfaceC2379k;
        byte[] a10 = w0Var.a();
        if (a10 == null || a10.length != 16) {
            throw new IllegalArgumentException("ISAP AEAD requires exactly 12 bytes of IV");
        }
        if (!(w0Var.b() instanceof C3360o0)) {
            throw new IllegalArgumentException("ISAP AEAD init parameters must include a key");
        }
        byte[] b10 = ((C3360o0) w0Var.b()).b();
        if (b10.length != 16) {
            throw new IllegalArgumentException("ISAP AEAD key must be 128 bits long");
        }
        Bi.r.a(new Hi.c(b(), 128, interfaceC2379k, x0.a(z10)));
        byte[] bArr = new byte[a10.length];
        this.f13670j = bArr;
        this.f13667g = new byte[b10.length];
        System.arraycopy(a10, 0, bArr, 0, a10.length);
        System.arraycopy(b10, 0, this.f13667g, 0, b10.length);
        this.f13677q.init();
        this.f13663c = true;
        reset();
    }

    @Override
    public String b() {
        return this.f13661a;
    }

    @Override
    public int c(byte[] bArr, int i10) throws IllegalStateException, InvalidCipherTextException {
        if (!this.f13663c) {
            throw new IllegalArgumentException("Need call init function before encryption/decryption");
        }
        if (this.f13662b) {
            byte[] byteArray = this.f13673m.toByteArray();
            int length = byteArray.length;
            int i11 = i10 + length;
            if (i11 + 16 > bArr.length) {
                throw new OutputLengthException("output buffer is too short");
            }
            this.f13677q.a(byteArray, 0, length, bArr, i10, bArr.length);
            this.f13674n.write(bArr, i10, length);
            this.f13669i = this.f13672l.toByteArray();
            byte[] byteArray2 = this.f13674n.toByteArray();
            this.f13668h = byteArray2;
            byte[] bArr2 = new byte[16];
            this.f13671k = bArr2;
            h hVar = this.f13677q;
            byte[] bArr3 = this.f13669i;
            hVar.b(bArr3, bArr3.length, byteArray2, byteArray2.length, bArr2, 0);
            System.arraycopy(this.f13671k, 0, bArr, i11, 16);
            return length + 16;
        }
        this.f13669i = this.f13672l.toByteArray();
        byte[] byteArray3 = this.f13673m.toByteArray();
        this.f13668h = byteArray3;
        byte[] bArr4 = new byte[16];
        this.f13671k = bArr4;
        int length2 = byteArray3.length - bArr4.length;
        if (length2 + i10 > bArr.length) {
            throw new OutputLengthException("output buffer is too short");
        }
        h hVar2 = this.f13677q;
        byte[] bArr5 = this.f13669i;
        hVar2.b(bArr5, bArr5.length, byteArray3, length2, bArr4, 0);
        this.f13677q.reset();
        for (int i12 = 0; i12 < 16; i12++) {
            if (this.f13671k[i12] != this.f13668h[length2 + i12]) {
                throw new IllegalArgumentException("Mac does not match");
            }
        }
        this.f13677q.a(this.f13668h, 0, length2, bArr, i10, bArr.length);
        return length2;
    }

    @Override
    public byte[] e() {
        return this.f13671k;
    }

    @Override
    public int f(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws DataLengthException {
        if (!this.f13663c) {
            throw new IllegalArgumentException("Need call init function before encryption/decryption");
        }
        if (i10 + i11 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        this.f13673m.write(bArr, i10, i11);
        if (!this.f13662b || this.f13673m.size() < this.f13676p) {
            return 0;
        }
        int size = this.f13673m.size();
        int i13 = this.f13676p;
        int i14 = (size / i13) * i13;
        if (i12 + i14 > bArr2.length) {
            throw new OutputLengthException("output buffer is too short");
        }
        byte[] byteArray = this.f13673m.toByteArray();
        this.f13677q.a(byteArray, 0, i14, bArr2, i12, bArr2.length);
        this.f13674n.write(bArr2, i12, i14);
        this.f13673m.reset();
        this.f13673m.write(byteArray, i14, byteArray.length - i14);
        return i14;
    }

    @Override
    public int g(int i10) {
        return i10;
    }

    @Override
    public int h(int i10) {
        return i10 + 16;
    }

    @Override
    public int i(byte b10, byte[] bArr, int i10) throws DataLengthException {
        return f(new byte[]{b10}, 0, 1, bArr, i10);
    }

    @Override
    public void j(byte[] bArr, int i10, int i11) {
        if (i10 + i11 <= bArr.length) {
            this.f13672l.write(bArr, i10, i11);
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("input buffer too short");
        sb2.append(this.f13662b ? "encryption" : "decryption");
        throw new DataLengthException(sb2.toString());
    }

    @Override
    public void k(byte b10) {
        this.f13672l.write(b10);
    }

    public int r() {
        return this.f13676p;
    }

    @Override
    public void reset() {
        if (!this.f13663c) {
            throw new IllegalArgumentException("Need call init function before encryption/decryption");
        }
        this.f13672l.reset();
        this.f13677q.reset();
        this.f13673m.reset();
        this.f13674n.reset();
    }

    public int s() {
        return 16;
    }

    public int t() {
        return 16;
    }
}
