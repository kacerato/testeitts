package Pl;

import Bi.InterfaceC2392y;
import java.lang.reflect.Array;
import java.util.Vector;
import org.openjdk.tools.doclint.DocLint;

public class g extends d {

    public int[] f21649A;

    public int[] f21650B;

    public int[] f21651C;

    public int f21652D;

    public InterfaceC2392y f21653E;

    public int f21654F;

    public Ql.a f21655G;

    public int[] f21656H;

    public int[] f21657d;

    public byte[][] f21658e;

    public byte[][] f21659f;

    public byte[][][] f21660g;

    public byte[][][] f21661h;

    public n[][] f21662i;

    public n[][] f21663j;

    public Vector[] f21664k;

    public Vector[] f21665l;

    public Vector[][] f21666m;

    public Vector[][] f21667n;

    public byte[][][] f21668o;

    public e[] f21669p;

    public e[] f21670q;

    public e[] f21671r;

    public int[] f21672s;

    public f f21673t;

    public byte[][] f21674u;

    public i[] f21675v;

    public byte[][] f21676w;

    public j[] f21677x;

    public a f21678y;

    public boolean f21679z;

    public g(g gVar) {
        super(true, gVar.d());
        this.f21679z = false;
        this.f21657d = org.bouncycastle.util.a.s(gVar.f21657d);
        this.f21658e = org.bouncycastle.util.a.y(gVar.f21658e);
        this.f21659f = org.bouncycastle.util.a.y(gVar.f21659f);
        this.f21660g = org.bouncycastle.util.a.z(gVar.f21660g);
        this.f21661h = org.bouncycastle.util.a.z(gVar.f21661h);
        this.f21662i = gVar.f21662i;
        this.f21663j = gVar.f21663j;
        this.f21664k = gVar.f21664k;
        this.f21665l = gVar.f21665l;
        this.f21666m = gVar.f21666m;
        this.f21667n = gVar.f21667n;
        this.f21668o = org.bouncycastle.util.a.z(gVar.f21668o);
        this.f21669p = gVar.f21669p;
        this.f21670q = gVar.f21670q;
        this.f21671r = gVar.f21671r;
        this.f21672s = gVar.f21672s;
        this.f21673t = gVar.f21673t;
        this.f21674u = org.bouncycastle.util.a.y(gVar.f21674u);
        this.f21675v = gVar.f21675v;
        this.f21676w = gVar.f21676w;
        this.f21677x = gVar.f21677x;
        this.f21678y = gVar.f21678y;
        this.f21649A = gVar.f21649A;
        this.f21650B = gVar.f21650B;
        this.f21651C = gVar.f21651C;
        this.f21652D = gVar.f21652D;
        this.f21653E = gVar.f21653E;
        this.f21654F = gVar.f21654F;
        this.f21655G = gVar.f21655G;
        this.f21656H = gVar.f21656H;
    }

