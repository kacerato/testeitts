package uh;

import fi.C13228d;
import hi.B0;
import hi.C13505q;
import hi.w0;
import java.math.BigInteger;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14539s;
import oh.G0;

public class C15634z extends AbstractC14545v {

    public C13228d f120759b;

    public C14539s f120760c;

    public C15634z(C13228d c13228d, BigInteger bigInteger) {
        this.f120759b = c13228d;
        this.f120760c = new C14539s(bigInteger);
    }

    public static C15634z u(Object obj) {
        if (obj instanceof C15634z) {
            return (C15634z) obj;
        }
        if (obj != null) {
            return new C15634z(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f120759b);
        c14518h.a(this.f120760c);
        return new G0(c14518h);
    }

    public C13228d v() {
        return this.f120759b;
    }

    public C14539s x() {
        return this.f120760c;
    }

    public C15634z(C13505q c13505q) {
        this.f120759b = c13505q.x();
        this.f120760c = c13505q.y();
    }

    public C15634z(w0 w0Var) {
        this.f120759b = w0Var.x();
        this.f120760c = w0Var.y();
    }

    public C15634z(B0 b02, BigInteger bigInteger) {
        this.f120759b = C13228d.x(b02);
        this.f120760c = new C14539s(bigInteger);
    }

    public C15634z(B0 b02, C14539s c14539s) {
        this.f120759b = C13228d.x(b02);
        this.f120760c = c14539s;
    }

    public C15634z(oh.E e10) {
        this.f120759b = C13228d.x(e10.I(0));
        this.f120760c = (C14539s) e10.I(1);
    }
}
