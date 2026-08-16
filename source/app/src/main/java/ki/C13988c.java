package ki;

import oh.AbstractC14508c;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.G0;
import oh.M;

public class C13988c extends AbstractC14545v {

    public AbstractC14508c f95235b;

    public C14539s f95236c;

    public C13988c(AbstractC14508c abstractC14508c, C14539s c14539s) {
        if (abstractC14508c == null) {
            throw new IllegalArgumentException("'seed' cannot be null");
        }
        if (c14539s == null) {
            throw new IllegalArgumentException("'pgenCounter' cannot be null");
        }
        this.f95235b = abstractC14508c;
        this.f95236c = c14539s;
    }

    public static C13988c u(Object obj) {
        if (obj instanceof C13988c) {
            return (C13988c) obj;
        }
        if (obj != null) {
            return new C13988c(E.G(obj));
        }
        return null;
    }

    public static C13988c v(M m10, boolean z10) {
        return u(E.H(m10, z10));
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f95235b);
        c14518h.a(this.f95236c);
        return new G0(c14518h);
    }

    public C14539s x() {
        return this.f95236c;
    }

    public AbstractC14508c y() {
        return this.f95235b;
    }

    public C13988c(E e10) {
        if (e10.size() == 2) {
            this.f95235b = AbstractC14508c.H(e10.I(0));
            this.f95236c = C14539s.F(e10.I(1));
        } else {
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }
    }
}
