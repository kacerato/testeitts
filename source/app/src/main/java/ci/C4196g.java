package ci;

import hi.C13486b;
import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14539s;
import oh.C14549x;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class C4196g extends AbstractC14545v {

    public static final C14549x f34840g = new C14549x("1.3.6.1.5.5.11.0.2.1");

    public C14539s f34841b;

    public E f34842c;

    public C4194e f34843d;

    public C4195f f34844e;

    public C4193d f34845f;

    public C4196g(C4194e c4194e, C4195f c4195f, C4191b c4191b) {
        this.f34841b = new C14539s(1L);
        this.f34842c = new G0(c4191b.v());
        this.f34843d = c4194e;
        this.f34844e = c4195f;
        this.f34845f = new C4193d(new C4192c(c4191b));
    }

    public static C4196g y(Object obj) {
        if (obj instanceof C4196g) {
            return (C4196g) obj;
        }
        if (obj != null) {
            return new C4196g(E.G(obj));
        }
        return null;
    }

    public static C4196g z(M m10, boolean z10) {
        return y(E.H(m10, z10));
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(5);
        c14518h.a(this.f34841b);
        c14518h.a(this.f34842c);
        C4194e c4194e = this.f34843d;
        if (c4194e != null) {
            c14518h.a(new K0(false, 0, (InterfaceC14516g) c4194e));
        }
        C4195f c4195f = this.f34844e;
        if (c4195f != null) {
            c14518h.a(new K0(false, 1, (InterfaceC14516g) c4195f));
        }
        c14518h.a(this.f34845f);
        return new G0(c14518h);
    }

    public String toString() {
        return "EvidenceRecord: Oid(" + ((Object) f34840g) + ")";
    }

    public C4196g u(C4191b c4191b, boolean z10) {
        if (z10) {
            return new C4196g(this, this.f34845f.u(new C4192c(c4191b)), c4191b);
        }
        C4192c[] v10 = this.f34845f.v();
        if (!v10[v10.length - 1].v()[0].v().equals(c4191b.v())) {
            throw new IllegalArgumentException("mismatch of digest algorithm in addArchiveTimeStamp");
        }
        v10[v10.length - 1] = v10[v10.length - 1].u(c4191b);
        return new C4196g(this, new C4193d(v10), (C4191b) null);
    }

    public C4193d v() {
        return this.f34845f;
    }

    public C13486b[] x() {
        int size = this.f34842c.size();
        C13486b[] c13486bArr = new C13486b[size];
        for (int i10 = 0; i10 != size; i10++) {
            c13486bArr[i10] = C13486b.v(this.f34842c.I(i10));
        }
        return c13486bArr;
    }

    public C4196g(C4196g c4196g, C4193d c4193d, C4191b c4191b) {
        E e10;
        this.f34841b = new C14539s(1L);
        this.f34841b = c4196g.f34841b;
        if (c4191b != null) {
            C13486b v10 = c4191b.v();
            C14518h c14518h = new C14518h();
            Enumeration J10 = c4196g.f34842c.J();
            while (J10.hasMoreElements()) {
                C13486b v11 = C13486b.v(J10.nextElement());
                c14518h.a(v11);
                if (v11.equals(v10)) {
                }
            }
            c14518h.a(v10);
            e10 = new G0(c14518h);
            this.f34842c = e10;
            this.f34843d = c4196g.f34843d;
            this.f34844e = c4196g.f34844e;
            this.f34845f = c4193d;
        }
        e10 = c4196g.f34842c;
        this.f34842c = e10;
        this.f34843d = c4196g.f34843d;
        this.f34844e = c4196g.f34844e;
        this.f34845f = c4193d;
    }

    public C4196g(E e10) {
        this.f34841b = new C14539s(1L);
        if (e10.size() < 3 && e10.size() > 5) {
            throw new IllegalArgumentException("wrong sequence size in constructor: " + e10.size());
        }
        C14539s F10 = C14539s.F(e10.I(0));
        if (!F10.J(1)) {
            throw new IllegalArgumentException("incompatible version");
        }
        this.f34841b = F10;
        this.f34842c = E.G(e10.I(1));
        for (int i10 = 2; i10 != e10.size() - 1; i10++) {
            InterfaceC14516g I10 = e10.I(i10);
            if (!(I10 instanceof M)) {
                throw new IllegalArgumentException("unknown object in getInstance: " + I10.getClass().getName());
            }
            M m10 = (M) I10;
            int g10 = m10.g();
            if (g10 == 0) {
                this.f34843d = C4194e.w(m10, false);
            } else {
                if (g10 != 1) {
                    throw new IllegalArgumentException("unknown tag in getInstance: " + m10.g());
                }
                this.f34844e = C4195f.y(m10, false);
            }
        }
        this.f34845f = C4193d.w(e10.I(e10.size() - 1));
    }

    public C4196g(C13486b[] c13486bArr, C4194e c4194e, C4195f c4195f, C4193d c4193d) {
        this.f34841b = new C14539s(1L);
        this.f34842c = new G0(c13486bArr);
        this.f34843d = c4194e;
        this.f34844e = c4195f;
        this.f34845f = c4193d;
    }
}
