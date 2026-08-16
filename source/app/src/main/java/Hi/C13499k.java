package hi;

import java.math.BigInteger;
import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C14518h;
import oh.C14539s;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;

public class C13499k extends AbstractC14545v {

    public AbstractC14551y f90832b;

    public C13482F f90833c;

    public C14539s f90834d;

    public C13499k(C13482F c13482f, BigInteger bigInteger) {
        this((byte[]) null, c13482f, bigInteger);
    }

    public static C13499k u(C13479C c13479c) {
        return y(C13479C.A(c13479c, C13478B.f90547w));
    }

    public static C13499k y(Object obj) {
        if (obj instanceof C13499k) {
            return (C13499k) obj;
        }
        if (obj != null) {
            return new C13499k(oh.E.G(obj));
        }
        return null;
    }

    public static C13499k z(oh.M m10, boolean z10) {
        return y(oh.E.H(m10, z10));
    }

    public byte[] A() {
        AbstractC14551y abstractC14551y = this.f90832b;
        if (abstractC14551y != null) {
            return abstractC14551y.H();
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(3);
        AbstractC14551y abstractC14551y = this.f90832b;
        if (abstractC14551y != null) {
            c14518h.a(new K0(false, 0, (InterfaceC14516g) abstractC14551y));
        }
        C13482F c13482f = this.f90833c;
        if (c13482f != null) {
            c14518h.a(new K0(false, 1, (InterfaceC14516g) c13482f));
        }
        C14539s c14539s = this.f90834d;
        if (c14539s != null) {
            c14518h.a(new K0(false, 2, (InterfaceC14516g) c14539s));
        }
        return new G0(c14518h);
    }

    public String toString() {
        AbstractC14551y abstractC14551y = this.f90832b;
        return "AuthorityKeyIdentifier: KeyID(" + (abstractC14551y != null ? em.h.j(abstractC14551y.H()) : "null") + ")";
    }

    public C13482F v() {
        return this.f90833c;
    }

    public BigInteger x() {
        C14539s c14539s = this.f90834d;
        if (c14539s != null) {
            return c14539s.I();
        }
        return null;
    }

    public C13499k(h0 h0Var) {
        this(h0Var, (C13482F) null, (BigInteger) null);
    }

    public C13499k(h0 h0Var, C13482F c13482f, BigInteger bigInteger) {
        this.f90832b = null;
        this.f90833c = null;
        this.f90834d = null;
        Ii.J j10 = new Ii.J();
        byte[] bArr = new byte[j10.f()];
        byte[] F10 = h0Var.z().F();
        j10.update(F10, 0, F10.length);
        j10.c(bArr, 0);
        this.f90832b = new oh.C0(bArr);
        this.f90833c = c13482f;
        this.f90834d = bigInteger != null ? new C14539s(bigInteger) : null;
    }

    public C13499k(oh.E e10) {
        this.f90832b = null;
        this.f90833c = null;
        this.f90834d = null;
        Enumeration J10 = e10.J();
        while (J10.hasMoreElements()) {
            oh.M R10 = oh.M.R(J10.nextElement());
            int g10 = R10.g();
            if (g10 == 0) {
                this.f90832b = AbstractC14551y.G(R10, false);
            } else if (g10 == 1) {
                this.f90833c = C13482F.x(R10, false);
            } else {
                if (g10 != 2) {
                    throw new IllegalArgumentException("illegal tag");
                }
                this.f90834d = C14539s.G(R10, false);
            }
        }
    }

    public C13499k(byte[] bArr) {
        this(bArr, (C13482F) null, (BigInteger) null);
    }

    public C13499k(byte[] bArr, C13482F c13482f, BigInteger bigInteger) {
        this.f90832b = null;
        this.f90833c = null;
        this.f90834d = null;
        this.f90832b = bArr != null ? new oh.C0(org.bouncycastle.util.a.p(bArr)) : null;
        this.f90833c = c13482f;
        this.f90834d = bigInteger != null ? new C14539s(bigInteger) : null;
    }
}
