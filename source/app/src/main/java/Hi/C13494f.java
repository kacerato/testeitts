package hi;

import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14530n;
import oh.G0;

public class C13494f extends AbstractC14545v {

    public C14530n f90789b;

    public C14530n f90790c;

    public C13494f(C14530n c14530n, C14530n c14530n2) {
        this.f90789b = c14530n;
        this.f90790c = c14530n2;
    }

    public static C13494f u(Object obj) {
        if (obj instanceof C13494f) {
            return (C13494f) obj;
        }
        if (obj != null) {
            return new C13494f(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f90789b);
        c14518h.a(this.f90790c);
        return new G0(c14518h);
    }

    public C14530n v() {
        return this.f90790c;
    }

    public C14530n x() {
        return this.f90789b;
    }

    public C13494f(oh.E e10) {
        if (e10.size() == 2) {
            this.f90789b = C14530n.J(e10.I(0));
            this.f90790c = C14530n.J(e10.I(1));
        } else {
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }
    }
}
