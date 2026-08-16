package uh;

import hi.C13486b;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.G0;

public class C15633y extends AbstractC14545v {

    public final C13486b f120757b;

    public final C13486b f120758c;

    public C15633y(C13486b c13486b, C13486b c13486b2) {
        this.f120757b = c13486b;
        this.f120758c = c13486b2;
    }

    public static C15633y v(Object obj) {
        if (obj instanceof C15633y) {
            return (C15633y) obj;
        }
        if (obj != null) {
            return new C15633y(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f120757b);
        c14518h.a(this.f120758c);
        return new G0(c14518h);
    }

    public C13486b u() {
        return this.f120758c;
    }

    public C13486b x() {
        return this.f120757b;
    }

    public C15633y(oh.E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("ASN.1 SEQUENCE should be of length 2");
        }
        this.f120757b = C13486b.v(e10.I(0));
        this.f120758c = C13486b.v(e10.I(1));
    }
}
