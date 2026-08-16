package Wl;

import java.math.BigInteger;
import java.util.Random;

public class p extends k {

    public static final int[] f27841d = {1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536, 131072, 262144, 524288, 1048576, 2097152, 4194304, 8388608, 16777216, 33554432, 67108864, 134217728, 268435456, 536870912, 1073741824, Integer.MIN_VALUE, 0};

    public f f27842c;

    public p(p pVar) {
        this.f27820a = pVar.f27820a;
        this.f27821b = pVar.f27821b;
        this.f27842c = new f(pVar.f27842c);
    }

    public static p y(q qVar) {
        return new p(qVar, new f(qVar.d(), new int[]{1}));
    }

    public static p z(q qVar) {
        return new p(qVar, new f(qVar.d()));
    }

    public final f A() {
        return new f(this.f27842c);
    }

    public final p B() throws RuntimeException {
        if ((this.f27821b & 1) == 0) {
            throw new RuntimeException();
        }
        p pVar = new p(this);
        for (int i10 = 1; i10 <= ((this.f27821b - 1) >> 1); i10++) {
            pVar.u();
            pVar.u();
            pVar.f(this);
        }
        return pVar;
    }

    public p C() throws ArithmeticException {
        if (a()) {
            throw new ArithmeticException();
        }
        f fVar = new f(this.f27821b + 32, "ONE");
        fVar.D();
        f fVar2 = new f(this.f27821b + 32);
        fVar2.D();
        f A10 = A();
        f e10 = this.f27820a.e();
        A10.D();
        while (!A10.p()) {
            A10.D();
            e10.D();
            int l10 = A10.l() - e10.l();
            if (l10 < 0) {
                l10 = -l10;
                fVar.D();
                f fVar3 = fVar2;
                fVar2 = fVar;
                fVar = fVar3;
                f fVar4 = e10;
                e10 = A10;
                A10 = fVar4;
            }
            A10.M(e10, l10);
            fVar.M(fVar2, l10);
        }
        fVar.D();
        return new p((q) this.f27820a, fVar);
    }

    public p D() throws ArithmeticException {
        if (a()) {
            throw new ArithmeticException();
        }
        f fVar = new f(this.f27821b, "ONE");
        f fVar2 = new f(this.f27821b);
        f A10 = A();
        f e10 = this.f27820a.e();
        while (true) {
            if (!A10.U(0)) {
                A10.P();
                if (fVar.U(0)) {
                    fVar.b(this.f27820a.e());
                }
                fVar.P();
            } else {
                if (A10.p()) {
                    return new p((q) this.f27820a, fVar);
                }
                A10.D();
                e10.D();
                if (A10.l() < e10.l()) {
                    f fVar3 = fVar2;
                    fVar2 = fVar;
                    fVar = fVar3;
                    f fVar4 = e10;
                    e10 = A10;
                    A10 = fVar4;
                }
                A10.b(e10);
                fVar.b(fVar2);
            }
        }
    }

    public p E() throws ArithmeticException {
        if (a()) {
            throw new ArithmeticException();
        }
        int d10 = this.f27820a.d() - 1;
        p pVar = new p(this);
        pVar.f27842c.i((this.f27821b << 1) + 32);
        pVar.f27842c.D();
        int i10 = 1;
        for (int l10 = u.l(d10) - 1; l10 >= 0; l10--) {
            p pVar2 = new p(pVar);
            for (int i11 = 1; i11 <= i10; i11++) {
                pVar2.P();
            }
            pVar.j(pVar2);
            i10 <<= 1;
            if ((f27841d[l10] & d10) != 0) {
                pVar.P();
                pVar.j(this);
                i10++;
            }
        }
        pVar.P();
        return pVar;
    }

    public p F(int i10) {
        if (i10 == 1) {
            return new p(this);
        }
        p y10 = y((q) this.f27820a);
        if (i10 == 0) {
            return y10;
        }
        p pVar = new p(this);
        pVar.f27842c.i((pVar.f27821b << 1) + 32);
        pVar.f27842c.D();
        for (int i11 = 0; i11 < this.f27821b; i11++) {
            if (((1 << i11) & i10) != 0) {
                y10.j(pVar);
            }
            pVar.r();
        }
        return y10;
    }

