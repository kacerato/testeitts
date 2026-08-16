package jk;

import java.math.BigInteger;
import java.util.Random;

public abstract class f implements InterfaceC13874d {

    public static abstract class a extends f {
        public f w() {
            int g10 = g();
            if ((g10 & 1) == 0) {
                throw new IllegalStateException("Half-trace only defined for odd m");
            }
            int i10 = (g10 + 1) >>> 1;
            int d10 = 31 - org.bouncycastle.util.k.d(i10);
            f fVar = this;
            int i11 = 1;
            while (d10 > 0) {
                fVar = fVar.s(i11 << 1).a(fVar);
                d10--;
                i11 = i10 >>> d10;
                if ((i11 & 1) != 0) {
                    fVar = fVar.s(2).a(this);
                }
            }
            return fVar;
        }

        public boolean x() {
            return false;
        }

        public int y() {
            int g10 = g();
            int d10 = 31 - org.bouncycastle.util.k.d(g10);
            f fVar = this;
            int i10 = 1;
            while (d10 > 0) {
                fVar = fVar.s(i10).a(fVar);
                d10--;
                i10 = g10 >>> d10;
                if ((i10 & 1) != 0) {
                    fVar = fVar.p().a(this);
                }
            }
            if (fVar.j()) {
                return 0;
            }
            if (fVar.i()) {
                return 1;
            }
            throw new IllegalStateException("Internal error in trace calculation");
        }
    }

    public static abstract class b extends f {
    }

    public static class c extends a {

        public static final int f93901k = 1;

        public static final int f93902l = 2;

        public static final int f93903m = 3;

        public int f93904g;

        public int f93905h;

        public int[] f93906i;

        public o f93907j;

        public c(int i10, int[] iArr, o oVar) {
            this.f93905h = i10;
            this.f93904g = iArr.length == 1 ? 2 : 3;
            this.f93906i = iArr;
            this.f93907j = oVar;
        }

        public int A() {
            int[] iArr = this.f93906i;
            if (iArr.length >= 2) {
                return iArr[1];
            }
            return 0;
        }

        public int B() {
            int[] iArr = this.f93906i;
            if (iArr.length >= 3) {
                return iArr[2];
            }
            return 0;
        }

        public int C() {
            return this.f93905h;
        }

        public int D() {
            return this.f93904g;
        }

        @Override
        public f a(f fVar) {
            o oVar = (o) this.f93907j.clone();
            oVar.f(((c) fVar).f93907j, 0);
            return new c(this.f93905h, this.f93906i, oVar);
        }

        @Override
        public f b() {
            return new c(this.f93905h, this.f93906i, this.f93907j.d());
        }

        @Override
        public int c() {
            return this.f93907j.k();
        }

        @Override
        public f d(f fVar) {
            return k(fVar.h());
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.f93905h == cVar.f93905h && this.f93904g == cVar.f93904g && org.bouncycastle.util.a.i(this.f93906i, cVar.f93906i) && this.f93907j.equals(cVar.f93907j);
        }

        @Override
        public String f() {
            return "F2m";
        }

        @Override
        public int g() {
            return this.f93905h;
        }

        @Override
        public f h() {
            int i10 = this.f93905h;
            int[] iArr = this.f93906i;
            return new c(i10, iArr, this.f93907j.I(i10, iArr));
        }

        public int hashCode() {
            return (this.f93907j.hashCode() ^ this.f93905h) ^ org.bouncycastle.util.a.w0(this.f93906i);
        }

        @Override
        public boolean i() {
            return this.f93907j.G();
        }

        @Override
        public boolean j() {
            return this.f93907j.H();
        }

        @Override
        public f k(f fVar) {
            int i10 = this.f93905h;
            int[] iArr = this.f93906i;
            return new c(i10, iArr, this.f93907j.J(((c) fVar).f93907j, i10, iArr));
        }

        @Override
        public f l(f fVar, f fVar2, f fVar3) {
            return m(fVar, fVar2, fVar3);
        }

        @Override
        public f m(f fVar, f fVar2, f fVar3) {
            o oVar = this.f93907j;
            o oVar2 = ((c) fVar).f93907j;
            o oVar3 = ((c) fVar2).f93907j;
            o oVar4 = ((c) fVar3).f93907j;
            o P10 = oVar.P(oVar2, this.f93905h, this.f93906i);
            o P11 = oVar3.P(oVar4, this.f93905h, this.f93906i);
            if (P10 == oVar || P10 == oVar2) {
                P10 = (o) P10.clone();
            }
            P10.f(P11, 0);
            P10.R(this.f93905h, this.f93906i);
            return new c(this.f93905h, this.f93906i, P10);
        }

        @Override
        public f n() {
            return this;
        }