    public final void e(int i10) {
        int i11;
        byte[] bArr;
        int i12 = this.f21657d[i10];
        int i13 = this.f21649A[i10];
        int i14 = this.f21651C[i10];
        int i15 = 0;
        while (true) {
            i11 = i13 - i14;
            if (i15 >= i11) {
                break;
            }
            this.f21662i[i10][i15].m(this.f21655G);
            i15++;
        }
        int n10 = n(i12);
        byte[] bArr2 = new byte[this.f21654F];
        byte[] c10 = this.f21655G.c(this.f21658e[i10]);
        int i16 = (i12 >>> (n10 + 1)) & 1;
        int i17 = this.f21654F;
        byte[] bArr3 = new byte[i17];
        int i18 = i13 - 1;
        if (n10 < i18 && i16 == 0) {
            System.arraycopy(this.f21660g[i10][n10], 0, bArr3, 0, i17);
        }
        int i19 = this.f21654F;
        byte[] bArr4 = new byte[i19];
        if (n10 == 0) {
            if (i10 == this.f21652D - 1) {
                bArr = new Ql.d(c10, this.f21678y.get(), this.f21650B[i10]).c();
            } else {
                byte[] bArr5 = new byte[i19];
                System.arraycopy(this.f21658e[i10], 0, bArr5, 0, i19);
                this.f21655G.c(bArr5);
                byte[] a10 = this.f21670q[i10].a();
                this.f21670q[i10].e(bArr5);
                bArr = a10;
            }
            System.arraycopy(bArr, 0, this.f21660g[i10][0], 0, this.f21654F);
        } else {
            int i20 = i19 << 1;
            byte[] bArr6 = new byte[i20];
            System.arraycopy(this.f21660g[i10][n10 - 1], 0, bArr6, 0, i19);
            byte[] bArr7 = this.f21668o[i10][(int) Math.floor(r12 / 2)];
            int i21 = this.f21654F;
            System.arraycopy(bArr7, 0, bArr6, i21, i21);
            this.f21653E.update(bArr6, 0, i20);
            this.f21660g[i10][n10] = new byte[this.f21653E.f()];
            this.f21653E.c(this.f21660g[i10][n10], 0);
            for (int i22 = 0; i22 < n10; i22++) {
                if (i22 < i11) {
                    if (this.f21662i[i10][i22].n()) {
                        System.arraycopy(this.f21662i[i10][i22].b(), 0, this.f21660g[i10][i22], 0, this.f21654F);
                        this.f21662i[i10][i22].a();
                    } else {
                        System.err.println("Treehash (" + i10 + DocLint.SEPARATOR + i22 + ") not finished when needed in AuthPathComputation");
                    }
                }
                if (i22 < i18 && i22 >= i11) {
                    int i23 = i22 - i11;
                    if (this.f21666m[i10][i23].size() > 0) {
                        System.arraycopy(this.f21666m[i10][i23].lastElement(), 0, this.f21660g[i10][i22], 0, this.f21654F);
                        Vector vector = this.f21666m[i10][i23];
                        vector.removeElementAt(vector.size() - 1);
                    }
                }
                if (i22 < i11 && ((1 << i22) * 3) + i12 < this.f21656H[i10]) {
                    this.f21662i[i10][i22].i();
                }
            }
        }
        if (n10 < i18 && i16 == 0) {
            System.arraycopy(bArr3, 0, this.f21668o[i10][(int) Math.floor(n10 / 2)], 0, this.f21654F);
        }
        if (i10 != this.f21652D - 1) {
            this.f21672s[i10] = j(i10);
            return;
        }
        for (int i24 = 1; i24 <= i11 / 2; i24++) {
            int j10 = j(i10);
            if (j10 >= 0) {
                try {
                    byte[] bArr8 = new byte[this.f21654F];
                    System.arraycopy(this.f21662i[i10][j10].e(), 0, bArr8, 0, this.f21654F);
                    this.f21662i[i10][j10].l(this.f21655G, new Ql.d(this.f21655G.c(bArr8), this.f21678y.get(), this.f21650B[i10]).c());
                } catch (Exception e10) {
                    System.out.println(e10);
                }
            }
        }
    }

    public byte[][][] f() {
        return org.bouncycastle.util.a.z(this.f21660g);
    }

    public byte[][] g() {
        return org.bouncycastle.util.a.y(this.f21658e);
    }

    public int h(int i10) {
        return this.f21657d[i10];
    }

    public int[] i() {
        return this.f21657d;
    }

    public final int j(int i10) {
        int i11 = -1;
        for (int i12 = 0; i12 < this.f21649A[i10] - this.f21651C[i10]; i12++) {
            if (this.f21662i[i10][i12].o() && !this.f21662i[i10][i12].n() && (i11 == -1 || this.f21662i[i10][i12].d() < this.f21662i[i10][i11].d())) {
                i11 = i12;
            }
        }
        return i11;
    }

    public a k() {
        return this.f21678y;
    }

    public int l(int i10) {
        return this.f21656H[i10];
    }

    public byte[] m(int i10) {
        return this.f21676w[i10];
    }

    public final int n(int i10) {
        if (i10 == 0) {
            return -1;
        }
        int i11 = 0;
        int i12 = 1;
        while (i10 % i12 == 0) {
            i12 *= 2;
            i11++;
        }
        return i11 - 1;
    }

    public boolean o() {
        return this.f21679z;
    }

