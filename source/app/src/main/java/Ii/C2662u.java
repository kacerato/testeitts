package Ii;

import Bi.EnumC2383o;
import Bi.InterfaceC2379k;

public final class C2662u {

    public static final int f9943a = 32;

    public static abstract class a implements Bi.D, Bi.a0 {

        public static final int f9944j = 8192;

        public static final byte[] f9945k = {7};

        public static final byte[] f9946l = {11};

        public static final byte[] f9947m = {-1, -1, 6};

        public static final byte[] f9948n = {3, 0, 0, 0, 0, 0, 0, 0};

        public final byte[] f9949a = new byte[1];

        public final c f9950b;

        public final c f9951c;

        public final int f9952d;

        public byte[] f9953e;

        public boolean f9954f;

        public int f9955g;

        public int f9956h;

        public final EnumC2383o f9957i;

        public a(int i10, int i11, int i12, EnumC2383o enumC2383o) {
            this.f9950b = new c(i10, i11);
            this.f9951c = new c(i10, i11);
            this.f9952d = i10 >> 2;
            a(null);
            this.f9957i = enumC2383o;
            Bi.r.a(Z.a(this, i10, enumC2383o));
        }

        public static byte[] g(long j10) {
            byte b10;
            if (j10 != 0) {
                long j11 = j10;
                b10 = 1;
                while (true) {
                    j11 >>= 8;
                    if (j11 == 0) {
                        break;
                    }
                    b10 = (byte) (b10 + 1);
                }
            } else {
                b10 = 0;
            }
            byte[] bArr = new byte[b10 + 1];
            bArr[b10] = b10;
            for (int i10 = 0; i10 < b10; i10++) {
                bArr[i10] = (byte) (j10 >> (((b10 - i10) - 1) * 8));
            }
            return bArr;
        }

        public final void a(byte[] bArr) {
            int length = bArr == null ? 0 : bArr.length;
            byte[] g10 = g(length);
            byte[] Q10 = bArr == null ? new byte[g10.length + length] : org.bouncycastle.util.a.Q(bArr, g10.length + length);
            this.f9953e = Q10;
            System.arraycopy(g10, 0, Q10, length, g10.length);
        }

        @Override
        public int c(byte[] bArr, int i10) {
            return e(bArr, i10, f());
        }

        public void d(b bVar) {
            a(bVar.b());
            reset();
        }

        @Override
        public int e(byte[] bArr, int i10, int i11) {
            if (this.f9954f) {
                throw new IllegalStateException(C2650h.f9835r);
            }
            int h10 = h(bArr, i10, i11);
            reset();
            return h10;
        }

        @Override
        public int f() {
            return this.f9952d >> 1;
        }

        @Override
        public int h(byte[] bArr, int i10, int i11) {
            if (!this.f9954f) {
                n();
            }
            if (i11 < 0) {
                throw new IllegalArgumentException("Invalid output length");
            }
            this.f9950b.l(bArr, i10, i11);
            return i11;
        }

        @Override
        public int i() {
            return this.f9950b.f9962b;
        }

        public final void j(byte[] bArr, int i10, int i11) {
            if (this.f9954f) {
                throw new IllegalStateException("attempt to absorb while squeezing");
            }
            c cVar = this.f9955g == 0 ? this.f9950b : this.f9951c;
            int i12 = 8192 - this.f9956h;
            if (i12 >= i11) {
                cVar.d(bArr, i10, i11);
                this.f9956h += i11;
                return;
            }
            if (i12 > 0) {
                cVar.d(bArr, i10, i12);
                this.f9956h += i12;
            }
            while (i12 < i11) {
                if (this.f9956h == 8192) {
                    l(true);
                }
                int min = Math.min(i11 - i12, 8192);
                this.f9951c.d(bArr, i10 + i12, min);
                this.f9956h += min;
                i12 += min;
            }
        }

