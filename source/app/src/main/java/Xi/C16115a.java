package xi;

import hi.h0;
import java.io.IOException;
import oh.InterfaceC14520i;
import org.bouncycastle.util.p;

public class C16115a {

    public static abstract class AbstractC2206a {

        public static final int f129800d = 64;

        public byte[] f129801a;

        public int f129802b;

        public long f129803c;

        public AbstractC2206a() {
            this.f129801a = new byte[4];
            this.f129802b = 0;
        }

        public void a(AbstractC2206a abstractC2206a) {
            byte[] bArr = abstractC2206a.f129801a;
            System.arraycopy(bArr, 0, this.f129801a, 0, bArr.length);
            this.f129802b = abstractC2206a.f129802b;
            this.f129803c = abstractC2206a.f129803c;
        }

        public void b() {
            long j10 = this.f129803c << 3;
            byte b10 = Byte.MIN_VALUE;
            while (true) {
                g(b10);
                if (this.f129802b == 0) {
                    d(j10);
                    c();
                    return;
                }
                b10 = 0;
            }
        }

        public abstract void c();

        public abstract void d(long j10);

        public abstract void e(byte[] bArr, int i10);

        public void f() {
            this.f129803c = 0L;
            this.f129802b = 0;
            int i10 = 0;
            while (true) {
                byte[] bArr = this.f129801a;
                if (i10 >= bArr.length) {
                    return;
                }
                bArr[i10] = 0;
                i10++;
            }
        }

        public void g(byte b10) {
            byte[] bArr = this.f129801a;
            int i10 = this.f129802b;
            int i11 = i10 + 1;
            this.f129802b = i11;
            bArr[i10] = b10;
            if (i11 == bArr.length) {
                e(bArr, 0);
                this.f129802b = 0;
            }
            this.f129803c++;
        }

        public void h(byte[] bArr, int i10, int i11) {
            while (this.f129802b != 0 && i11 > 0) {
                g(bArr[i10]);
                i10++;
                i11--;
            }
            while (i11 > this.f129801a.length) {
                e(bArr, i10);
                byte[] bArr2 = this.f129801a;
                i10 += bArr2.length;
                i11 -= bArr2.length;
                this.f129803c += bArr2.length;
            }
            while (i11 > 0) {
                g(bArr[i10]);
                i10++;
                i11--;
            }
        }

        public AbstractC2206a(AbstractC2206a abstractC2206a) {
            this.f129801a = new byte[abstractC2206a.f129801a.length];
            a(abstractC2206a);
        }
    }

    public static class b extends AbstractC2206a {

        public static final int f129804l = 20;

        public static final int f129805m = 1518500249;

        public static final int f129806n = 1859775393;

        public static final int f129807o = -1894007588;

        public static final int f129808p = -899497514;

        public int f129809e;

        public int f129810f;

        public int f129811g;

        public int f129812h;

        public int f129813i;

        public int[] f129814j = new int[80];

        public int f129815k;

        public b() {
            f();
        }

