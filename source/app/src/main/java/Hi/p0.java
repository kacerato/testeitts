package hi;

import oh.AbstractC14545v;
import oh.C14518h;
import oh.G0;
import oh.InterfaceC14516g;

public class p0 extends AbstractC14545v {

    public final Q f90882b;

    public final C13511x f90883c;

    public p0(Q q10, C13511x c13511x) {
        this.f90882b = q10;
        this.f90883c = c13511x;
    }

    public static p0 v(Object obj) {
        if (obj instanceof p0) {
            return (p0) obj;
        }
        if (obj != null) {
            return new p0(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        Q q10 = this.f90882b;
        if (q10 != null) {
            c14518h.a(q10);
        }
        C13511x c13511x = this.f90883c;
        if (c13511x != null) {
            c14518h.a(c13511x);
        }
        return new G0(c14518h);
    }

    public C13511x u() {
        return this.f90883c;
    }

    public Q x() {
        return this.f90882b;
    }

    public p0(Q q10, String str) {
        this(q10, new C13511x(str));
    }

    public p0(oh.E e10) {
        if (e10.size() == 2) {
            this.f90882b = Q.v(e10.I(0));
            this.f90883c = C13511x.u(e10.I(1));
            return;
        }
        if (e10.size() == 1) {
            boolean z10 = e10.I(0).r() instanceof oh.E;
            InterfaceC14516g I10 = e10.I(0);
            if (!z10) {
                this.f90883c = C13511x.u(I10);
                this.f90882b = null;
                return;
            }
            this.f90882b = Q.v(I10);
        } else {
            if (e10.size() != 0) {
                throw new IllegalArgumentException("Bad sequence size: " + e10.size());
            }
            this.f90882b = null;
        }
        this.f90883c = null;
    }
}