        public final void k() {
            l(false);
            byte[] g10 = g(this.f9955g);
            this.f9950b.d(g10, 0, g10.length);
            c cVar = this.f9950b;
            byte[] bArr = f9947m;
            cVar.d(bArr, 0, bArr.length);
            this.f9950b.k();
        }

        public final void l(boolean z10) {
            if (this.f9955g == 0) {
                c cVar = this.f9950b;
                byte[] bArr = f9948n;
                cVar.d(bArr, 0, bArr.length);
            } else {
                c cVar2 = this.f9951c;
                byte[] bArr2 = f9946l;
                cVar2.d(bArr2, 0, bArr2.length);
                int i10 = this.f9952d;
                byte[] bArr3 = new byte[i10];
                this.f9951c.l(bArr3, 0, i10);
                this.f9950b.d(bArr3, 0, this.f9952d);
                this.f9951c.j();
            }
            if (z10) {
                this.f9955g++;
            }
            this.f9956h = 0;
        }

        public final void m() {
            this.f9950b.d(f9945k, 0, 1);
            this.f9950b.k();
        }

        public final void n() {
            byte[] bArr = this.f9953e;
            j(bArr, 0, bArr.length);
            if (this.f9955g == 0) {
                m();
            } else {
                k();
            }
        }

        @Override
        public void reset() {
            this.f9950b.j();
            this.f9951c.j();
            this.f9955g = 0;
            this.f9956h = 0;
            this.f9954f = false;
        }

        @Override
        public void update(byte b10) {
            byte[] bArr = this.f9949a;
            bArr[0] = b10;
            update(bArr, 0, 1);
        }

        @Override
        public void update(byte[] bArr, int i10, int i11) {
            j(bArr, i10, i11);
        }
    }

    public static class b implements InterfaceC2379k {

        public byte[] f9958b;

        public static class a {

            public byte[] f9959a;

            public b a() {
                b bVar = new b();
                byte[] bArr = this.f9959a;
                if (bArr != null) {
                    bVar.f9958b = bArr;
                }
                return bVar;
            }

            public a b(byte[] bArr) {
                this.f9959a = org.bouncycastle.util.a.p(bArr);
                return this;
            }
        }

        public byte[] b() {
            return org.bouncycastle.util.a.p(this.f9958b);
        }
    }

    public static class c {

        public static long[] f9960g = {1, 32898, -9223372036854742902L, -9223372034707259392L, 32907, 2147483649L, -9223372034707259263L, -9223372036854743031L, 138, 136, 2147516425L, 2147483658L, 2147516555L, -9223372036854775669L, -9223372036854742903L, -9223372036854743037L, -9223372036854743038L, -9223372036854775680L, 32778, -9223372034707292150L, -9223372034707259263L, -9223372036854742912L, 2147483649L, -9223372034707259384L};

        public final int f9961a;

        public final int f9962b;

        public final long[] f9963c = new long[25];

        public final byte[] f9964d;

        public int f9965e;

        public boolean f9966f;

        public c(int i10, int i11) {
            int i12 = (1600 - (i10 << 1)) >> 3;
            this.f9962b = i12;
            this.f9961a = i11;
            this.f9964d = new byte[i12];
            j();
        }

        public final void a(byte[] bArr, int i10) {
            int i11 = this.f9962b >> 3;
            for (int i12 = 0; i12 < i11; i12++) {
                long[] jArr = this.f9963c;
                jArr[i12] = jArr[i12] ^ org.bouncycastle.util.p.x(bArr, i10);
                i10 += 8;
            }
            c();
        }

        public final void b() {
            org.bouncycastle.util.p.K(this.f9963c, 0, this.f9962b >> 3, this.f9964d, 0);
        }

