package Wl;

import java.lang.reflect.Array;
import java.security.SecureRandom;
import java.util.Random;
import java.util.Vector;

public class n extends l {

    public static final int f27834j = 64;

    public int f27835f;

    public int f27836g;

    public int f27837h;

    public int[][] f27838i;

    public n(int i10, SecureRandom secureRandom) throws RuntimeException {
        super(secureRandom);
        if (i10 < 3) {
            throw new IllegalArgumentException("k must be at least 3");
        }
        this.f27823b = i10;
        int i11 = i10 / 64;
        this.f27835f = i11;
        int i12 = i10 & 63;
        this.f27836g = i12;
        if (i12 == 0) {
            this.f27836g = 64;
        } else {
            this.f27835f = i11 + 1;
        }
        i();
        if (this.f27837h >= 3) {
            throw new RuntimeException("\nThe type of this field is " + this.f27837h);
        }
        this.f27838i = (int[][]) Array.newInstance(Integer.TYPE, this.f27823b, 2);
        for (int i13 = 0; i13 < this.f27823b; i13++) {
            int[] iArr = this.f27838i[i13];
            iArr[0] = -1;
            iArr[1] = -1;
        }
        h();
        b();
        this.f27825d = new Vector();
        this.f27826e = new Vector();
    }

    @Override
    public void a(l lVar) {
        k f10;
        int i10 = this.f27823b;
        if (i10 != lVar.f27823b) {
            throw new IllegalArgumentException("GF2nField.computeCOBMatrix: B1 has a different degree and thus cannot be coverted to!");
        }
        f[] fVarArr = new f[i10];
        for (int i11 = 0; i11 < this.f27823b; i11++) {
            fVarArr[i11] = new f(this.f27823b);
        }
        do {
            f10 = lVar.f(this.f27824c);
        } while (f10.a());
        k[] kVarArr = new p[this.f27823b];
        kVarArr[0] = (k) f10.clone();
        for (int i12 = 1; i12 < this.f27823b; i12++) {
            kVarArr[i12] = kVarArr[i12 - 1].r();
        }
        for (int i13 = 0; i13 < this.f27823b; i13++) {
            for (int i14 = 0; i14 < this.f27823b; i14++) {
                if (kVarArr[i13].v(i14)) {
                    int i15 = this.f27823b;
                    fVarArr[(i15 - i14) - 1].I((i15 - i13) - 1);
                }
            }
        }
        this.f27825d.addElement(lVar);
        this.f27826e.addElement(fVarArr);
        lVar.f27825d.addElement(this);
        lVar.f27826e.addElement(g(fVarArr));
    }

    @Override
    public void b() {
        f fVar;
        int i10 = this.f27837h;
        if (i10 == 1) {
            fVar = new f(this.f27823b + 1, "ALL");
        } else {
            if (i10 != 2) {
                return;
            }
            f fVar2 = new f(this.f27823b + 1, "ONE");
            f fVar3 = new f(this.f27823b + 1, "X");
            fVar3.b(fVar2);
            f fVar4 = fVar2;
            fVar = fVar3;
            int i11 = 1;
            while (i11 < this.f27823b) {
                f K10 = fVar.K();
                K10.b(fVar4);
                i11++;
                fVar4 = fVar;
                fVar = K10;
            }
        }
        this.f27824c = fVar;
    }

    @Override
    public k f(f fVar) {
        o f10;
        int g10;
        int g11;
        o oVar = new o(fVar, this);
        while (oVar.g() > 1) {
            while (true) {
                m mVar = new m(this, this.f27822a);
                o oVar2 = new o(2, m.z(this));
                oVar2.o(1, mVar);
                o oVar3 = new o(oVar2);
                for (int i10 = 1; i10 <= this.f27823b - 1; i10++) {
                    oVar3 = oVar3.j(oVar3, oVar).a(oVar2);
                }
                f10 = oVar3.f(oVar);
                g10 = f10.g();
                g11 = oVar.g();
                if (g10 != 0 && g10 != g11) {
                    break;
                }
            }
            oVar = (g10 << 1) > g11 ? oVar.k(f10) : new o(f10);
        }
        return oVar.c(0);
    }

