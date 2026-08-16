package Ii;

import Bi.EnumC2383o;
import Bi.InterfaceC2382n;

public abstract class AbstractC2664w implements Bi.D, org.bouncycastle.util.n, InterfaceC2653k {

    public static final int f9975p = 128;

    public static final long[] f9976q = {4794697086780616226L, 8158064640168781261L, -5349999486874862801L, -1606136188198331460L, 4131703408338449720L, 6480981068601479193L, -7908458776815382629L, -6116909921290321640L, -2880145864133508542L, 1334009975649890238L, 2608012711638119052L, 6128411473006802146L, 8268148722764581231L, -9160688886553864527L, -7215885187991268811L, -4495734319001033068L, -1973867731355612462L, -1171420211273849373L, 1135362057144423861L, 2597628984639134821L, 3308224258029322869L, 5365058923640841347L, 6679025012923562964L, 8573033837759648693L, -7476448914759557205L, -6327057829258317296L, -5763719355590565569L, -4658551843659510044L, -4116276920077217854L, -3051310485924567259L, 489312712824947311L, 1452737877330783856L, 2861767655752347644L, 3322285676063803686L, 5560940570517711597L, 5996557281743188959L, 7280758554555802590L, 8532644243296465576L, -9096487096722542874L, -7894198246740708037L, -6719396339535248540L, -6333637450476146687L, -4446306890439682159L, -4076793802049405392L, -3345356375505022440L, -2983346525034927856L, -860691631967231958L, 1182934255886127544L, 1847814050463011016L, 2177327727835720531L, 2830643537854262169L, 3796741975233480872L, 4115178125766777443L, 5681478168544905931L, 6601373596472566643L, 7507060721942968483L, 8399075790359081724L, 8693463985226723168L, -8878714635349349518L, -8302665154208450068L, -8016688836872298968L, -6606660893046293015L, -4685533653050689259L, -4147400797238176981L, -3880063495543823972L, -3348786107499101689L, -1523767162380948706L, -757361751448694408L, 500013540394364858L, 748580250866718886L, 1242879168328830382L, 1977374033974150939L, 2944078676154940804L, 3659926193048069267L, 4368137639120453308L, 4836135668995329356L, 5532061633213252278L, 6448918945643986474L, 6902733635092675308L, 7801388544844847127L};

    public final EnumC2383o f9977a;

    public byte[] f9978b;

    public int f9979c;

    public long f9980d;

    public long f9981e;

    public long f9982f;

    public long f9983g;

    public long f9984h;

    public long f9985i;

    public long f9986j;

    public long f9987k;

    public long f9988l;

    public long f9989m;

    public long[] f9990n;

    public int f9991o;

    public AbstractC2664w() {
        this(EnumC2383o.ANY);
    }

    public final long d(long j10, long j11, long j12) {
        return ((~j10) & j12) ^ (j11 & j10);
    }

    @Override
    public int i() {
        return 128;
    }

    public final long k(long j10, long j11, long j12) {
        return ((j10 & j12) ^ (j10 & j11)) ^ (j11 & j12);
    }

    public final long l(long j10) {
        return (j10 >>> 7) ^ (((j10 << 63) | (j10 >>> 1)) ^ ((j10 << 56) | (j10 >>> 8)));
    }

    public final long m(long j10) {
        return (j10 >>> 6) ^ (((j10 << 45) | (j10 >>> 19)) ^ ((j10 << 3) | (j10 >>> 61)));
    }

    public final long n(long j10) {
        return ((j10 >>> 39) | (j10 << 25)) ^ (((j10 << 36) | (j10 >>> 28)) ^ ((j10 << 30) | (j10 >>> 34)));
    }

    public final long o(long j10) {
        return ((j10 >>> 41) | (j10 << 23)) ^ (((j10 << 50) | (j10 >>> 14)) ^ ((j10 << 46) | (j10 >>> 18)));
    }

    public final void p() {
        long j10 = this.f9980d;
        if (j10 > 2305843009213693951L) {
            this.f9981e += j10 >>> 61;
            this.f9980d = j10 & 2305843009213693951L;
        }
    }

    public void q(AbstractC2664w abstractC2664w) {
        byte[] bArr = abstractC2664w.f9978b;
        System.arraycopy(bArr, 0, this.f9978b, 0, bArr.length);
        this.f9979c = abstractC2664w.f9979c;
        this.f9980d = abstractC2664w.f9980d;
        this.f9981e = abstractC2664w.f9981e;
        this.f9982f = abstractC2664w.f9982f;
        this.f9983g = abstractC2664w.f9983g;
        this.f9984h = abstractC2664w.f9984h;
        this.f9985i = abstractC2664w.f9985i;
        this.f9986j = abstractC2664w.f9986j;
        this.f9987k = abstractC2664w.f9987k;
        this.f9988l = abstractC2664w.f9988l;
        this.f9989m = abstractC2664w.f9989m;
        long[] jArr = abstractC2664w.f9990n;
        System.arraycopy(jArr, 0, this.f9990n, 0, jArr.length);
        this.f9991o = abstractC2664w.f9991o;
    }