        public final void c() {
            c cVar = this;
            long[] jArr = cVar.f9963c;
            long j10 = jArr[0];
            char c10 = 1;
            long j11 = jArr[1];
            long j12 = jArr[2];
            long j13 = jArr[3];
            long j14 = jArr[4];
            long j15 = jArr[5];
            long j16 = jArr[6];
            long j17 = jArr[7];
            long j18 = jArr[8];
            long j19 = jArr[9];
            long j20 = jArr[10];
            long j21 = jArr[11];
            long j22 = jArr[12];
            long j23 = jArr[13];
            long j24 = jArr[14];
            long j25 = jArr[15];
            long j26 = jArr[16];
            long j27 = jArr[17];
            long j28 = jArr[18];
            long j29 = jArr[19];
            long j30 = jArr[20];
            long j31 = jArr[21];
            long j32 = jArr[22];
            long j33 = jArr[23];
            long j34 = jArr[24];
            int length = f9960g.length - cVar.f9961a;
            int i10 = 0;
            while (i10 < cVar.f9961a) {
                long j35 = (((j10 ^ j15) ^ j20) ^ j25) ^ j30;
                long j36 = (((j11 ^ j16) ^ j21) ^ j26) ^ j31;
                long j37 = (((j12 ^ j17) ^ j22) ^ j27) ^ j32;
                long j38 = (((j13 ^ j18) ^ j23) ^ j28) ^ j33;
                long j39 = (((j14 ^ j19) ^ j24) ^ j29) ^ j34;
                long j40 = ((j36 << c10) | (j36 >>> (-1))) ^ j39;
                long j41 = ((j37 << c10) | (j37 >>> (-1))) ^ j35;
                long j42 = ((j38 << c10) | (j38 >>> (-1))) ^ j36;
                long j43 = ((j39 << c10) | (j39 >>> (-1))) ^ j37;
                long j44 = ((j35 << c10) | (j35 >>> (-1))) ^ j38;
                long j45 = j10 ^ j40;
                long j46 = j15 ^ j40;
                long j47 = j20 ^ j40;
                long j48 = j25 ^ j40;
                long j49 = j30 ^ j40;
                long j50 = j11 ^ j41;
                long j51 = j16 ^ j41;
                long j52 = j21 ^ j41;
                long j53 = j26 ^ j41;
                long j54 = j31 ^ j41;
                long j55 = j12 ^ j42;
                long j56 = j17 ^ j42;
                long j57 = j22 ^ j42;
                long j58 = j27 ^ j42;
                long j59 = j32 ^ j42;
                long j60 = j13 ^ j43;
                long j61 = j18 ^ j43;
                long j62 = j23 ^ j43;
                long j63 = j28 ^ j43;
                long j64 = j33 ^ j43;
                long j65 = j14 ^ j44;
                long j66 = j19 ^ j44;
                long j67 = j24 ^ j44;
                long j68 = j29 ^ j44;
                long j69 = j34 ^ j44;
                long j70 = (j50 << c10) | (j50 >>> 63);
                long j71 = (j51 << 44) | (j51 >>> 20);
                long j72 = (j66 << 20) | (j66 >>> 44);
                long j73 = (j59 << 61) | (j59 >>> 3);
                int i11 = length;
                long j74 = (j67 << 39) | (j67 >>> 25);
                long j75 = (j49 << 18) | (j49 >>> 46);
                long j76 = (j55 << 62) | (j55 >>> 2);
                long j77 = (j57 << 43) | (j57 >>> 21);
                long j78 = (j62 << 25) | (j62 >>> 39);
                long j79 = (j68 << 8) | (j68 >>> 56);
                long j80 = (j64 << 56) | (j64 >>> 8);
                long j81 = (j48 << 41) | (j48 >>> 23);
                long j82 = (j65 << 27) | (j65 >>> 37);
                long j83 = (j69 << 14) | (j69 >>> 50);
                long j84 = (j54 << 2) | (j54 >>> 62);
                long j85 = (j61 << 55) | (j61 >>> 9);
                long j86 = (j53 << 45) | (j53 >>> 19);
                long j87 = (j46 << 36) | (j46 >>> 28);
                long j88 = (j60 << 28) | (j60 >>> 36);
                long j89 = (j63 << 21) | (j63 >>> 43);
                long j90 = (j58 << 15) | (j58 >>> 49);
                long j91 = (j52 << 10) | (j52 >>> 54);
                long j92 = (j56 << 6) | (j56 >>> 58);
                long j93 = (j47 << 3) | (j47 >>> 61);
                long j94 = ((~j71) & j77) ^ j45;
                long j95 = ((~j77) & j89) ^ j71;
                j12 = j77 ^ ((~j89) & j83);
                long j96 = ((~j83) & j45) ^ j89;
                long j97 = ((~j45) & j71) ^ j83;
                long j98 = j88 ^ ((~j72) & j93);
                long j99 = ((~j93) & j86) ^ j72;
                long j100 = ((~j86) & j73) ^ j93;
                long j101 = j86 ^ ((~j73) & j88);
                long j102 = ((~j88) & j72) ^ j73;
                j20 = j70 ^ ((~j92) & j78);
                long j103 = ((~j78) & j79) ^ j92;
                long j104 = ((~j79) & j75) ^ j78;
                long j105 = j79 ^ ((~j75) & j70);
                long j106 = ((~j70) & j92) ^ j75;
                long j107 = j82 ^ ((~j87) & j91);
                long j108 = ((~j91) & j90) ^ j87;
                long j109 = j91 ^ ((~j90) & j80);
                long j110 = ((~j80) & j82) ^ j90;
                long j111 = ((~j82) & j87) ^ j80;
                j30 = j76 ^ ((~j85) & j74);
                long j112 = ((~j74) & j81) ^ j85;
                long j113 = ((~j81) & j84) ^ j74;
                long j114 = j81 ^ ((~j84) & j76);
                long j115 = ((~j76) & j85) ^ j84;
                long j116 = j94 ^ f9960g[i11 + i10];
                i10++;
                j15 = j98;
                j22 = j104;
                j21 = j103;
                j23 = j105;
                j32 = j113;
                j31 = j112;
                j18 = j101;
                j26 = j108;
                j34 = j115;
                j10 = j116;
                j27 = j109;
                j11 = j95;
                c10 = 1;
                j33 = j114;
                j25 = j107;
                jArr = jArr;
                cVar = this;
                length = i11;
                j13 = j96;
                j14 = j97;
                j28 = j110;
                j24 = j106;
                j17 = j100;
                j16 = j99;
                j19 = j102;
                j29 = j111;
            }
            long[] jArr2 = jArr;
            jArr2[0] = j10;
            jArr2[1] = j11;
            jArr2[2] = j12;
            jArr2[3] = j13;
            jArr2[4] = j14;
            jArr2[5] = j15;
            jArr2[6] = j16;
            jArr2[7] = j17;
            jArr2[8] = j18;
            jArr2[9] = j19;
            jArr2[10] = j20;
            jArr2[11] = j21;
            jArr2[12] = j22;
            jArr2[13] = j23;
            jArr2[14] = j24;
            jArr2[15] = j25;
            jArr2[16] = j26;
            jArr2[17] = j27;
            jArr2[18] = j28;
            jArr2[19] = j29;
            jArr2[20] = j30;
            jArr2[21] = j31;
            jArr2[22] = j32;
            jArr2[23] = j33;
            jArr2[24] = j34;
        }