    public final void G(Random random) {
        this.f27842c.i(this.f27821b);
        this.f27842c.C(random);
    }

    public final void H(int[] iArr) {
        int i10 = this.f27821b;
        int i11 = i10 - iArr[2];
        int i12 = i10 - iArr[1];
        int i13 = i10 - iArr[0];
        for (int l10 = this.f27842c.l() - 1; l10 >= this.f27821b; l10--) {
            if (this.f27842c.U(l10)) {
                this.f27842c.c0(l10);
                this.f27842c.c0(l10 - i11);
                this.f27842c.c0(l10 - i12);
                this.f27842c.c0(l10 - i13);
                this.f27842c.c0(l10 - this.f27821b);
            }
        }
        this.f27842c.D();
        this.f27842c.i(this.f27821b);
    }

    public final void I() {
        if (this.f27842c.l() <= this.f27821b) {
            int l10 = this.f27842c.l();
            int i10 = this.f27821b;
            if (l10 < i10) {
                this.f27842c.i(i10);
                return;
            }
            return;
        }
        if (((q) this.f27820a).n()) {
            try {
                int l11 = ((q) this.f27820a).l();
                if (this.f27821b - l11 > 32) {
                    int l12 = this.f27842c.l();
                    int i11 = this.f27821b;
                    if (l12 <= (i11 << 1)) {
                        this.f27842c.F(i11, l11);
                        return;
                    }
                }
                J(l11);
                return;
            } catch (RuntimeException unused) {
                throw new RuntimeException("GF2nPolynomialElement.reduce: the field polynomial is not a trinomial");
            }
        }
        if (!((q) this.f27820a).m()) {
            f G10 = this.f27842c.G(this.f27820a.e());
            this.f27842c = G10;
            G10.i(this.f27821b);
            return;
        }
        try {
            int[] j10 = ((q) this.f27820a).j();
            if (this.f27821b - j10[2] > 32) {
                int l13 = this.f27842c.l();
                int i12 = this.f27821b;
                if (l13 <= (i12 << 1)) {
                    this.f27842c.E(i12, j10);
                    return;
                }
            }
            H(j10);
        } catch (RuntimeException unused2) {
            throw new RuntimeException("GF2nPolynomialElement.reduce: the field polynomial is not a pentanomial");
        }
    }

    public final void J(int i10) {
        int i11 = this.f27821b - i10;
        int l10 = this.f27842c.l();
        while (true) {
            l10--;
            if (l10 < this.f27821b) {
                this.f27842c.D();
                this.f27842c.i(this.f27821b);
                return;
            } else if (this.f27842c.U(l10)) {
                this.f27842c.c0(l10);
                this.f27842c.c0(l10 - i11);
                this.f27842c.c0(l10 - this.f27821b);
            }
        }
    }

    public p K() {
        p pVar = new p(this);
        pVar.N();
        pVar.I();
        return pVar;
    }

    public p L() {
        p pVar = new p(this);
        pVar.O();
        pVar.I();
        return pVar;
    }

    public p M() {
        p pVar = new p(this);
        pVar.P();
        pVar.I();
        return pVar;
    }

    public void N() {
        this.f27842c.Q();
        I();
    }

    public void O() {
        f fVar = new f(this.f27821b);
        int i10 = 0;
        while (true) {
            if (i10 >= this.f27821b) {
                this.f27842c = fVar;
                return;
            } else {
                if (this.f27842c.a0(((q) this.f27820a).f27843f[(r2 - i10) - 1])) {
                    fVar.I(i10);
                }
                i10++;
            }
        }
    }

    public void P() {
        this.f27842c.R();
        I();
    }

    @Override
    public boolean a() {
        return this.f27842c.q();
    }

    @Override
    public Object clone() {
        return new p(this);
    }

    @Override
    public BigInteger d() {
        return this.f27842c.W();
    }

    @Override
    public r e(r rVar) throws RuntimeException {
        p pVar = new p(this);
        pVar.j(rVar);
        return pVar;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        l lVar = this.f27820a;
        if (lVar == pVar.f27820a || lVar.e().equals(pVar.f27820a.e())) {
            return this.f27842c.equals(pVar.f27842c);
        }
        return false;
    }

