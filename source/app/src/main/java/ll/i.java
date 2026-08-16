package ll;

import java.lang.reflect.Array;

public class i extends g {

    public final byte[] f96596e;

    public final short[][] f96597f;

    public final short[][] f96598g;

    public final short[][] f96599h;

    public final short[][] f96600i;

    public final short[][][] f96601j;

    public final short[][][] f96602k;

    public final short[][][] f96603l;

    public final short[][][] f96604m;

    public final short[][][] f96605n;

    public final short[][][] f96606o;

    public final short[][][] f96607p;

    public final byte[] f96608q;

    public byte[] f96609r;

    public i(h hVar, byte[] bArr) {
        super(true, hVar);
        if (hVar.l() == n.COMPRESSED) {
            byte[] X10 = org.bouncycastle.util.a.X(bArr, 0, hVar.b());
            this.f96608q = X10;
            byte[] X11 = org.bouncycastle.util.a.X(bArr, hVar.b(), hVar.b() + hVar.d());
            this.f96596e = X11;
            i m10 = new C14158d(hVar, X10, X11).m();
            this.f96609r = m10.f96609r;
            this.f96597f = m10.f96597f;
            this.f96598g = m10.f96598g;
            this.f96599h = m10.f96599h;
            this.f96600i = m10.f96600i;
            this.f96601j = m10.f96601j;
            this.f96602k = m10.f96602k;
            this.f96603l = m10.f96603l;
            this.f96604m = m10.f96604m;
            this.f96605n = m10.f96605n;
            this.f96606o = m10.f96606o;
            this.f96607p = m10.f96607p;
            return;
        }
        int j10 = hVar.j();
        int h10 = hVar.h();
        int i10 = hVar.i();
        Class<Short> cls = Short.TYPE;
        short[][] sArr = (short[][]) Array.newInstance(cls, h10, i10);
        this.f96597f = sArr;
        short[][] sArr2 = (short[][]) Array.newInstance(cls, j10, h10);
        this.f96598g = sArr2;
        short[][] sArr3 = (short[][]) Array.newInstance(cls, j10, i10);
        this.f96600i = sArr3;
        short[][] sArr4 = (short[][]) Array.newInstance(cls, h10, i10);
        this.f96599h = sArr4;
        short[][][] sArr5 = (short[][][]) Array.newInstance(cls, h10, j10, j10);
        this.f96601j = sArr5;
        short[][][] sArr6 = (short[][][]) Array.newInstance(cls, h10, j10, h10);
        this.f96602k = sArr6;
        short[][][] sArr7 = (short[][][]) Array.newInstance(cls, i10, j10, j10);
        this.f96603l = sArr7;
        short[][][] sArr8 = (short[][][]) Array.newInstance(cls, i10, j10, h10);
        this.f96604m = sArr8;
        short[][][] sArr9 = (short[][][]) Array.newInstance(cls, i10, j10, i10);
        this.f96605n = sArr9;
        short[][][] sArr10 = (short[][][]) Array.newInstance(cls, i10, h10, h10);
        this.f96606o = sArr10;
        short[][][] sArr11 = (short[][][]) Array.newInstance(cls, i10, h10, i10);
        this.f96607p = sArr11;
        this.f96608q = null;
        byte[] X12 = org.bouncycastle.util.a.X(bArr, 0, hVar.d());
        this.f96596e = X12;
        int length = X12.length;
        int n10 = length + m.n(sArr, bArr, length);
        int n11 = n10 + m.n(sArr2, bArr, n10);
        int n12 = n11 + m.n(sArr3, bArr, n11);
        int n13 = n12 + m.n(sArr4, bArr, n12);
        int o10 = n13 + m.o(sArr5, bArr, n13, true);
        int o11 = o10 + m.o(sArr6, bArr, o10, false);
        int o12 = o11 + m.o(sArr7, bArr, o11, true);
        int o13 = o12 + m.o(sArr8, bArr, o12, false);
        int o14 = o13 + m.o(sArr9, bArr, o13, false);
        int o15 = o14 + m.o(sArr10, bArr, o14, true);
        this.f96609r = org.bouncycastle.util.a.X(bArr, o15 + m.o(sArr11, bArr, o15, false), bArr.length);
    }