    public void p() {
        this.f21679z = true;
    }

    public g q() {
        g gVar = new g(this);
        gVar.r(this.f21673t.c() - 1);
        return gVar;
    }

    public final void r(int i10) {
        int i11 = this.f21652D;
        if (i10 == i11 - 1) {
            int[] iArr = this.f21657d;
            iArr[i10] = iArr[i10] + 1;
        }
        if (this.f21657d[i10] != this.f21656H[i10]) {
            t(i10);
        } else if (i11 != 1) {
            s(i10);
            this.f21657d[i10] = 0;
        }
    }

    public final void s(int i10) {
        if (i10 > 0) {
            int[] iArr = this.f21657d;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
            int i12 = i10;
            boolean z10 = true;
            do {
                i12--;
                if (this.f21657d[i12] < this.f21656H[i12]) {
                    z10 = false;
                }
                if (!z10) {
                    break;
                }
            } while (i12 > 0);
            if (z10) {
                return;
            }
            this.f21655G.c(this.f21658e[i10]);
            this.f21677x[i11].h();
            if (i10 > 1) {
                e[] eVarArr = this.f21669p;
                int i13 = i10 - 2;
                eVarArr[i13] = eVarArr[i13].f();
            }
            e[] eVarArr2 = this.f21670q;
            eVarArr2[i11] = eVarArr2[i11].f();
            if (this.f21672s[i11] >= 0) {
                e[] eVarArr3 = this.f21671r;
                eVarArr3[i11] = eVarArr3[i11].f();
                try {
                    this.f21662i[i11][this.f21672s[i11]].l(this.f21655G, this.f21671r[i11].a());
                    this.f21662i[i11][this.f21672s[i11]].n();
                } catch (Exception e10) {
                    System.out.println(e10);
                }
            }
            u(i10);
            this.f21676w[i11] = this.f21677x[i11].b();
            for (int i14 = 0; i14 < this.f21649A[i10] - this.f21651C[i10]; i14++) {
                n[] nVarArr = this.f21662i[i10];
                n[][] nVarArr2 = this.f21663j;
                nVarArr[i14] = nVarArr2[i11][i14];
                nVarArr2[i11][i14] = this.f21675v[i11].g()[i14];
            }
            for (int i15 = 0; i15 < this.f21649A[i10]; i15++) {
                System.arraycopy(this.f21661h[i11][i15], 0, this.f21660g[i10][i15], 0, this.f21654F);
                System.arraycopy(this.f21675v[i11].a()[i15], 0, this.f21661h[i11][i15], 0, this.f21654F);
            }
            for (int i16 = 0; i16 < this.f21651C[i10] - 1; i16++) {
                Vector[] vectorArr = this.f21666m[i10];
                Vector[][] vectorArr2 = this.f21667n;
                vectorArr[i16] = vectorArr2[i11][i16];
                vectorArr2[i11][i16] = this.f21675v[i11].b()[i16];
            }
            Vector[] vectorArr3 = this.f21664k;
            Vector[] vectorArr4 = this.f21665l;
            vectorArr3[i10] = vectorArr4[i11];
            vectorArr4[i11] = this.f21675v[i11].d();
            this.f21674u[i11] = this.f21675v[i11].c();
            int i17 = this.f21654F;
            byte[] bArr = new byte[i17];
            byte[] bArr2 = new byte[i17];
            System.arraycopy(this.f21658e[i11], 0, bArr2, 0, i17);
            this.f21655G.c(bArr2);
            this.f21655G.c(bArr2);
            this.f21677x[i11].f(this.f21655G.c(bArr2), this.f21674u[i11]);
            r(i11);
        }
    }

