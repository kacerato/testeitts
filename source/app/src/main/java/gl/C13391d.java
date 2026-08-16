package gl;

public class C13391d {

    public int[] f90040D;

    public long f90042F;

    public C13389b f90043G;

    public int f90044a;

    public int f90045b;

    public int f90046c;

    public int f90047d;

    public int f90048e;

    public int f90049f;

    public int f90050g;

    public int f90051h;

    public int f90052i;

    public int f90053j;

    public int f90054k;

    public int f90055l;

    public int f90060q;

    public int f90061r;

    public int f90062s;

    public int f90063t;

    public int f90064u;

    public int f90065v;

    public int f90066w;

    public int f90067x;

    public int f90068y;

    public int f90056m = 40;

    public byte f90057n = 3;

    public byte f90058o = 4;

    public byte f90059p = 5;

    public int f90069z = 5;

    public int f90037A = 4;

    public int f90038B = 16;

    public int f90039C = 2;

    public int f90041E = 64;

    public C13391d(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, int i20, int[] iArr) {
        this.f90044a = i10;
        this.f90047d = i13;
        this.f90048e = i15;
        this.f90049f = i16;
        this.f90050g = i17;
        this.f90051h = i18;
        this.f90045b = i11;
        this.f90046c = i12;
        int i21 = i11 * i12;
        this.f90061r = i21;
        this.f90040D = iArr;
        this.f90052i = i14;
        this.f90053j = i19;
        this.f90054k = i20;
        this.f90055l = (int) Math.ceil(i12 / 128);
        this.f90060q = p.j(i10);
        this.f90063t = i13;
        this.f90062s = p.i(i10);
        this.f90064u = p.j(i13);
        this.f90065v = p.j(i11);
        this.f90066w = p.i(i21);
        this.f90067x = p.j(i21);
        this.f90068y = p.j(i11);
        long j10 = (1 << ((int) (i10 % 64))) - 1;
        this.f90042F = j10;
        this.f90043G = new C13389b(this.f90062s, i10, j10);
    }

    public void a(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte[] bArr4;
        int i10 = this.f90062s;
        long[] jArr = new long[i10];
        byte[] bArr5 = new byte[this.f90060q + 40];
        f(new long[i10], jArr, bArr5, bArr3);
        byte[] bArr6 = new byte[this.f90060q];
        byte[] bArr7 = new byte[this.f90067x];
        byte[] bArr8 = new byte[this.f90041E];
        byte[] bArr9 = new byte[this.f90038B];
        e(bArr6, bArr7, bArr8, bArr9, bArr2);
        int i11 = this.f90047d;
        byte[] bArr10 = new byte[i11];
        b(bArr10, bArr10, bArr6, bArr7, jArr);
        byte[] bArr11 = new byte[this.f90041E];
        int i12 = this.f90063t + this.f90038B + this.f90056m;
        byte[] bArr12 = new byte[i12];
        System.arraycopy(bArr10, 0, bArr12, 0, i11);
        System.arraycopy(bArr5, 0, bArr12, this.f90063t, this.f90056m);
        System.arraycopy(bArr9, 0, bArr12, this.f90063t + this.f90056m, this.f90038B);
        m mVar = new m(256);
        mVar.a(bArr11, bArr12, i12, new byte[]{this.f90057n});
        long[] jArr2 = new long[this.f90062s];
        byte[] bArr13 = new byte[this.f90060q];
        g(jArr2, bArr13, bArr5);
        byte[] bArr14 = new byte[this.f90060q];
        byte[] bArr15 = new byte[this.f90067x];
        long[] jArr3 = new long[this.f90066w];
        d(bArr14, jArr3, jArr2, bArr13, bArr10, bArr11);
        p.h(bArr15, jArr3);
        byte[] bArr16 = new byte[this.f90041E];
        mVar.a(bArr16, bArr10, i11, new byte[]{this.f90058o});
        byte[] bArr17 = new byte[this.f90063t + this.f90060q + this.f90067x];
        byte[] B10 = org.bouncycastle.util.a.B(org.bouncycastle.util.a.B(bArr10, bArr6), bArr7);
        mVar.a(bArr, B10, B10.length, new byte[]{this.f90059p});
        boolean g10 = org.bouncycastle.util.a.g(bArr6, bArr14);
        if (org.bouncycastle.util.a.g(bArr7, bArr15)) {
            bArr4 = bArr8;
        } else {
            bArr4 = bArr8;
            g10 = false;
        }
        if (!org.bouncycastle.util.a.g(bArr4, bArr16)) {
            g10 = false;
        }
        if (g10) {
            return;
        }
        for (int i13 = 0; i13 < k(); i13++) {
            bArr[i13] = 0;
        }
    }

