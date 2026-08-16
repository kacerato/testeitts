package Wl;

import java.security.SecureRandom;
import java.util.Vector;

public class q extends l {

    public f[] f27843f;

    public boolean f27844g;

    public boolean f27845h;

    public int f27846i;

    public int[] f27847j;

    public q(int i10, SecureRandom secureRandom) {
        super(secureRandom);
        this.f27844g = false;
        this.f27845h = false;
        this.f27847j = new int[3];
        if (i10 < 3) {
            throw new IllegalArgumentException("k must be at least 3");
        }
        this.f27823b = i10;
        b();
        i();
        this.f27825d = new Vector();
        this.f27826e = new Vector();
    }

    @Override
    public void a(l lVar) {
        k f10;
        k[] kVarArr;
        int i10 = this.f27823b;
        if (i10 != lVar.f27823b) {
            throw new IllegalArgumentException("GF2nPolynomialField.computeCOBMatrix: B1 has a different degree and thus cannot be coverted to!");
        }
        boolean z10 = lVar instanceof n;
        if (z10) {
            lVar.a(this);
            return;
        }
        f[] fVarArr = new f[i10];
        for (int i11 = 0; i11 < this.f27823b; i11++) {
            fVarArr[i11] = new f(this.f27823b);
        }
        do {
            f10 = lVar.f(this.f27824c);
        } while (f10.a());
        if (f10 instanceof m) {
            int i12 = this.f27823b;
            kVarArr = new m[i12];
            kVarArr[i12 - 1] = m.y((n) lVar);
        } else {
            int i13 = this.f27823b;
            kVarArr = new p[i13];
            kVarArr[i13 - 1] = p.y((q) lVar);
        }
        int i14 = this.f27823b;
        kVarArr[i14 - 2] = f10;
        for (int i15 = i14 - 3; i15 >= 0; i15--) {
            kVarArr[i15] = (k) kVarArr[i15 + 1].e(f10);
        }
        if (z10) {
            for (int i16 = 0; i16 < this.f27823b; i16++) {
                int i17 = 0;
                while (true) {
                    if (i17 < this.f27823b) {
                        if (kVarArr[i16].v((r4 - i17) - 1)) {
                            int i18 = this.f27823b;
                            fVarArr[(i18 - i17) - 1].I((i18 - i16) - 1);
                        }
                        i17++;
                    }
                }
            }
        } else {
            for (int i19 = 0; i19 < this.f27823b; i19++) {
                for (int i20 = 0; i20 < this.f27823b; i20++) {
                    if (kVarArr[i19].v(i20)) {
                        int i21 = this.f27823b;
                        fVarArr[(i21 - i20) - 1].I((i21 - i19) - 1);
                    }
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
        if (q() || o()) {
            return;
        }
        p();
    }

    @Override
    public k f(f fVar) {
        o f10;
        int g10;
        int g11;
        o oVar = new o(fVar, this);
        while (oVar.g() > 1) {
            while (true) {
                p pVar = new p(this, this.f27822a);
                o oVar2 = new o(2, p.z(this));
                oVar2.o(1, pVar);
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

    public void h() {
        if (q() || o()) {
            return;
        }
        p();
    }

    public final void i() {
        int i10 = this.f27823b;
        f[] fVarArr = new f[i10 - 1];
        this.f27843f = new f[i10];
        int i11 = 0;
        while (true) {
            f[] fVarArr2 = this.f27843f;
            if (i11 >= fVarArr2.length) {
                break;
            }
            fVarArr2[i11] = new f(this.f27823b, "ZERO");
            i11++;
        }
        for (int i12 = 0; i12 < this.f27823b - 1; i12++) {
            fVarArr[i12] = new f(1, "ONE").L(this.f27823b + i12).G(this.f27824c);
        }
        for (int i13 = 1; i13 <= Math.abs(this.f27823b >> 1); i13++) {
            int i14 = 1;
            while (true) {
                int i15 = this.f27823b;
                if (i14 <= i15) {
                    if (fVarArr[i15 - (i13 << 1)].U(i15 - i14)) {
                        this.f27843f[i14 - 1].I(this.f27823b - i13);
                    }
                    i14++;
                }
            }
        }
        int abs = Math.abs(this.f27823b >> 1) + 1;
        while (true) {
            int i16 = this.f27823b;
            if (abs > i16) {
                return;
            }
            this.f27843f[((abs << 1) - i16) - 1].I(i16 - abs);
            abs++;
        }
    }

    public int[] j() throws RuntimeException {
        if (!this.f27845h) {
            throw new RuntimeException();
        }
        int[] iArr = new int[3];
        System.arraycopy(this.f27847j, 0, iArr, 0, 3);
        return iArr;
    }

    public f k(int i10) {
        return new f(this.f27843f[i10]);
    }

    public int l() throws RuntimeException {
        if (this.f27844g) {
            return this.f27846i;
        }
        throw new RuntimeException();
    }

    public boolean m() {
        return this.f27845h;
    }

    public boolean n() {
        return this.f27844g;
    }

    public final boolean o() {
        f fVar = new f(this.f27823b + 1);
        this.f27824c = fVar;
        fVar.I(0);
        this.f27824c.I(this.f27823b);
        boolean z10 = false;
        int i10 = 1;
        while (i10 <= this.f27823b - 3 && !z10) {
            this.f27824c.I(i10);
            int i11 = i10 + 1;
            int i12 = i11;
            while (i12 <= this.f27823b - 2 && !z10) {
                this.f27824c.I(i12);
                int i13 = i12 + 1;
                for (int i14 = i13; i14 <= this.f27823b - 1 && !z10; i14++) {
                    this.f27824c.I(i14);
                    if (((((this.f27823b & 1) != 0) | ((i10 & 1) != 0) | ((i12 & 1) != 0)) || ((i14 & 1) != 0)) && (z10 = this.f27824c.o())) {
                        this.f27845h = true;
                        int[] iArr = this.f27847j;
                        iArr[0] = i10;
                        iArr[1] = i12;
                        iArr[2] = i14;
                        return z10;
                    }
                    this.f27824c.H(i14);
                }
                this.f27824c.H(i12);
                i12 = i13;
            }
            this.f27824c.H(i10);
            i10 = i11;
        }
        return z10;
    }

    public final boolean p() {
        this.f27824c = new f(this.f27823b + 1);
        do {
            this.f27824c.B();
            this.f27824c.I(this.f27823b);
            this.f27824c.I(0);
        } while (!this.f27824c.o());
        return true;
    }

    public final boolean q() {
        f fVar = new f(this.f27823b + 1);
        this.f27824c = fVar;
        boolean z10 = false;
        fVar.I(0);
        this.f27824c.I(this.f27823b);
        for (int i10 = 1; i10 < this.f27823b && !z10; i10++) {
            this.f27824c.I(i10);
            boolean o10 = this.f27824c.o();
            if (o10) {
                this.f27844g = true;
                this.f27846i = i10;
                return o10;
            }
            this.f27824c.H(i10);
            z10 = this.f27824c.o();
        }
        return z10;
    }

    public q(int i10, SecureRandom secureRandom, f fVar) throws RuntimeException {
        super(secureRandom);
        this.f27844g = false;
        this.f27845h = false;
        this.f27847j = new int[3];
        if (i10 < 3) {
            throw new IllegalArgumentException("degree must be at least 3");
        }
        if (fVar.l() != i10 + 1) {
            throw new RuntimeException();
        }
        if (!fVar.o()) {
            throw new RuntimeException();
        }
        this.f27823b = i10;
        this.f27824c = fVar;
        i();
        int i11 = 2;
        for (int i12 = 1; i12 < this.f27824c.l() - 1; i12++) {
            if (this.f27824c.U(i12)) {
                int i13 = i11 + 1;
                if (i13 == 3) {
                    this.f27846i = i12;
                }
                if (i13 <= 5) {
                    this.f27847j[i11 - 2] = i12;
                }
                i11 = i13;
            }
        }
        if (i11 == 3) {
            this.f27844g = true;
        }
        if (i11 == 5) {
            this.f27845h = true;
        }
        this.f27825d = new Vector();
        this.f27826e = new Vector();
    }

    public q(int i10, SecureRandom secureRandom, boolean z10) {
        super(secureRandom);
        this.f27844g = false;
        this.f27845h = false;
        this.f27847j = new int[3];
        if (i10 < 3) {
            throw new IllegalArgumentException("k must be at least 3");
        }
        this.f27823b = i10;
        if (z10) {
            b();
        } else {
            h();
        }
        i();
        this.f27825d = new Vector();
        this.f27826e = new Vector();
    }
}