    public final void t(int i10) {
        e(i10);
        if (i10 > 0) {
            if (i10 > 1) {
                e[] eVarArr = this.f21669p;
                int i11 = i10 - 2;
                eVarArr[i11] = eVarArr[i11].f();
            }
            e[] eVarArr2 = this.f21670q;
            int i12 = i10 - 1;
            eVarArr2[i12] = eVarArr2[i12].f();
            int floor = (int) Math.floor((l(i10) * 2) / (this.f21649A[i12] - this.f21651C[i12]));
            int i13 = this.f21657d[i10];
            if (i13 % floor == 1) {
                if (i13 > 1 && this.f21672s[i12] >= 0) {
                    try {
                        this.f21662i[i12][this.f21672s[i12]].l(this.f21655G, this.f21671r[i12].a());
                        this.f21662i[i12][this.f21672s[i12]].n();
                    } catch (Exception e10) {
                        System.out.println(e10);
                    }
                }
                this.f21672s[i12] = j(i12);
                int i14 = this.f21672s[i12];
                if (i14 >= 0) {
                    this.f21671r[i12] = new e(this.f21678y.get(), this.f21650B[i12], floor, this.f21662i[i12][i14].e());
                    e[] eVarArr3 = this.f21671r;
                    eVarArr3[i12] = eVarArr3[i12].f();
                }
            } else if (this.f21672s[i12] >= 0) {
                e[] eVarArr4 = this.f21671r;
                eVarArr4[i12] = eVarArr4[i12].f();
            }
            this.f21677x[i12].h();
            if (this.f21657d[i10] == 1) {
                this.f21675v[i12].h(new Vector());
            }
            u(i10);
        }
    }

    public final void u(int i10) {
        byte[] bArr = new byte[this.f21654F];
        int i11 = i10 - 1;
        byte[] c10 = this.f21655G.c(this.f21659f[i11]);
        if (i10 == this.f21652D - 1) {
            this.f21675v[i11].k(this.f21659f[i11], new Ql.d(c10, this.f21678y.get(), this.f21650B[i10]).c());
        } else {
            this.f21675v[i11].k(this.f21659f[i11], this.f21669p[i11].a());
            this.f21669p[i11].e(this.f21659f[i11]);
        }
    }