    public final void h() {
        int i10;
        int i11 = this.f27837h;
        if ((i11 & 7) == 0) {
            throw new RuntimeException("bisher nur fuer Gausssche Normalbasen implementiert");
        }
        int i12 = this.f27823b * i11;
        int i13 = i12 + 1;
        int[] iArr = new int[i13];
        int j10 = i11 == 1 ? 1 : i11 == 2 ? i12 : j(i11, i13);
        int i14 = 1;
        int i15 = 0;
        while (true) {
            i10 = this.f27837h;
            if (i15 >= i10) {
                break;
            }
            int i16 = i14;
            for (int i17 = 0; i17 < this.f27823b; i17++) {
                iArr[i16] = i17;
                i16 = (i16 << 1) % i13;
                if (i16 < 0) {
                    i16 += i13;
                }
            }
            i14 = (i14 * j10) % i13;
            if (i14 < 0) {
                i14 += i13;
            }
            i15++;
        }
        if (i10 != 1) {
            if (i10 != 2) {
                throw new RuntimeException("only type 1 or type 2 implemented");
            }
            int i18 = 1;
            while (i18 < i12) {
                int i19 = i18 + 1;
                int[] iArr2 = this.f27838i[iArr[i19]];
                int i20 = i13 - i18;
                if (iArr2[0] == -1) {
                    iArr2[0] = iArr[i20];
                } else {
                    iArr2[1] = iArr[i20];
                }
                i18 = i19;
            }
            return;
        }
        int i21 = 1;
        while (i21 < i12) {
            int i22 = i21 + 1;
            int[] iArr3 = this.f27838i[iArr[i22]];
            int i23 = i13 - i21;
            if (iArr3[0] == -1) {
                iArr3[0] = iArr[i23];
            } else {
                iArr3[1] = iArr[i23];
            }
            i21 = i22;
        }
        int i24 = this.f27823b >> 1;
        for (int i25 = 1; i25 <= i24; i25++) {
            int[][] iArr4 = this.f27838i;
            int i26 = i25 - 1;
            int[] iArr5 = iArr4[i26];
            if (iArr5[0] == -1) {
                iArr5[0] = (i24 + i25) - 1;
            } else {
                iArr5[1] = (i24 + i25) - 1;
            }
            int[] iArr6 = iArr4[(i24 + i25) - 1];
            if (iArr6[0] == -1) {
                iArr6[0] = i26;
            } else {
                iArr6[1] = i26;
            }
        }
    }

    public final void i() throws RuntimeException {
        if ((this.f27823b & 7) == 0) {
            throw new RuntimeException("The extension degree is divisible by 8!");
        }
        this.f27837h = 1;
        int i10 = 0;
        while (i10 != 1) {
            int i11 = (this.f27837h * this.f27823b) + 1;
            if (u.s(i11)) {
                int K10 = u.K(2, i11);
                int i12 = this.f27837h;
                int i13 = this.f27823b;
                i10 = u.n((i12 * i13) / K10, i13);
            }
            this.f27837h++;
        }
        int i14 = this.f27837h - 1;
        this.f27837h = i14;
        if (i14 == 1) {
            int i15 = (this.f27823b << 1) + 1;
            if (u.s(i15)) {
                int K11 = u.K(2, i15);
                int i16 = this.f27823b;
                if (u.n((i16 << 1) / K11, i16) == 1) {
                    this.f27837h++;
                }
            }
        }
    }

    public final int j(int i10, int i11) {
        int K10;
        Random random = new Random();
        int i12 = 0;
        while (i12 == 0) {
            int i13 = i11 - 1;
            i12 = random.nextInt() % i13;
            if (i12 < 0) {
                i12 += i13;
            }
        }
        while (true) {
            K10 = u.K(i12, i11);
            if (K10 % i10 == 0 && K10 != 0) {
                break;
            }
            while (i12 == 0) {
                int i14 = i11 - 1;
                i12 = random.nextInt() % i14;
                if (i12 < 0) {
                    i12 += i14;
                }
            }
        }
        int i15 = i12;
        for (int i16 = 2; i16 <= i10 / K10; i16++) {
            i15 *= i12;
        }
        return i15;
    }

    public int k() {
        return this.f27836g;
    }

    public int l() {
        return this.f27835f;
    }

    public int[][] m(int[][] iArr) {
        int i10 = this.f27823b;
        int[] iArr2 = {i10, i10};
        Class<Integer> cls = Integer.TYPE;
        int i11 = this.f27823b;
        int[][] iArr3 = (int[][]) Array.newInstance(cls, i11, i11);
        for (int i12 = 0; i12 < this.f27823b; i12++) {
            iArr3[i12][i12] = 1;
        }
        for (int i13 = 0; i13 < this.f27823b; i13++) {
            int i14 = i13;
            while (true) {
                int i15 = this.f27823b;
                if (i14 < i15) {
                    iArr[(i15 - 1) - i13][i14] = iArr[i13][i13];
                    i14++;
                }
            }
        }
        return null;
    }
}
