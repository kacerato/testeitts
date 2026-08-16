package hi;

import java.math.BigInteger;
import oh.AbstractC14545v;
import oh.C14512e;
import oh.C14518h;
import oh.C14539s;
import oh.G0;

public class C13500l extends AbstractC14545v {

    public C14512e f90847b;

    public C14539s f90848c;

    public C13500l(int i10) {
        this.f90847b = C14512e.I(false);
        this.f90848c = null;
        this.f90847b = C14512e.I(true);
        this.f90848c = new C14539s(i10);
    }

    public static C13500l u(C13479C c13479c) {
        return v(C13479C.A(c13479c, C13478B.f90535k));
    }

    public static C13500l v(Object obj) {
        if (obj instanceof C13500l) {
            return (C13500l) obj;
        }
        if (obj instanceof y0) {
            return v(y0.a((y0) obj));
        }
        if (obj != null) {
            return new C13500l(oh.E.G(obj));
        }
        return null;
    }

    public static C13500l w(oh.M m10, boolean z10) {
        return v(oh.E.H(m10, z10));
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        C14512e c14512e = this.f90847b;
        if (c14512e != null) {
            c14518h.a(c14512e);
        }
        C14539s c14539s = this.f90848c;
        if (c14539s != null) {
            c14518h.a(c14539s);
        }
        return new G0(c14518h);
    }

    public String toString() {
        StringBuilder sb2;
        if (this.f90848c == null) {
            sb2 = new StringBuilder();
            sb2.append("BasicConstraints: isCa(");
            sb2.append(z());
            sb2.append(")");
        } else {
            sb2 = new StringBuilder();
            sb2.append("BasicConstraints: isCa(");
            sb2.append(z());
            sb2.append("), pathLenConstraint = ");
            sb2.append((Object) this.f90848c.I());
        }
        return sb2.toString();
    }

    public BigInteger x() {
        C14539s c14539s = this.f90848c;
        if (c14539s != null) {
            return c14539s.I();
        }
        return null;
    }

    public C14539s y() {
        return this.f90848c;
    }

    public boolean z() {
        C14512e c14512e = this.f90847b;
        return c14512e != null && c14512e.J();
    }

    public C13500l(oh.E e10) {
        this.f90847b = C14512e.I(false);
        this.f90848c = null;
        if (e10.size() == 0) {
            this.f90847b = null;
            this.f90848c = null;
            return;
        }
        if (e10.I(0) instanceof C14512e) {
            this.f90847b = C14512e.G(e10.I(0));
        } else {
            this.f90847b = null;
            this.f90848c = C14539s.F(e10.I(0));
        }
        if (e10.size() > 1) {
            if (this.f90847b == null) {
                throw new IllegalArgumentException("wrong sequence in constructor");
            }
            this.f90848c = C14539s.F(e10.I(1));
        }
    }

    public C13500l(boolean z10) {
        this.f90847b = C14512e.I(false);
        this.f90848c = null;
        if (z10) {
            this.f90847b = C14512e.I(true);
        } else {
            this.f90847b = null;
        }
        this.f90848c = null;
    }
}