    public g(int[] iArr, byte[][] bArr, byte[][] bArr2, byte[][][] bArr3, byte[][][] bArr4, byte[][][] bArr5, n[][] nVarArr, n[][] nVarArr2, Vector[] vectorArr, Vector[] vectorArr2, Vector[][] vectorArr3, Vector[][] vectorArr4, e[] eVarArr, e[] eVarArr2, e[] eVarArr3, int[] iArr2, byte[][] bArr6, i[] iVarArr, byte[][] bArr7, j[] jVarArr, f fVar, a aVar) {
        super(true, fVar);
        this.f21679z = false;
        InterfaceC2392y interfaceC2392y = aVar.get();
        this.f21653E = interfaceC2392y;
        this.f21654F = interfaceC2392y.f();
        this.f21673t = fVar;
        this.f21650B = fVar.d();
        this.f21651C = fVar.b();
        this.f21649A = fVar.a();
        int c10 = this.f21673t.c();
        this.f21652D = c10;
        if (iArr == null) {
            this.f21657d = new int[c10];
            for (int i10 = 0; i10 < this.f21652D; i10++) {
                this.f21657d[i10] = 0;
            }
        } else {
            this.f21657d = iArr;
        }
        this.f21658e = bArr;
        this.f21659f = bArr2;
        this.f21660g = org.bouncycastle.util.a.z(bArr3);
        this.f21661h = bArr4;
        int i11 = 2;
        if (bArr5 == null) {
            this.f21668o = new byte[this.f21652D][];
            int i12 = 0;
            while (i12 < this.f21652D) {
                this.f21668o[i12] = (byte[][]) Array.newInstance(Byte.TYPE, (int) Math.floor(this.f21649A[i12] / i11), this.f21654F);
                i12++;
                i11 = 2;
            }
        } else {
            this.f21668o = bArr5;
        }
        if (vectorArr == null) {
            this.f21664k = new Vector[this.f21652D];
            for (int i13 = 0; i13 < this.f21652D; i13++) {
                this.f21664k[i13] = new Vector();
            }
        } else {
            this.f21664k = vectorArr;
        }
        if (vectorArr2 == null) {
            this.f21665l = new Vector[this.f21652D - 1];
            int i14 = 0;
            for (int i15 = 1; i14 < this.f21652D - i15; i15 = 1) {
                this.f21665l[i14] = new Vector();
                i14++;
            }
        } else {
            this.f21665l = vectorArr2;
        }
        this.f21662i = nVarArr;
        this.f21663j = nVarArr2;
        this.f21666m = vectorArr3;
        this.f21667n = vectorArr4;
        this.f21674u = bArr6;
        this.f21678y = aVar;
        if (iVarArr == null) {
            this.f21675v = new i[this.f21652D - 1];
            int i16 = 0;
            for (int i17 = 1; i16 < this.f21652D - i17; i17 = 1) {
                int i18 = i16 + 1;
                this.f21675v[i16] = new i(this.f21649A[i18], this.f21651C[i18], this.f21678y);
                i16 = i18;
            }
        } else {
            this.f21675v = iVarArr;
        }
        this.f21676w = bArr7;
        this.f21656H = new int[this.f21652D];
        for (int i19 = 0; i19 < this.f21652D; i19++) {
            this.f21656H[i19] = 1 << this.f21649A[i19];
        }
        this.f21655G = new Ql.a(this.f21653E);
        int i20 = this.f21652D;
        if (i20 <= 1) {
            this.f21669p = new e[0];
        } else if (eVarArr == null) {
            this.f21669p = new e[i20 - 2];
            int i21 = 0;
            while (i21 < this.f21652D - 2) {
                int i22 = i21 + 1;
                this.f21669p[i21] = new e(aVar.get(), this.f21650B[i22], this.f21656H[i21 + 2], this.f21659f[i21]);
                i21 = i22;
            }
        } else {
            this.f21669p = eVarArr;
        }
        if (eVarArr2 == null) {
            this.f21670q = new e[this.f21652D - 1];
            int i23 = 0;
            for (int i24 = 1; i23 < this.f21652D - i24; i24 = 1) {
                int i25 = i23 + 1;
                this.f21670q[i23] = new e(aVar.get(), this.f21650B[i23], this.f21656H[i25], this.f21658e[i23]);
                i23 = i25;
            }
        } else {
            this.f21670q = eVarArr2;
        }
        if (eVarArr3 == null) {
            this.f21671r = new e[this.f21652D - 1];
            int i26 = 0;
            for (int i27 = 1; i26 < this.f21652D - i27; i27 = 1) {
                int i28 = i26 + 1;
                this.f21671r[i26] = new e(aVar.get(), this.f21650B[i26], this.f21656H[i28]);
                i26 = i28;
            }
        } else {
            this.f21671r = eVarArr3;
        }
        if (iArr2 == null) {
            this.f21672s = new int[this.f21652D - 1];
            int i29 = 0;
            for (int i30 = 1; i29 < this.f21652D - i30; i30 = 1) {
                this.f21672s[i29] = -1;
                i29++;
            }
        } else {
            this.f21672s = iArr2;
        }
        int i31 = this.f21654F;
        byte[] bArr8 = new byte[i31];
        byte[] bArr9 = new byte[i31];
        if (jVarArr != null) {
            this.f21677x = jVarArr;
            return;
        }
        this.f21677x = new j[this.f21652D - 1];
        int i32 = 0;
        while (i32 < this.f21652D - 1) {
            System.arraycopy(bArr[i32], 0, bArr8, 0, this.f21654F);
            this.f21655G.c(bArr8);
            byte[] c11 = this.f21655G.c(bArr8);
            int i33 = i32 + 1;
            this.f21677x[i32] = new j(aVar.get(), this.f21650B[i32], this.f21649A[i33]);
            this.f21677x[i32].f(c11, bArr6[i32]);
            i32 = i33;
        }
    }

    public g(byte[][] bArr, byte[][] bArr2, byte[][][] bArr3, byte[][][] bArr4, n[][] nVarArr, n[][] nVarArr2, Vector[] vectorArr, Vector[] vectorArr2, Vector[][] vectorArr3, Vector[][] vectorArr4, byte[][] bArr5, byte[][] bArr6, f fVar, a aVar) {
        this(null, bArr, bArr2, bArr3, bArr4, null, nVarArr, nVarArr2, vectorArr, vectorArr2, vectorArr3, vectorArr4, null, null, null, null, bArr5, null, bArr6, null, fVar, aVar);
    }
}