    public short[][][] f() {
        return m.b(this.f96601j);
    }

    public short[][][] g() {
        return m.b(this.f96602k);
    }

    public byte[] getEncoded() {
        return e().l() == n.COMPRESSED ? org.bouncycastle.util.a.B(this.f96608q, this.f96596e) : org.bouncycastle.util.a.B(m(), this.f96609r);
    }

    public short[][][] h() {
        return m.b(this.f96603l);
    }

    public short[][][] i() {
        return m.b(this.f96604m);
    }

    public short[][][] j() {
        return m.b(this.f96605n);
    }

    public short[][][] k() {
        return m.b(this.f96606o);
    }

    public short[][][] l() {
        return m.b(this.f96607p);
    }

    public byte[] m() {
        return e().l() == n.COMPRESSED ? org.bouncycastle.util.a.B(this.f96608q, this.f96596e) : org.bouncycastle.util.a.B(org.bouncycastle.util.a.B(org.bouncycastle.util.a.B(org.bouncycastle.util.a.B(org.bouncycastle.util.a.B(org.bouncycastle.util.a.B(org.bouncycastle.util.a.B(org.bouncycastle.util.a.B(org.bouncycastle.util.a.B(org.bouncycastle.util.a.B(org.bouncycastle.util.a.B(this.f96596e, m.j(this.f96597f)), m.j(this.f96598g)), m.j(this.f96600i)), m.j(this.f96599h)), m.k(this.f96601j, true)), m.k(this.f96602k, false)), m.k(this.f96603l, true)), m.k(this.f96604m, false)), m.k(this.f96605n, false)), m.k(this.f96606o, true)), m.k(this.f96607p, false));
    }

    public byte[] n() {
        return this.f96609r;
    }

    public short[][] o() {
        return m.a(this.f96597f);
    }

    public byte[] p() {
        return org.bouncycastle.util.a.p(this.f96596e);
    }

    public short[][] q() {
        return m.a(this.f96598g);
    }

    public short[][] r() {
        return m.a(this.f96599h);
    }

    public short[][] s() {
        return m.a(this.f96600i);
    }

    public i(h hVar, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        super(true, hVar);
        i m10 = new C14158d(hVar, bArr, bArr2).m();
        this.f96608q = bArr;
        this.f96609r = bArr3;
        this.f96596e = bArr2;
        this.f96597f = m10.f96597f;
        this.f96598g = m10.f96598g;
        this.f96599h = m10.f96599h;
        this.f96600i = m10.f96600i;
        this.f96601j = m10.f96601j;
        this.f96602k = m10.f96602k;
        this.f96603l = m10.f96603l;
        this.f96604m = m10.f96604m;
        this.f96605n = m10.f96605n;
        this.f96606o = m10.f96606o;
        this.f96607p = m10.f96607p;
    }

    public i(h hVar, byte[] bArr, short[][] sArr, short[][] sArr2, short[][] sArr3, short[][] sArr4, short[][][] sArr5, short[][][] sArr6, short[][][] sArr7, short[][][] sArr8, short[][][] sArr9, short[][][] sArr10, short[][][] sArr11, byte[] bArr2) {
        super(true, hVar);
        this.f96608q = null;
        this.f96609r = bArr2;
        this.f96596e = (byte[]) bArr.clone();
        this.f96597f = m.a(sArr);
        this.f96598g = m.a(sArr2);
        this.f96599h = m.a(sArr3);
        this.f96600i = m.a(sArr4);
        this.f96601j = m.b(sArr5);
        this.f96602k = m.b(sArr6);
        this.f96603l = m.b(sArr7);
        this.f96604m = m.b(sArr8);
        this.f96605n = m.b(sArr9);
        this.f96606o = m.b(sArr10);
        this.f96607p = m.b(sArr11);
    }
}