        @Override
        public f o() {
            return (this.f93907j.H() || this.f93907j.G()) ? this : s(this.f93905h - 1);
        }

        @Override
        public f p() {
            int i10 = this.f93905h;
            int[] iArr = this.f93906i;
            return new c(i10, iArr, this.f93907j.N(i10, iArr));
        }

        @Override
        public f q(f fVar, f fVar2) {
            return r(fVar, fVar2);
        }

        @Override
        public f r(f fVar, f fVar2) {
            o oVar = this.f93907j;
            o oVar2 = ((c) fVar).f93907j;
            o oVar3 = ((c) fVar2).f93907j;
            o e02 = oVar.e0(this.f93905h, this.f93906i);
            o P10 = oVar2.P(oVar3, this.f93905h, this.f93906i);
            if (e02 == oVar) {
                e02 = (o) e02.clone();
            }
            e02.f(P10, 0);
            e02.R(this.f93905h, this.f93906i);
            return new c(this.f93905h, this.f93906i, e02);
        }

        @Override
        public f s(int i10) {
            if (i10 < 1) {
                return this;
            }
            int i11 = this.f93905h;
            int[] iArr = this.f93906i;
            return new c(i11, iArr, this.f93907j.O(i10, i11, iArr));
        }

        @Override
        public f t(f fVar) {
            return a(fVar);
        }

        @Override
        public boolean u() {
            return this.f93907j.h0();
        }

        @Override
        public BigInteger v() {
            return this.f93907j.i0();
        }

        public int z() {
            return this.f93906i[0];
        }
    }

    public static class d extends b {

        public BigInteger f93908g;

        public BigInteger f93909h;

        public BigInteger f93910i;

        public d(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
            this.f93908g = bigInteger;
            this.f93909h = bigInteger2;
            this.f93910i = bigInteger3;
        }

        public static BigInteger w(BigInteger bigInteger) {
            int bitLength = bigInteger.bitLength();
            if (bitLength < 96 || bigInteger.shiftRight(bitLength - 64).longValue() != -1) {
                return null;
            }
            return InterfaceC13874d.f93854b.shiftLeft(bitLength).subtract(bigInteger);
        }

        public BigInteger A(BigInteger bigInteger, BigInteger bigInteger2) {
            BigInteger add = bigInteger.add(bigInteger2);
            return add.compareTo(this.f93908g) >= 0 ? add.subtract(this.f93908g) : add;
        }

        public BigInteger B(BigInteger bigInteger) {
            BigInteger shiftLeft = bigInteger.shiftLeft(1);
            return shiftLeft.compareTo(this.f93908g) >= 0 ? shiftLeft.subtract(this.f93908g) : shiftLeft;
        }

        public BigInteger C(BigInteger bigInteger) {
            if (bigInteger.testBit(0)) {
                bigInteger = this.f93908g.add(bigInteger);
            }
            return bigInteger.shiftRight(1);
        }

        public BigInteger D(BigInteger bigInteger) {
            if (bigInteger.testBit(0)) {
                bigInteger = this.f93908g.subtract(bigInteger);
            }
            return bigInteger.shiftRight(1);
        }

        public BigInteger E(BigInteger bigInteger) {
            return org.bouncycastle.util.b.n(this.f93908g, bigInteger);
        }

        public BigInteger F(BigInteger bigInteger, BigInteger bigInteger2) {
            return G(bigInteger.multiply(bigInteger2));
        }

        public BigInteger G(BigInteger bigInteger) {
            if (this.f93909h == null) {
                return bigInteger.mod(this.f93908g);
            }
            boolean z10 = bigInteger.signum() < 0;
            if (z10) {
                bigInteger = bigInteger.abs();
            }
            int bitLength = this.f93908g.bitLength();
            boolean equals = this.f93909h.equals(InterfaceC13874d.f93854b);
            while (bigInteger.bitLength() > bitLength + 1) {
                BigInteger shiftRight = bigInteger.shiftRight(bitLength);
                BigInteger subtract = bigInteger.subtract(shiftRight.shiftLeft(bitLength));
                if (!equals) {
                    shiftRight = shiftRight.multiply(this.f93909h);
                }
                bigInteger = shiftRight.add(subtract);
            }
            while (bigInteger.compareTo(this.f93908g) >= 0) {
                bigInteger = bigInteger.subtract(this.f93908g);
            }
            return (!z10 || bigInteger.signum() == 0) ? bigInteger : this.f93908g.subtract(bigInteger);
        }

        public BigInteger H(BigInteger bigInteger, BigInteger bigInteger2) {
            BigInteger subtract = bigInteger.subtract(bigInteger2);
            return subtract.signum() < 0 ? subtract.add(this.f93908g) : subtract;
        }

        @Override
        public f a(f fVar) {
            return new d(this.f93908g, this.f93909h, A(this.f93910i, fVar.v()));
        }