    @Override
    public void f(r rVar) throws RuntimeException {
        if (!(rVar instanceof p)) {
            throw new RuntimeException();
        }
        p pVar = (p) rVar;
        if (!this.f27820a.equals(pVar.f27820a)) {
            throw new RuntimeException();
        }
        this.f27842c.b(pVar.f27842c);
    }

    @Override
    public r g(r rVar) throws RuntimeException {
        p pVar = new p(this);
        pVar.f(rVar);
        return pVar;
    }

    @Override
    public String h(int i10) {
        return this.f27842c.Y(i10);
    }

    @Override
    public int hashCode() {
        return this.f27820a.hashCode() + this.f27842c.hashCode();
    }

    @Override
    public boolean i() {
        return this.f27842c.p();
    }

    @Override
    public r invert() throws ArithmeticException {
        return D();
    }

    @Override
    public void j(r rVar) throws RuntimeException {
        if (!(rVar instanceof p)) {
            throw new RuntimeException();
        }
        p pVar = (p) rVar;
        if (!this.f27820a.equals(pVar.f27820a)) {
            throw new RuntimeException();
        }
        if (equals(rVar)) {
            u();
        } else {
            this.f27842c = this.f27842c.y(pVar.f27842c);
            I();
        }
    }

    @Override
    public void k() {
        this.f27842c.d();
    }

    @Override
    public void l() {
        this.f27842c.f();
    }

    @Override
    public k o() {
        p pVar = new p(this);
        pVar.p();
        return pVar;
    }

    @Override
    public void p() {
        this.f27842c.n();
    }

    @Override
    public k q() throws RuntimeException {
        p z10;
        p pVar;
        if (a()) {
            return z((q) this.f27820a);
        }
        if ((this.f27821b & 1) == 1) {
            return B();
        }
        do {
            p pVar2 = new p((q) this.f27820a, new Random());
            z10 = z((q) this.f27820a);
            pVar = (p) pVar2.clone();
            for (int i10 = 1; i10 < this.f27821b; i10++) {
                z10.u();
                pVar.u();
                z10.f(pVar.e(this));
                pVar.f(pVar2);
            }
        } while (pVar.a());
        if (equals(z10.r().g(z10))) {
            return z10;
        }
        throw new RuntimeException();
    }

    @Override
    public k r() {
        return M();
    }

    @Override
    public k s() {
        p pVar = new p(this);
        pVar.t();
        return pVar;
    }

    @Override
    public void t() {
        this.f27842c.i((this.f27821b << 1) + 32);
        this.f27842c.D();
        for (int i10 = 0; i10 < this.f27820a.d() - 1; i10++) {
            u();
        }
    }

    @Override
    public byte[] toByteArray() {
        return this.f27842c.V();
    }

    @Override
    public String toString() {
        return this.f27842c.Y(16);
    }

    @Override
    public void u() {
        P();
    }

    @Override
    public boolean v(int i10) {
        return this.f27842c.U(i10);
    }

    @Override
    public boolean w() {
        return this.f27842c.U(0);
    }

    @Override
    public int x() {
        p pVar = new p(this);
        for (int i10 = 1; i10 < this.f27821b; i10++) {
            pVar.u();
            pVar.f(this);
        }
        return pVar.i() ? 1 : 0;
    }

    public p(q qVar, f fVar) {
        this.f27820a = qVar;
        this.f27821b = qVar.d();
        f fVar2 = new f(fVar);
        this.f27842c = fVar2;
        fVar2.i(this.f27821b);
    }

    public p(q qVar, Random random) {
        this.f27820a = qVar;
        this.f27821b = qVar.d();
        this.f27842c = new f(this.f27821b);
        G(random);
    }

    public p(q qVar, byte[] bArr) {
        this.f27820a = qVar;
        this.f27821b = qVar.d();
        f fVar = new f(this.f27821b, bArr);
        this.f27842c = fVar;
        fVar.i(this.f27821b);
    }

    public p(q qVar, int[] iArr) {
        this.f27820a = qVar;
        this.f27821b = qVar.d();
        f fVar = new f(this.f27821b, iArr);
        this.f27842c = fVar;
        fVar.i(qVar.f27823b);
    }
}
