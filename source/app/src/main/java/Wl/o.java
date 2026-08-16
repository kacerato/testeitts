package Wl;

public class o {

    public k[] f27839a;

    public int f27840b;

    public o(int i10) {
        this.f27840b = i10;
        this.f27839a = new k[i10];
    }

    public final o a(o oVar) {
        o oVar2;
        int i10 = 0;
        if (s() >= oVar.s()) {
            oVar2 = new o(s());
            while (i10 < oVar.s()) {
                oVar2.f27839a[i10] = (k) this.f27839a[i10].g(oVar.f27839a[i10]);
                i10++;
            }
            while (i10 < s()) {
                oVar2.f27839a[i10] = this.f27839a[i10];
                i10++;
            }
        } else {
            oVar2 = new o(oVar.s());
            while (i10 < s()) {
                oVar2.f27839a[i10] = (k) this.f27839a[i10].g(oVar.f27839a[i10]);
                i10++;
            }
            while (i10 < oVar.s()) {
                oVar2.f27839a[i10] = oVar.f27839a[i10];
                i10++;
            }
        }
        return oVar2;
    }

    public final void b() {
        for (int i10 = 0; i10 < this.f27840b; i10++) {
            this.f27839a[i10].l();
        }
    }

    public final k c(int i10) {
        return this.f27839a[i10];
    }

    public final o[] d(o oVar) {
        o oVar2;
        o[] oVarArr = new o[2];
        o oVar3 = new o(this);
        oVar3.r();
        int g10 = oVar.g();
        k kVar = (k) oVar.f27839a[g10].invert();
        if (oVar3.g() < g10) {
            o oVar4 = new o(this);
            oVarArr[0] = oVar4;
            oVar4.b();
            oVarArr[0].r();
            oVar2 = new o(this);
            oVarArr[1] = oVar2;
        } else {
            o oVar5 = new o(this);
            oVarArr[0] = oVar5;
            oVar5.b();
            while (true) {
                int g11 = oVar3.g() - g10;
                if (g11 < 0) {
                    break;
                }
                k kVar2 = (k) oVar3.f27839a[oVar3.g()].e(kVar);
                o n10 = oVar.n(kVar2);
                n10.q(g11);
                oVar3 = oVar3.a(n10);
                oVar3.r();
                oVarArr[0].f27839a[g11] = (k) kVar2.clone();
            }
            oVarArr[1] = oVar3;
            oVar2 = oVarArr[0];
        }
        oVar2.r();
        return oVarArr;
    }

    public final void e(int i10) {
        int i11 = this.f27840b;
        if (i10 <= i11) {
            return;
        }
        k[] kVarArr = new k[i10];
        System.arraycopy(this.f27839a, 0, kVarArr, 0, i11);
        l n10 = this.f27839a[0].n();
        k kVar = this.f27839a[0];
        if (kVar instanceof p) {
            for (int i12 = this.f27840b; i12 < i10; i12++) {
                kVarArr[i12] = p.z((q) n10);
            }
        } else if (kVar instanceof m) {
            for (int i13 = this.f27840b; i13 < i10; i13++) {
                kVarArr[i13] = m.z((n) n10);
            }
        }
        this.f27840b = i10;
        this.f27839a = kVarArr;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        if (g() != oVar.g()) {
            return false;
        }
        for (int i10 = 0; i10 < this.f27840b; i10++) {
            if (!this.f27839a[i10].equals(oVar.f27839a[i10])) {
                return false;
            }
        }
        return true;
    }

    public final o f(o oVar) {
        o oVar2 = new o(this);
        o oVar3 = new o(oVar);
        oVar2.r();
        oVar3.r();
        o oVar4 = oVar2;
        o oVar5 = oVar3;
        while (!oVar5.h()) {
            o oVar6 = oVar5;
            oVar5 = oVar4.m(oVar5);
            oVar4 = oVar6;
        }
        return oVar4.n((k) oVar4.f27839a[oVar4.g()].invert());
    }

    public final int g() {
        for (int i10 = this.f27840b - 1; i10 >= 0; i10--) {
            if (!this.f27839a[i10].a()) {
                return i10;
            }
        }
        return -1;
    }