        @Override
        public f b() {
            BigInteger add = this.f93910i.add(InterfaceC13874d.f93854b);
            if (add.compareTo(this.f93908g) == 0) {
                add = InterfaceC13874d.f93853a;
            }
            return new d(this.f93908g, this.f93909h, add);
        }

        @Override
        public f d(f fVar) {
            return new d(this.f93908g, this.f93909h, F(this.f93910i, E(fVar.v())));
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return this.f93908g.equals(dVar.f93908g) && this.f93910i.equals(dVar.f93910i);
        }

        @Override
        public String f() {
            return "Fp";
        }

        @Override
        public int g() {
            return this.f93908g.bitLength();
        }

        @Override
        public f h() {
            return new d(this.f93908g, this.f93909h, E(this.f93910i));
        }

        public int hashCode() {
            return this.f93908g.hashCode() ^ this.f93910i.hashCode();
        }

        @Override
        public f k(f fVar) {
            return new d(this.f93908g, this.f93909h, F(this.f93910i, fVar.v()));
        }

        @Override
        public f l(f fVar, f fVar2, f fVar3) {
            BigInteger bigInteger = this.f93910i;
            BigInteger v10 = fVar.v();
            BigInteger v11 = fVar2.v();
            BigInteger v12 = fVar3.v();
            return new d(this.f93908g, this.f93909h, G(bigInteger.multiply(v10).subtract(v11.multiply(v12))));
        }

        @Override
        public f m(f fVar, f fVar2, f fVar3) {
            BigInteger bigInteger = this.f93910i;
            BigInteger v10 = fVar.v();
            BigInteger v11 = fVar2.v();
            BigInteger v12 = fVar3.v();
            return new d(this.f93908g, this.f93909h, G(bigInteger.multiply(v10).add(v11.multiply(v12))));
        }

        @Override
        public f n() {
            if (this.f93910i.signum() == 0) {
                return this;
            }
            BigInteger bigInteger = this.f93908g;
            return new d(bigInteger, this.f93909h, bigInteger.subtract(this.f93910i));
        }

        @Override
        public f o() {
            if (j() || i()) {
                return this;
            }
            if (!this.f93908g.testBit(0)) {
                throw new RuntimeException("not done yet");
            }
            if (this.f93908g.testBit(1)) {
                BigInteger add = this.f93908g.shiftRight(2).add(InterfaceC13874d.f93854b);
                BigInteger bigInteger = this.f93908g;
                return x(new d(bigInteger, this.f93909h, this.f93910i.modPow(add, bigInteger)));
            }
            if (this.f93908g.testBit(2)) {
                BigInteger modPow = this.f93910i.modPow(this.f93908g.shiftRight(3), this.f93908g);
                BigInteger F10 = F(modPow, this.f93910i);
                if (F(F10, modPow).equals(InterfaceC13874d.f93854b)) {
                    return x(new d(this.f93908g, this.f93909h, F10));
                }
                return x(new d(this.f93908g, this.f93909h, F(F10, InterfaceC13874d.f93855c.modPow(this.f93908g.shiftRight(2), this.f93908g))));
            }
            BigInteger shiftRight = this.f93908g.shiftRight(1);
            BigInteger modPow2 = this.f93910i.modPow(shiftRight, this.f93908g);
            BigInteger bigInteger2 = InterfaceC13874d.f93854b;
            if (!modPow2.equals(bigInteger2)) {
                return null;
            }
            BigInteger bigInteger3 = this.f93910i;
            BigInteger B10 = B(B(bigInteger3));
            BigInteger add2 = shiftRight.add(bigInteger2);
            BigInteger subtract = this.f93908g.subtract(bigInteger2);
            Random random = new Random();
            while (true) {
                BigInteger bigInteger4 = new BigInteger(this.f93908g.bitLength(), random);
                if (bigInteger4.compareTo(this.f93908g) < 0 && G(bigInteger4.multiply(bigInteger4).subtract(B10)).modPow(shiftRight, this.f93908g).equals(subtract)) {
                    BigInteger[] z10 = z(bigInteger4, bigInteger3, add2);
                    BigInteger bigInteger5 = z10[0];
                    BigInteger bigInteger6 = z10[1];
                    if (F(bigInteger6, bigInteger6).equals(B10)) {
                        return new d(this.f93908g, this.f93909h, D(bigInteger6));
                    }
                    if (!bigInteger5.equals(InterfaceC13874d.f93854b) && !bigInteger5.equals(subtract)) {
                        return null;
                    }
                }
            }
        }

        @Override
        public f p() {
            BigInteger bigInteger = this.f93908g;
            BigInteger bigInteger2 = this.f93909h;
            BigInteger bigInteger3 = this.f93910i;
            return new d(bigInteger, bigInteger2, F(bigInteger3, bigInteger3));
        }

