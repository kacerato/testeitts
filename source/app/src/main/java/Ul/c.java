package Ul;

import Bi.C2371c;
import Bi.G;
import Bi.InterfaceC2372d;
import Bi.r;
import Xi.C3335c;
import java.lang.reflect.Array;
import java.security.SecureRandom;

public class c implements InterfaceC2372d {

    public boolean f26300g = false;

    public SecureRandom f26301h;

    public b f26302i;

    public short[][] f26303j;

    public short[][] f26304k;

    public short[] f26305l;

    public short[][] f26306m;

    public short[][] f26307n;

    public short[] f26308o;

    public int f26309p;

    public a[] f26310q;

    public int[] f26311r;

    public short[][] f26312s;

    public short[][] f26313t;

    public short[] f26314u;

    private void j() {
        i(new b(r.h(), new e()));
    }

    @Override
    public C2371c a() {
        return e();
    }

    @Override
    public void b(G g10) {
        i(g10);
    }

    public final void c(short[][][] sArr) {
        int length = sArr.length;
        int length2 = sArr[0].length;
        this.f26312s = (short[][]) Array.newInstance(Short.TYPE, length, ((length2 + 1) * length2) / 2);
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = 0;
            for (int i12 = 0; i12 < length2; i12++) {
                for (int i13 = i12; i13 < length2; i13++) {
                    short[][] sArr2 = this.f26312s;
                    if (i13 == i12) {
                        sArr2[i10][i11] = sArr[i10][i12][i13];
                    } else {
                        short[] sArr3 = sArr2[i10];
                        short[][] sArr4 = sArr[i10];
                        sArr3[i11] = Vl.b.a(sArr4[i12][i13], sArr4[i13][i12]);
                    }
                    i11++;
                }
            }
        }
    }

    public final void d() {
        Vl.a aVar = new Vl.a();
        int[] iArr = this.f26311r;
        int i10 = 0;
        int i11 = iArr[iArr.length - 1] - iArr[0];
        int i12 = iArr[iArr.length - 1];
        int i13 = 3;
        Class<Short> cls = Short.TYPE;
        short[][][] sArr = (short[][][]) Array.newInstance(cls, i11, i12, i12);
        this.f26313t = (short[][]) Array.newInstance(cls, i11, i12);
        this.f26314u = new short[i11];
        short[] sArr2 = new short[i12];
        int i14 = 0;
        int i15 = 0;
        while (true) {
            a[] aVarArr = this.f26310q;
            if (i14 >= aVarArr.length) {
                break;
            }
            short[][][] a10 = aVarArr[i14].a();
            short[][][] b10 = this.f26310q[i14].b();
            short[][] d10 = this.f26310q[i14].d();
            short[] c10 = this.f26310q[i14].c();
            int length = a10[i10].length;
            int length2 = b10[i10].length;
            while (i10 < length) {
                for (int i16 = 0; i16 < length; i16++) {
                    int i17 = 0;
                    while (i17 < length2) {
                        int i18 = i11;
                        int i19 = i12;
                        int i20 = i16 + length2;
                        short[] g10 = aVar.g(a10[i10][i16][i17], this.f26306m[i20]);
                        int i21 = i15 + i10;
                        int i22 = i14;
                        sArr[i21] = aVar.a(sArr[i21], aVar.h(g10, this.f26306m[i17]));
                        short[] g11 = aVar.g(this.f26308o[i17], g10);
                        short[][] sArr3 = this.f26313t;
                        sArr3[i21] = aVar.b(g11, sArr3[i21]);
                        short[] g12 = aVar.g(this.f26308o[i20], aVar.g(a10[i10][i16][i17], this.f26306m[i17]));
                        short[][] sArr4 = this.f26313t;
                        sArr4[i21] = aVar.b(g12, sArr4[i21]);
                        short e10 = Vl.b.e(a10[i10][i16][i17], this.f26308o[i20]);
                        short[] sArr5 = this.f26314u;
                        sArr5[i21] = Vl.b.a(sArr5[i21], Vl.b.e(e10, this.f26308o[i17]));
                        i17++;
                        i12 = i19;
                        i11 = i18;
                        a10 = a10;
                        i14 = i22;
                        c10 = c10;
                    }
                }
                int i23 = i12;
                int i24 = i11;
                int i25 = i14;
                short[][][] sArr6 = a10;
                short[] sArr7 = c10;
                for (int i26 = 0; i26 < length2; i26++) {
                    for (int i27 = 0; i27 < length2; i27++) {
                        short[] g13 = aVar.g(b10[i10][i26][i27], this.f26306m[i26]);
                        int i28 = i15 + i10;
                        sArr[i28] = aVar.a(sArr[i28], aVar.h(g13, this.f26306m[i27]));
                        short[] g14 = aVar.g(this.f26308o[i27], g13);
                        short[][] sArr8 = this.f26313t;
                        sArr8[i28] = aVar.b(g14, sArr8[i28]);
                        short[] g15 = aVar.g(this.f26308o[i26], aVar.g(b10[i10][i26][i27], this.f26306m[i27]));
                        short[][] sArr9 = this.f26313t;
                        sArr9[i28] = aVar.b(g15, sArr9[i28]);
                        short e11 = Vl.b.e(b10[i10][i26][i27], this.f26308o[i26]);
                        short[] sArr10 = this.f26314u;
                        sArr10[i28] = Vl.b.a(sArr10[i28], Vl.b.e(e11, this.f26308o[i27]));
                    }
                }
                for (int i29 = 0; i29 < length2 + length; i29++) {
                    short[] g16 = aVar.g(d10[i10][i29], this.f26306m[i29]);
                    short[][] sArr11 = this.f26313t;
                    int i30 = i15 + i10;
                    sArr11[i30] = aVar.b(g16, sArr11[i30]);
                    short[] sArr12 = this.f26314u;
                    sArr12[i30] = Vl.b.a(sArr12[i30], Vl.b.e(d10[i10][i29], this.f26308o[i29]));
                }
                short[] sArr13 = this.f26314u;
                int i31 = i15 + i10;
                sArr13[i31] = Vl.b.a(sArr13[i31], sArr7[i10]);
                i10++;
                i12 = i23;
                i11 = i24;
                a10 = sArr6;
                i14 = i25;
                c10 = sArr7;
            }
            i15 += length;
            i14++;
            i10 = 0;
            i13 = 3;
        }
        int i32 = i12;
        int i33 = i11;
        int[] iArr2 = new int[i13];
        iArr2[2] = i32;
        iArr2[1] = i32;
        iArr2[0] = i33;
        Class<Short> cls2 = Short.TYPE;
        short[][][] sArr14 = (short[][][]) Array.newInstance(cls2, iArr2);
        short[][] sArr15 = (short[][]) Array.newInstance(cls2, i33, i32);
        short[] sArr16 = new short[i33];
        for (int i34 = 0; i34 < i33; i34++) {
            int i35 = 0;
            while (true) {
                short[][] sArr17 = this.f26303j;
                if (i35 < sArr17.length) {
                    sArr14[i34] = aVar.a(sArr14[i34], aVar.f(sArr17[i34][i35], sArr[i35]));
                    sArr15[i34] = aVar.b(sArr15[i34], aVar.g(this.f26303j[i34][i35], this.f26313t[i35]));
                    sArr16[i34] = Vl.b.a(sArr16[i34], Vl.b.e(this.f26303j[i34][i35], this.f26314u[i35]));
                    i35++;
                }
            }
            sArr16[i34] = Vl.b.a(sArr16[i34], this.f26305l[i34]);
        }
        this.f26313t = sArr15;
        this.f26314u = sArr16;
        c(sArr14);
    }

    public C2371c e() {
        if (!this.f26300g) {
            j();
        }
        k();
        f fVar = new f(this.f26304k, this.f26305l, this.f26307n, this.f26308o, this.f26311r, this.f26310q);
        int[] iArr = this.f26311r;
        return new C2371c((C3335c) new g(iArr[iArr.length - 1] - iArr[0], this.f26312s, this.f26313t, this.f26314u), (C3335c) fVar);
    }

    public final void f() {
        this.f26310q = new a[this.f26309p];
        int i10 = 0;
        while (i10 < this.f26309p) {
            a[] aVarArr = this.f26310q;
            int[] iArr = this.f26311r;
            int i11 = i10 + 1;
            aVarArr[i10] = new a(iArr[i10], iArr[i11], this.f26301h);
            i10 = i11;
        }
    }

    public final void g() {
        int[] iArr = this.f26311r;
        int i10 = iArr[iArr.length - 1] - iArr[0];
        this.f26303j = (short[][]) Array.newInstance(Short.TYPE, i10, i10);
        this.f26304k = null;
        Vl.a aVar = new Vl.a();
        while (this.f26304k == null) {
            for (int i11 = 0; i11 < i10; i11++) {
                for (int i12 = 0; i12 < i10; i12++) {
                    this.f26303j[i11][i12] = (short) (this.f26301h.nextInt() & 255);
                }
            }
            this.f26304k = aVar.e(this.f26303j);
        }
        this.f26305l = new short[i10];
        for (int i13 = 0; i13 < i10; i13++) {
            this.f26305l[i13] = (short) (this.f26301h.nextInt() & 255);
        }
    }

    public final void h() {
        int[] iArr = this.f26311r;
        int i10 = iArr[iArr.length - 1];
        this.f26306m = (short[][]) Array.newInstance(Short.TYPE, i10, i10);
        this.f26307n = null;
        Vl.a aVar = new Vl.a();
        while (this.f26307n == null) {
            for (int i11 = 0; i11 < i10; i11++) {
                for (int i12 = 0; i12 < i10; i12++) {
                    this.f26306m[i11][i12] = (short) (this.f26301h.nextInt() & 255);
                }
            }
            this.f26307n = aVar.e(this.f26306m);
        }
        this.f26308o = new short[i10];
        for (int i13 = 0; i13 < i10; i13++) {
            this.f26308o[i13] = (short) (this.f26301h.nextInt() & 255);
        }
    }

    public void i(G g10) {
        b bVar = (b) g10;
        this.f26302i = bVar;
        this.f26301h = bVar.a();
        this.f26311r = this.f26302i.c().d();
        this.f26309p = this.f26302i.c().c();
        this.f26300g = true;
    }

    public final void k() {
        g();
        h();
        f();
        d();
    }
}