    public abstract InterfaceC2382n r();

    @Override
    public void reset() {
        this.f9980d = 0L;
        this.f9981e = 0L;
        int i10 = 0;
        this.f9979c = 0;
        int i11 = 0;
        while (true) {
            byte[] bArr = this.f9978b;
            if (i11 >= bArr.length) {
                break;
            }
            bArr[i11] = 0;
            i11++;
        }
        this.f9991o = 0;
        while (true) {
            long[] jArr = this.f9990n;
            if (i10 == jArr.length) {
                return;
            }
            jArr[i10] = 0;
            i10++;
        }
    }

    public void s() {
        p();
        long j10 = this.f9980d << 3;
        long j11 = this.f9981e;
        byte b10 = Byte.MIN_VALUE;
        while (true) {
            update(b10);
            if (this.f9979c == 0) {
                w(j10, j11);
                v();
                return;
            }
            b10 = 0;
        }
    }

    public int t() {
        return (this.f9991o * 8) + 96;
    }

    public void u(byte[] bArr) {
        System.arraycopy(this.f9978b, 0, bArr, 0, this.f9979c);
        org.bouncycastle.util.p.h(this.f9979c, bArr, 8);
        org.bouncycastle.util.p.D(this.f9980d, bArr, 12);
        org.bouncycastle.util.p.D(this.f9981e, bArr, 20);
        org.bouncycastle.util.p.D(this.f9982f, bArr, 28);
        org.bouncycastle.util.p.D(this.f9983g, bArr, 36);
        org.bouncycastle.util.p.D(this.f9984h, bArr, 44);
        org.bouncycastle.util.p.D(this.f9985i, bArr, 52);
        org.bouncycastle.util.p.D(this.f9986j, bArr, 60);
        org.bouncycastle.util.p.D(this.f9987k, bArr, 68);
        org.bouncycastle.util.p.D(this.f9988l, bArr, 76);
        org.bouncycastle.util.p.D(this.f9989m, bArr, 84);
        org.bouncycastle.util.p.h(this.f9991o, bArr, 92);
        for (int i10 = 0; i10 < this.f9991o; i10++) {
            org.bouncycastle.util.p.D(this.f9990n[i10], bArr, (i10 * 8) + 96);
        }
    }

    @Override
    public void update(byte b10) {
        byte[] bArr = this.f9978b;
        int i10 = this.f9979c;
        int i11 = i10 + 1;
        this.f9979c = i11;
        bArr[i10] = b10;
        if (i11 == bArr.length) {
            x(bArr, 0);
            this.f9979c = 0;
        }
        this.f9980d++;
    }