        @Override
        public f q(f fVar, f fVar2) {
            BigInteger bigInteger = this.f93910i;
            BigInteger v10 = fVar.v();
            BigInteger v11 = fVar2.v();
            return new d(this.f93908g, this.f93909h, G(bigInteger.multiply(bigInteger).subtract(v10.multiply(v11))));
        }

        @Override
        public f r(f fVar, f fVar2) {
            BigInteger bigInteger = this.f93910i;
            BigInteger v10 = fVar.v();
            BigInteger v11 = fVar2.v();
            return new d(this.f93908g, this.f93909h, G(bigInteger.multiply(bigInteger).add(v10.multiply(v11))));
        }

        @Override
        public f t(f fVar) {
            return new d(this.f93908g, this.f93909h, H(this.f93910i, fVar.v()));
        }

        @Override
        public BigInteger v() {
            return this.f93910i;
        }

        public final f x(f fVar) {
            if (fVar.p().equals(this)) {
                return fVar;
            }
            return null;
        }

        public BigInteger y() {
            return this.f93908g;
        }

        public final BigInteger[] z(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
            int bitLength = bigInteger3.bitLength();
            int lowestSetBit = bigInteger3.getLowestSetBit();
            BigInteger bigInteger4 = InterfaceC13874d.f93854b;
            BigInteger bigInteger5 = bigInteger;
            BigInteger bigInteger6 = bigInteger4;
            BigInteger bigInteger7 = InterfaceC13874d.f93855c;
            BigInteger bigInteger8 = bigInteger6;
            for (int i10 = bitLength - 1; i10 >= lowestSetBit + 1; i10--) {
                bigInteger4 = F(bigInteger4, bigInteger8);
                if (bigInteger3.testBit(i10)) {
                    bigInteger8 = F(bigInteger4, bigInteger2);
                    bigInteger6 = F(bigInteger6, bigInteger5);
                    bigInteger7 = G(bigInteger5.multiply(bigInteger7).subtract(bigInteger.multiply(bigInteger4)));
                    bigInteger5 = G(bigInteger5.multiply(bigInteger5).subtract(bigInteger8.shiftLeft(1)));
                } else {
                    BigInteger G10 = G(bigInteger6.multiply(bigInteger7).subtract(bigInteger4));
                    BigInteger G11 = G(bigInteger5.multiply(bigInteger7).subtract(bigInteger.multiply(bigInteger4)));
                    bigInteger7 = G(bigInteger7.multiply(bigInteger7).subtract(bigInteger4.shiftLeft(1)));
                    bigInteger5 = G11;
                    bigInteger6 = G10;
                    bigInteger8 = bigInteger4;
                }
            }
            BigInteger F10 = F(bigInteger4, bigInteger8);
            BigInteger F11 = F(F10, bigInteger2);
            BigInteger G12 = G(bigInteger6.multiply(bigInteger7).subtract(F10));
            BigInteger G13 = G(bigInteger5.multiply(bigInteger7).subtract(bigInteger.multiply(F10)));
            BigInteger F12 = F(F10, F11);
            for (int i11 = 1; i11 <= lowestSetBit; i11++) {
                G12 = F(G12, G13);
                G13 = G(G13.multiply(G13).subtract(F12.shiftLeft(1)));
                F12 = F(F12, F12);
            }
            return new BigInteger[]{G12, G13};
        }
    }

    public abstract f a(f fVar);

    public abstract f b();

    public int c() {
        return v().bitLength();
    }

    public abstract f d(f fVar);

    public byte[] e() {
        return org.bouncycastle.util.b.b((g() + 7) / 8, v());
    }

    public abstract String f();

    public abstract int g();

    public abstract f h();

    public boolean i() {
        return c() == 1;
    }

    public boolean j() {
        return v().signum() == 0;
    }

    public abstract f k(f fVar);

    public f l(f fVar, f fVar2, f fVar3) {
        return k(fVar).t(fVar2.k(fVar3));
    }

    public f m(f fVar, f fVar2, f fVar3) {
        return k(fVar).a(fVar2.k(fVar3));
    }

    public abstract f n();

    public abstract f o();

    public abstract f p();

    public f q(f fVar, f fVar2) {
        return p().t(fVar.k(fVar2));
    }

    public f r(f fVar, f fVar2) {
        return p().a(fVar.k(fVar2));
    }

    public f s(int i10) {
        f fVar = this;
        for (int i11 = 0; i11 < i10; i11++) {
            fVar = fVar.p();
        }
        return fVar;
    }

    public abstract f t(f fVar);

    public String toString() {
        return v().toString(16);
    }

    public boolean u() {
        return v().testBit(0);
    }

    public abstract BigInteger v();
}