    public final void b(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, long[] jArr) {
        long[] jArr2 = new long[this.f90062s];
        p.f(jArr2, bArr3);
        int i10 = this.f90066w;
        long[] jArr3 = new long[i10];
        p.f(jArr3, bArr4);
        long[] jArr4 = new long[this.f90062s];
        System.arraycopy(jArr3, 0, jArr4, 0, i10);
        long[] jArr5 = new long[this.f90062s];
        this.f90043G.f(jArr5, jArr, jArr2);
        C13389b.a(jArr5, jArr5, jArr4);
        int i11 = this.f90045b;
        byte[] bArr5 = new byte[i11];
        n.b(bArr5, jArr5, i11, this.f90055l);
        o.e(bArr2, bArr5, this.f90045b, this.f90054k, this.f90048e, this.f90047d, this.f90052i);
        System.arraycopy(bArr2, 0, bArr, 0, bArr.length);
    }

    public void c(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, byte[] bArr6, byte[] bArr7) {
        int i10 = this.f90063t;
        byte[] bArr8 = new byte[i10];
        byte[] bArr9 = new byte[this.f90056m];
        m mVar = new m(256);
        mVar.i(bArr6, null, bArr6.length, 0);
        mVar.k(bArr9, 40);
        mVar.k(new byte[this.f90056m], 40);
        mVar.k(bArr8, this.f90063t);
        byte[] bArr10 = new byte[this.f90041E];
        int i11 = this.f90063t + this.f90056m;
        int i12 = this.f90038B;
        int i13 = i11 + i12;
        byte[] bArr11 = new byte[i13];
        mVar.k(bArr7, i12);
        System.arraycopy(bArr8, 0, bArr11, 0, i10);
        System.arraycopy(bArr5, 0, bArr11, this.f90063t, this.f90056m);
        System.arraycopy(bArr7, 0, bArr11, this.f90063t + this.f90056m, this.f90038B);
        m mVar2 = new m(256);
        mVar2.a(bArr10, bArr11, i13, new byte[]{this.f90057n});
        long[] jArr = new long[this.f90062s];
        byte[] bArr12 = new byte[this.f90060q];
        g(jArr, bArr12, bArr5);
        long[] jArr2 = new long[this.f90066w];
        d(bArr, jArr2, jArr, bArr12, bArr8, bArr10);
        p.h(bArr2, jArr2);
        mVar2.a(bArr4, bArr8, i10, new byte[]{this.f90058o});
        byte[] bArr13 = new byte[this.f90063t + this.f90060q + this.f90067x];
        byte[] B10 = org.bouncycastle.util.a.B(org.bouncycastle.util.a.B(bArr8, bArr), bArr2);
        mVar2.a(bArr3, B10, B10.length, new byte[]{this.f90059p});
    }

    public final void d(byte[] bArr, long[] jArr, long[] jArr2, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        m mVar = new m(256);
        mVar.j(bArr4, this.f90056m);
        int i10 = this.f90062s;
        long[] jArr3 = new long[i10];
        long[] jArr4 = new long[i10];
        long[] jArr5 = new long[i10];
        j(jArr4, mVar, this.f90050g);
        j(jArr5, mVar, this.f90050g);
        j(jArr3, mVar, this.f90051h);
        long[] jArr6 = new long[this.f90062s];
        this.f90043G.f(jArr6, jArr5, jArr2);
        C13389b.a(jArr6, jArr6, jArr4);
        p.h(bArr, jArr6);
        int i11 = this.f90045b;
        byte[] bArr5 = new byte[i11];
        int i12 = this.f90066w;
        long[] jArr7 = new long[i12];
        long[] jArr8 = new long[this.f90062s];
        o.f(bArr5, bArr3, this.f90063t * 8, i11, this.f90047d, this.f90052i, this.f90040D);
        n.c(jArr7, bArr5, this.f90045b, this.f90055l);
        System.arraycopy(jArr7, 0, jArr8, 0, i12);
        long[] jArr9 = new long[this.f90062s];
        p.f(jArr9, bArr2);
        long[] jArr10 = new long[this.f90062s];
        this.f90043G.f(jArr10, jArr5, jArr9);
        C13389b.a(jArr10, jArr10, jArr8);
        C13389b.a(jArr10, jArr10, jArr3);
        int i13 = this.f90061r;
        int i14 = this.f90044a;
        int i15 = this.f90066w;
        p.k(jArr, i13, jArr10, i14, i15, i15);
    }

    public final void e(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        System.arraycopy(bArr5, 0, bArr, 0, bArr.length);
        System.arraycopy(bArr5, bArr.length, bArr2, 0, bArr2.length);
        System.arraycopy(bArr5, bArr.length + bArr2.length, bArr3, 0, bArr3.length);
        System.arraycopy(bArr5, bArr.length + bArr2.length + bArr3.length, bArr4, 0, bArr4.length);
    }