        public final void d(byte[] bArr, int i10, int i11) {
            int i12;
            if (this.f9966f) {
                throw new IllegalStateException("attempt to absorb while squeezing");
            }
            int i13 = 0;
            while (i13 < i11) {
                int i14 = this.f9965e;
                if (i14 != 0 || i13 > i11 - this.f9962b) {
                    int min = Math.min(this.f9962b - i14, i11 - i13);
                    System.arraycopy(bArr, i10 + i13, this.f9964d, this.f9965e, min);
                    int i15 = this.f9965e + min;
                    this.f9965e = i15;
                    i13 += min;
                    if (i15 == this.f9962b) {
                        a(this.f9964d, 0);
                        this.f9965e = 0;
                    }
                } else {
                    do {
                        a(bArr, i10 + i13);
                        i12 = this.f9962b;
                        i13 += i12;
                    } while (i13 <= i11 - i12);
                }
            }
        }

        public final void j() {
            org.bouncycastle.util.a.l0(this.f9963c, 0L);
            org.bouncycastle.util.a.e0(this.f9964d, (byte) 0);
            this.f9965e = 0;
            this.f9966f = false;
        }

        public final void k() {
            int i10 = this.f9965e;
            while (true) {
                int i11 = this.f9962b;
                if (i10 >= i11) {
                    byte[] bArr = this.f9964d;
                    int i12 = i11 - 1;
                    bArr[i12] = (byte) (bArr[i12] ^ 128);
                    a(bArr, 0);
                    b();
                    this.f9965e = this.f9962b;
                    this.f9966f = true;
                    return;
                }
                this.f9964d[i10] = 0;
                i10++;
            }
        }