        @Override
        public void c() {
            for (int i10 = 16; i10 < 80; i10++) {
                int[] iArr = this.f129814j;
                int i11 = ((iArr[i10 - 3] ^ iArr[i10 - 8]) ^ iArr[i10 - 14]) ^ iArr[i10 - 16];
                iArr[i10] = (i11 >>> 31) | (i11 << 1);
            }
            int i12 = this.f129809e;
            int i13 = this.f129810f;
            int i14 = this.f129811g;
            int i15 = this.f129812h;
            int i16 = this.f129813i;
            int i17 = 0;
            for (int i18 = 0; i18 < 4; i18++) {
                int j10 = i16 + ((i12 << 5) | (i12 >>> 27)) + j(i13, i14, i15) + this.f129814j[i17] + 1518500249;
                int i19 = (i13 >>> 2) | (i13 << 30);
                int j11 = i15 + ((j10 << 5) | (j10 >>> 27)) + j(i12, i19, i14) + this.f129814j[i17 + 1] + 1518500249;
                int i20 = (i12 >>> 2) | (i12 << 30);
                int j12 = i14 + ((j11 << 5) | (j11 >>> 27)) + j(j10, i20, i19) + this.f129814j[i17 + 2] + 1518500249;
                i16 = (j10 >>> 2) | (j10 << 30);
                int i21 = i17 + 4;
                i13 = i19 + ((j12 << 5) | (j12 >>> 27)) + j(j11, i16, i20) + this.f129814j[i17 + 3] + 1518500249;
                i15 = (j11 >>> 2) | (j11 << 30);
                i17 += 5;
                i12 = i20 + ((i13 << 5) | (i13 >>> 27)) + j(j12, i15, i16) + this.f129814j[i21] + 1518500249;
                i14 = (j12 >>> 2) | (j12 << 30);
            }
            for (int i22 = 0; i22 < 4; i22++) {
                int n10 = i16 + ((i12 << 5) | (i12 >>> 27)) + n(i13, i14, i15) + this.f129814j[i17] + 1859775393;
                int i23 = (i13 >>> 2) | (i13 << 30);
                int n11 = i15 + ((n10 << 5) | (n10 >>> 27)) + n(i12, i23, i14) + this.f129814j[i17 + 1] + 1859775393;
                int i24 = (i12 >>> 2) | (i12 << 30);
                int n12 = i14 + ((n11 << 5) | (n11 >>> 27)) + n(n10, i24, i23) + this.f129814j[i17 + 2] + 1859775393;
                i16 = (n10 >>> 2) | (n10 << 30);
                int i25 = i17 + 4;
                i13 = i23 + ((n12 << 5) | (n12 >>> 27)) + n(n11, i16, i24) + this.f129814j[i17 + 3] + 1859775393;
                i15 = (n11 >>> 2) | (n11 << 30);
                i17 += 5;
                i12 = i24 + ((i13 << 5) | (i13 >>> 27)) + n(n12, i15, i16) + this.f129814j[i25] + 1859775393;
                i14 = (n12 >>> 2) | (n12 << 30);
            }
            for (int i26 = 0; i26 < 4; i26++) {
                int k10 = i16 + (((((i12 << 5) | (i12 >>> 27)) + k(i13, i14, i15)) + this.f129814j[i17]) - 1894007588);
                int k11 = i15 + (((((k10 << 5) | (k10 >>> 27)) + k(i12, r2, i14)) + this.f129814j[i17 + 1]) - 1894007588);
                int k12 = i14 + (((((k11 << 5) | (k11 >>> 27)) + k(k10, r1, r2)) + this.f129814j[i17 + 2]) - 1894007588);
                i16 = (k10 >>> 2) | (k10 << 30);
                int i27 = i17 + 4;
                i13 = ((i13 >>> 2) | (i13 << 30)) + (((((k12 << 5) | (k12 >>> 27)) + k(k11, i16, r1)) + this.f129814j[i17 + 3]) - 1894007588);
                i15 = (k11 >>> 2) | (k11 << 30);
                i17 += 5;
                i12 = ((i12 >>> 2) | (i12 << 30)) + (((((i13 << 5) | (i13 >>> 27)) + k(k12, i15, i16)) + this.f129814j[i27]) - 1894007588);
                i14 = (k12 >>> 2) | (k12 << 30);
            }
            for (int i28 = 0; i28 <= 3; i28++) {
                int n13 = i16 + (((((i12 << 5) | (i12 >>> 27)) + n(i13, i14, i15)) + this.f129814j[i17]) - 899497514);
                int n14 = i15 + (((((n13 << 5) | (n13 >>> 27)) + n(i12, r2, i14)) + this.f129814j[i17 + 1]) - 899497514);
                int n15 = i14 + (((((n14 << 5) | (n14 >>> 27)) + n(n13, r1, r2)) + this.f129814j[i17 + 2]) - 899497514);
                i16 = (n13 >>> 2) | (n13 << 30);
                int i29 = i17 + 4;
                i13 = ((i13 >>> 2) | (i13 << 30)) + (((((n15 << 5) | (n15 >>> 27)) + n(n14, i16, r1)) + this.f129814j[i17 + 3]) - 899497514);
                i15 = (n14 >>> 2) | (n14 << 30);
                i17 += 5;
                i12 = ((i12 >>> 2) | (i12 << 30)) + (((((i13 << 5) | (i13 >>> 27)) + n(n15, i15, i16)) + this.f129814j[i29]) - 899497514);
                i14 = (n15 >>> 2) | (n15 << 30);
            }
            this.f129809e += i12;
            this.f129810f += i13;
            this.f129811g += i14;
            this.f129812h += i15;
            this.f129813i += i16;
            this.f129815k = 0;
            for (int i30 = 0; i30 < 16; i30++) {
                this.f129814j[i30] = 0;
            }
        }

        @Override
        public void d(long j10) {
            if (this.f129815k > 14) {
                c();
            }
            int[] iArr = this.f129814j;
            iArr[14] = (int) (j10 >>> 32);
            iArr[15] = (int) j10;
        }

        @Override
        public void e(byte[] bArr, int i10) {
            int i11 = (bArr[i10 + 3] & 255) | (bArr[i10] << 24) | ((bArr[i10 + 1] & 255) << 16) | ((bArr[i10 + 2] & 255) << 8);
            int[] iArr = this.f129814j;
            int i12 = this.f129815k;
            iArr[i12] = i11;
            int i13 = i12 + 1;
            this.f129815k = i13;
            if (i13 == 16) {
                c();
            }
        }

        @Override
        public void f() {
            super.f();
            this.f129809e = 1732584193;
            this.f129810f = -271733879;
            this.f129811g = -1732584194;
            this.f129812h = 271733878;
            this.f129813i = -1009589776;
            this.f129815k = 0;
            int i10 = 0;
            while (true) {
                int[] iArr = this.f129814j;
                if (i10 == iArr.length) {
                    return;
                }
                iArr[i10] = 0;
                i10++;
            }
        }

        public int i(byte[] bArr, int i10) {
            b();
            p.h(this.f129809e, bArr, i10);
            p.h(this.f129810f, bArr, i10 + 4);
            p.h(this.f129811g, bArr, i10 + 8);
            p.h(this.f129812h, bArr, i10 + 12);
            p.h(this.f129813i, bArr, i10 + 16);
            f();
            return 20;
        }

        public final int j(int i10, int i11, int i12) {
            return ((~i10) & i12) | (i11 & i10);
        }

        public final int k(int i10, int i11, int i12) {
            return (i10 & (i11 | i12)) | (i11 & i12);
        }

        public String l() {
            return "SHA-1";
        }

        public int m() {
            return 20;
        }

        public final int n(int i10, int i11, int i12) {
            return (i10 ^ i11) ^ i12;
        }
    }

    public static byte[] a(h0 h0Var) {
        b bVar = new b();
        byte[] bArr = new byte[bVar.m()];
        try {
            byte[] s10 = h0Var.s(InterfaceC14520i.f98892a);
            bVar.h(s10, 0, s10.length);
            bVar.i(bArr, 0);
            return bArr;
        } catch (IOException unused) {
            return new byte[0];
        }
    }
}