    public final void f(long[] jArr, long[] jArr2, byte[] bArr, byte[] bArr2) {
        int i10 = this.f90056m;
        byte[] bArr3 = new byte[i10];
        System.arraycopy(bArr2, 0, bArr3, 0, i10);
        m mVar = new m(256);
        mVar.j(bArr3, i10);
        j(jArr, mVar, this.f90049f);
        j(jArr2, mVar, this.f90049f);
        System.arraycopy(bArr2, this.f90056m, bArr, 0, bArr.length);
    }

    public final void g(long[] jArr, byte[] bArr, byte[] bArr2) {
        int i10 = this.f90056m;
        byte[] bArr3 = new byte[i10];
        System.arraycopy(bArr2, 0, bArr3, 0, i10);
        m mVar = new m(256);
        mVar.j(bArr3, i10);
        long[] jArr2 = new long[this.f90062s];
        i(jArr2, mVar);
        System.arraycopy(jArr2, 0, jArr, 0, jArr.length);
        System.arraycopy(bArr2, 40, bArr, 0, bArr.length);
    }

    public void h(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int i10 = this.f90056m;
        byte[] bArr4 = new byte[i10];
        m mVar = new m(256);
        mVar.i(bArr3, null, bArr3.length, 0);
        mVar.k(bArr4, 40);
        m mVar2 = new m(256);
        mVar2.j(bArr4, i10);
        int i11 = this.f90062s;
        long[] jArr = new long[i11];
        long[] jArr2 = new long[i11];
        j(jArr, mVar2, this.f90049f);
        j(jArr2, mVar2, this.f90049f);
        int i12 = this.f90056m;
        byte[] bArr5 = new byte[i12];
        mVar.k(bArr5, 40);
        m mVar3 = new m(256);
        mVar3.j(bArr5, i12);
        long[] jArr3 = new long[this.f90062s];
        i(jArr3, mVar3);
        long[] jArr4 = new long[this.f90062s];
        this.f90043G.f(jArr4, jArr2, jArr3);
        C13389b.a(jArr4, jArr4, jArr);
        byte[] bArr6 = new byte[this.f90060q];
        p.h(bArr6, jArr4);
        byte[] B10 = org.bouncycastle.util.a.B(bArr5, bArr6);
        byte[] B11 = org.bouncycastle.util.a.B(bArr4, B10);
        System.arraycopy(B10, 0, bArr, 0, B10.length);
        System.arraycopy(B11, 0, bArr2, 0, B11.length);
    }

    public void i(long[] jArr, m mVar) {
        int i10 = this.f90060q;
        byte[] bArr = new byte[i10];
        mVar.b(bArr, i10);
        long[] jArr2 = new long[this.f90062s];
        p.f(jArr2, bArr);
        int i11 = this.f90062s - 1;
        jArr2[i11] = jArr2[i11] & p.a(this.f90044a, 64L);
        System.arraycopy(jArr2, 0, jArr, 0, jArr.length);
    }

    public final void j(long[] jArr, m mVar, int i10) {
        int i11 = this.f90050g;
        byte[] bArr = new byte[i11 * 4];
        int[] iArr = new int[i11];
        int[] iArr2 = new int[i11];
        long[] jArr2 = new long[i11];
        mVar.b(bArr, i10 * 4);
        org.bouncycastle.util.p.t(bArr, 0, new int[i11], 0, i11);
        for (int i12 = 0; i12 < i10; i12++) {
            iArr[i12] = (int) (i12 + ((r1[i12] & 4294967295L) % (this.f90044a - i12)));
        }
        for (int i13 = i10 - 1; i13 >= 0; i13--) {
            int i14 = 0;
            for (int i15 = i13 + 1; i15 < i10; i15++) {
                if (iArr[i15] == iArr[i13]) {
                    i14 = 1;
                }
            }
            int i16 = -i14;
            iArr[i13] = ((~i16) & iArr[i13]) ^ (i16 & i13);
        }
        for (int i17 = 0; i17 < i10; i17++) {
            iArr2[i17] = iArr[i17] >>> 6;
            jArr2[i17] = 1 << (iArr[i17] & 63);
        }
        for (int i18 = 0; i18 < this.f90062s; i18++) {
            long j10 = 0;
            for (int i19 = 0; i19 < i10; i19++) {
                int i20 = i18 - iArr2[i19];
                j10 |= (-(((i20 | (-i20)) >>> 31) ^ 1)) & jArr2[i19];
            }
            jArr[i18] = j10 | jArr[i18];
        }
    }

    public int k() {
        return this.f90041E;
    }
}