    public void v() {
        p();
        for (int i10 = 16; i10 <= 79; i10++) {
            long[] jArr = this.f9990n;
            long m10 = m(jArr[i10 - 2]);
            long[] jArr2 = this.f9990n;
            jArr[i10] = m10 + jArr2[i10 - 7] + l(jArr2[i10 - 15]) + this.f9990n[i10 - 16];
        }
        long j10 = this.f9982f;
        long j11 = this.f9983g;
        long j12 = this.f9984h;
        long j13 = this.f9985i;
        long j14 = this.f9986j;
        long j15 = this.f9987k;
        long j16 = this.f9988l;
        long j17 = j15;
        long j18 = j13;
        int i11 = 0;
        long j19 = j11;
        long j20 = j12;
        long j21 = j14;
        int i12 = 0;
        long j22 = this.f9989m;
        long j23 = j10;
        long j24 = j16;
        while (i12 < 10) {
            long j25 = j21;
            long o10 = o(j21) + d(j21, j17, j24);
            long[] jArr3 = f9976q;
            int i13 = i11 + 1;
            long j26 = j22 + o10 + jArr3[i11] + this.f9990n[i11];
            long j27 = j18 + j26;
            long n10 = j26 + n(j23) + k(j23, j19, j20);
            int i14 = i11 + 2;
            long o11 = j24 + o(j27) + d(j27, j25, j17) + jArr3[i13] + this.f9990n[i13];
            long j28 = j20 + o11;
            long n11 = o11 + n(n10) + k(n10, j23, j19);
            int i15 = i11 + 3;
            long o12 = j17 + o(j28) + d(j28, j27, j25) + jArr3[i14] + this.f9990n[i14];
            long j29 = j19 + o12;
            long n12 = o12 + n(n11) + k(n11, n10, j23);
            int i16 = i11 + 4;
            long o13 = j25 + o(j29) + d(j29, j28, j27) + jArr3[i15] + this.f9990n[i15];
            long j30 = j23 + o13;
            long n13 = o13 + n(n12) + k(n12, n11, n10);
            int i17 = i11 + 5;
            long o14 = j27 + o(j30) + d(j30, j29, j28) + jArr3[i16] + this.f9990n[i16];
            long j31 = n10 + o14;
            long n14 = o14 + n(n13) + k(n13, n12, n11);
            int i18 = i11 + 6;
            long o15 = j28 + o(j31) + d(j31, j30, j29) + jArr3[i17] + this.f9990n[i17];
            long j32 = n11 + o15;
            long n15 = o15 + n(n14) + k(n14, n13, n12);
            j24 = j32;
            int i19 = i11 + 7;
            long o16 = j29 + o(j32) + d(j32, j31, j30) + jArr3[i18] + this.f9990n[i18];
            long j33 = n12 + o16;
            j17 = j33;
            j19 = o16 + n(n15) + k(n15, n14, n13);
            i11 += 8;
            long o17 = j30 + o(j33) + d(j33, j24, j31) + jArr3[i19] + this.f9990n[i19];
            long n16 = o17 + n(j19) + k(j19, n15, n14);
            i12++;
            j21 = n13 + o17;
            j20 = n15;
            j22 = j31;
            j18 = n14;
            j23 = n16;
        }
        this.f9982f += j23;
        this.f9983g += j19;
        this.f9984h += j20;
        this.f9985i += j18;
        this.f9986j += j21;
        this.f9987k += j17;
        this.f9988l += j24;
        this.f9989m += j22;
        this.f9991o = 0;
        for (int i20 = 0; i20 < 16; i20++) {
            this.f9990n[i20] = 0;
        }
    }

    public void w(long j10, long j11) {
        if (this.f9991o > 14) {
            v();
        }
        long[] jArr = this.f9990n;
        jArr[14] = j11;
        jArr[15] = j10;
    }

    public void x(byte[] bArr, int i10) {
        this.f9990n[this.f9991o] = org.bouncycastle.util.p.d(bArr, i10);
        int i11 = this.f9991o + 1;
        this.f9991o = i11;
        if (i11 == 16) {
            v();
        }
    }

    public void y(byte[] bArr) {
        int a10 = org.bouncycastle.util.p.a(bArr, 8);
        this.f9979c = a10;
        System.arraycopy(bArr, 0, this.f9978b, 0, a10);
        this.f9980d = org.bouncycastle.util.p.d(bArr, 12);
        this.f9981e = org.bouncycastle.util.p.d(bArr, 20);
        this.f9982f = org.bouncycastle.util.p.d(bArr, 28);
        this.f9983g = org.bouncycastle.util.p.d(bArr, 36);
        this.f9984h = org.bouncycastle.util.p.d(bArr, 44);
        this.f9985i = org.bouncycastle.util.p.d(bArr, 52);
        this.f9986j = org.bouncycastle.util.p.d(bArr, 60);
        this.f9987k = org.bouncycastle.util.p.d(bArr, 68);
        this.f9988l = org.bouncycastle.util.p.d(bArr, 76);
        this.f9989m = org.bouncycastle.util.p.d(bArr, 84);
        this.f9991o = org.bouncycastle.util.p.a(bArr, 92);
        for (int i10 = 0; i10 < this.f9991o; i10++) {
            this.f9990n[i10] = org.bouncycastle.util.p.d(bArr, (i10 * 8) + 96);
        }
    }

    public AbstractC2664w(EnumC2383o enumC2383o) {
        this.f9978b = new byte[8];
        this.f9990n = new long[80];
        this.f9977a = enumC2383o;
        this.f9979c = 0;
        reset();
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        while (this.f9979c != 0 && i11 > 0) {
            update(bArr[i10]);
            i10++;
            i11--;
        }
        while (i11 >= this.f9978b.length) {
            x(bArr, i10);
            byte[] bArr2 = this.f9978b;
            i10 += bArr2.length;
            i11 -= bArr2.length;
            this.f9980d += bArr2.length;
        }
        while (i11 > 0) {
            update(bArr[i10]);
            i10++;
            i11--;
        }
    }

    public AbstractC2664w(AbstractC2664w abstractC2664w) {
        this.f9978b = new byte[8];
        this.f9990n = new long[80];
        this.f9977a = abstractC2664w.f9977a;
        q(abstractC2664w);
    }
}