    public final boolean h() {
        for (int i10 = 0; i10 < this.f27840b; i10++) {
            k kVar = this.f27839a[i10];
            if (kVar != null && !kVar.a()) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        return (g() * 7) + org.bouncycastle.util.a.A0(this.f27839a);
    }

    public final o i(o oVar) {
        if (s() != oVar.s()) {
            throw new IllegalArgumentException("PolynomialGF2n.multiply: this and b must have the same size!");
        }
        o oVar2 = new o((r0 << 1) - 1);
        for (int i10 = 0; i10 < s(); i10++) {
            for (int i11 = 0; i11 < oVar.s(); i11++) {
                k[] kVarArr = oVar2.f27839a;
                int i12 = i10 + i11;
                k kVar = kVarArr[i12];
                if (kVar == null) {
                    kVarArr[i12] = (k) this.f27839a[i10].e(oVar.f27839a[i11]);
                } else {
                    kVarArr[i12] = (k) kVar.g(this.f27839a[i10].e(oVar.f27839a[i11]));
                }
            }
        }
        return oVar2;
    }

    public final o j(o oVar, o oVar2) {
        return i(oVar).l(oVar2);
    }

    public final o k(o oVar) throws RuntimeException, ArithmeticException {
        return d(oVar)[0];
    }

    public final o l(o oVar) throws RuntimeException, ArithmeticException {
        return m(oVar);
    }

    public final o m(o oVar) throws RuntimeException, ArithmeticException {
        return d(oVar)[1];
    }

    public final o n(k kVar) {
        o oVar = new o(s());
        for (int i10 = 0; i10 < s(); i10++) {
            oVar.f27839a[i10] = (k) this.f27839a[i10].e(kVar);
        }
        return oVar;
    }

    public final void o(int i10, k kVar) {
        if (!(kVar instanceof p) && !(kVar instanceof m)) {
            throw new IllegalArgumentException("PolynomialGF2n.set f must be an instance of either GF2nPolynomialElement or GF2nONBElement!");
        }
        this.f27839a[i10] = (k) kVar.clone();
    }

    public final o p(int i10) {
        if (i10 <= 0) {
            return new o(this);
        }
        o oVar = new o(this.f27840b + i10, this.f27839a[0]);
        oVar.b();
        for (int i11 = 0; i11 < this.f27840b; i11++) {
            oVar.f27839a[i11 + i10] = this.f27839a[i11];
        }
        return oVar;
    }

    public final void q(int i10) {
        if (i10 > 0) {
            int i11 = this.f27840b;
            l n10 = this.f27839a[0].n();
            e(this.f27840b + i10);
            for (int i12 = i11 - 1; i12 >= 0; i12--) {
                k[] kVarArr = this.f27839a;
                kVarArr[i12 + i10] = kVarArr[i12];
            }
            k kVar = this.f27839a[0];
            if (kVar instanceof p) {
                for (int i13 = i10 - 1; i13 >= 0; i13--) {
                    this.f27839a[i13] = p.z((q) n10);
                }
                return;
            }
            if (kVar instanceof m) {
                for (int i14 = i10 - 1; i14 >= 0; i14--) {
                    this.f27839a[i14] = m.z((n) n10);
                }
            }
        }
    }

    public final void r() {
        int i10 = this.f27840b;
        do {
            i10--;
            if (!this.f27839a[i10].a()) {
                break;
            }
        } while (i10 > 0);
        int i11 = i10 + 1;
        if (i11 < this.f27840b) {
            k[] kVarArr = new k[i11];
            System.arraycopy(this.f27839a, 0, kVarArr, 0, i11);
            this.f27839a = kVarArr;
            this.f27840b = i11;
        }
    }

    public final int s() {
        return this.f27840b;
    }

    public o(int i10, k kVar) {
        this.f27840b = i10;
        this.f27839a = new k[i10];
        for (int i11 = 0; i11 < this.f27840b; i11++) {
            this.f27839a[i11] = (k) kVar.clone();
        }
    }

    public o(f fVar, l lVar) {
        int d10 = lVar.d() + 1;
        this.f27840b = d10;
        this.f27839a = new k[d10];
        int i10 = 0;
        if (lVar instanceof n) {
            while (i10 < this.f27840b) {
                if (fVar.U(i10)) {
                    this.f27839a[i10] = m.y((n) lVar);
                } else {
                    this.f27839a[i10] = m.z((n) lVar);
                }
                i10++;
            }
            return;
        }
        if (!(lVar instanceof q)) {
            throw new IllegalArgumentException("PolynomialGF2n(Bitstring, GF2nField): B1 must be an instance of GF2nONBField or GF2nPolynomialField!");
        }
        while (i10 < this.f27840b) {
            if (fVar.U(i10)) {
                this.f27839a[i10] = p.y((q) lVar);
            } else {
                this.f27839a[i10] = p.z((q) lVar);
            }
            i10++;
        }
    }

    public o(o oVar) {
        int i10 = oVar.f27840b;
        this.f27839a = new k[i10];
        this.f27840b = i10;
        for (int i11 = 0; i11 < this.f27840b; i11++) {
            this.f27839a[i11] = (k) oVar.f27839a[i11].clone();
        }
    }
}
