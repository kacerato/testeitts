package Wl;

import java.lang.reflect.Array;
import java.security.SecureRandom;

public final class s {

    public static class a {

        public e f27848a;

        public e f27849b;

        public x f27850c;

        public a(e eVar, e eVar2, x xVar) {
            this.f27848a = eVar;
            this.f27849b = eVar2;
            this.f27850c = xVar;
        }

        public e a() {
            return this.f27848a;
        }

        public x b() {
            return this.f27850c;
        }

        public e c() {
            return this.f27849b;
        }
    }

    public static class b {

        public e f27851a;

        public int[] f27852b;

        public b(e eVar, int[] iArr) {
            this.f27851a = eVar;
            this.f27852b = iArr;
        }

        public e a() {
            return this.f27851a;
        }

        public int[] b() {
            return this.f27852b;
        }
    }

    public static a a(e eVar, SecureRandom secureRandom) {
        e eVar2;
        boolean z10;
        int c10 = eVar.c();
        e eVar3 = null;
        while (true) {
            x xVar = new x(c10, secureRandom);
            e eVar4 = (e) eVar.h(xVar);
            e v10 = eVar4.v();
            try {
                eVar2 = (e) v10.a();
                z10 = true;
            } catch (ArithmeticException unused) {
                eVar2 = eVar3;
                z10 = false;
            }
            if (z10) {
                return new a(v10, ((e) eVar2.g(eVar4)).x(), xVar);
            }
            eVar3 = eVar2;
        }
    }

    public static e b(h hVar, y yVar) {
        int d10 = hVar.d();
        int i10 = 1 << d10;
        int n10 = yVar.n();
        int i11 = 0;
        Class<Integer> cls = Integer.TYPE;
        int[][] iArr = (int[][]) Array.newInstance(cls, n10, i10);
        int[][] iArr2 = (int[][]) Array.newInstance(cls, n10, i10);
        for (int i12 = 0; i12 < i10; i12++) {
            iArr2[0][i12] = hVar.j(yVar.j(i12));
        }
        for (int i13 = 1; i13 < n10; i13++) {
            for (int i14 = 0; i14 < i10; i14++) {
                iArr2[i13][i14] = hVar.l(iArr2[i13 - 1][i14], i14);
            }
        }
        int i15 = 0;
        while (i15 < n10) {
            int i16 = i11;
            while (i16 < i10) {
                for (int i17 = i11; i17 <= i15; i17++) {
                    int[] iArr3 = iArr[i15];
                    iArr3[i16] = hVar.a(iArr3[i16], hVar.l(iArr2[i17][i16], yVar.m((n10 + i17) - i15)));
                }
                i16++;
                i11 = 0;
            }
            i15++;
            i11 = 0;
        }
        int[][] iArr4 = (int[][]) Array.newInstance(Integer.TYPE, n10 * d10, (i10 + 31) >>> 5);
        for (int i18 = 0; i18 < i10; i18++) {
            int i19 = i18 >>> 5;
            int i20 = 1 << (i18 & 31);
            for (int i21 = 0; i21 < n10; i21++) {
                int i22 = iArr[i21][i18];
                for (int i23 = 0; i23 < d10; i23++) {
                    if (((i22 >>> i23) & 1) != 0) {
                        int[] iArr5 = iArr4[(((i21 + 1) * d10) - i23) - 1];
                        iArr5[i19] = iArr5[i19] ^ i20;
                    }
                }
            }
        }
        return new e(i10, iArr4);
    }

    public static g c(g gVar, h hVar, y yVar, y[] yVarArr) {
        int d10 = 1 << hVar.d();
        g gVar2 = new g(d10);
        if (!gVar.d()) {
            y[] A10 = new y(gVar.n(hVar)).x(yVar).c(1).D(yVarArr).A(yVar);
            y yVar2 = A10[0];
            y J10 = yVar2.J(yVar2);
            y yVar3 = A10[1];
            y a10 = J10.a(yVar3.J(yVar3).H(1));
            y F10 = a10.F(hVar.j(a10.p()));
            for (int i10 = 0; i10 < d10; i10++) {
                if (F10.j(i10) == 0) {
                    gVar2.m(i10);
                }
            }
        }
        return gVar2;
    }
}