        public final void l(byte[] bArr, int i10, int i11) {
            if (!this.f9966f) {
                k();
            }
            int i12 = 0;
            while (i12 < i11) {
                if (this.f9965e == 0) {
                    c();
                    b();
                    this.f9965e = this.f9962b;
                }
                int min = Math.min(this.f9965e, i11 - i12);
                System.arraycopy(this.f9964d, this.f9962b - this.f9965e, bArr, i10 + i12, min);
                this.f9965e -= min;
                i12 += min;
            }
        }
    }

    public static class d extends a {
        public d() {
            this(32, EnumC2383o.ANY);
        }

        @Override
        public String b() {
            return "KangarooTwelve";
        }

        @Override
        public int c(byte[] bArr, int i10) {
            return super.c(bArr, i10);
        }

        @Override
        public void d(b bVar) {
            super.d(bVar);
        }

        @Override
        public int e(byte[] bArr, int i10, int i11) {
            return super.e(bArr, i10, i11);
        }

        @Override
        public int f() {
            return super.f();
        }

        @Override
        public int h(byte[] bArr, int i10, int i11) {
            return super.h(bArr, i10, i11);
        }

        @Override
        public int i() {
            return super.i();
        }

        @Override
        public void reset() {
            super.reset();
        }

        @Override
        public void update(byte b10) {
            super.update(b10);
        }

        public d(int i10, EnumC2383o enumC2383o) {
            super(128, 12, i10, enumC2383o);
        }

        @Override
        public void update(byte[] bArr, int i10, int i11) {
            super.update(bArr, i10, i11);
        }

        public d(EnumC2383o enumC2383o) {
            this(32, enumC2383o);
        }
    }

    public static class e extends a {
        public e() {
            this(32, EnumC2383o.ANY);
        }

        @Override
        public String b() {
            return "MarsupilamiFourteen";
        }

        @Override
        public int c(byte[] bArr, int i10) {
            return super.c(bArr, i10);
        }

        @Override
        public void d(b bVar) {
            super.d(bVar);
        }

        @Override
        public int e(byte[] bArr, int i10, int i11) {
            return super.e(bArr, i10, i11);
        }

        @Override
        public int f() {
            return super.f();
        }

        @Override
        public int h(byte[] bArr, int i10, int i11) {
            return super.h(bArr, i10, i11);
        }

        @Override
        public int i() {
            return super.i();
        }

        @Override
        public void reset() {
            super.reset();
        }

        @Override
        public void update(byte b10) {
            super.update(b10);
        }

        public e(int i10, EnumC2383o enumC2383o) {
            super(256, 14, i10, enumC2383o);
        }

        @Override
        public void update(byte[] bArr, int i10, int i11) {
            super.update(bArr, i10, i11);
        }

        public e(EnumC2383o enumC2383o) {
            this(32, enumC2383o);
        }
    }
}
