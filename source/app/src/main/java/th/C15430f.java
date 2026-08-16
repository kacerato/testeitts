package th;

import hi.o0;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.G0;

public class C15430f extends AbstractC14545v {

    public final C15429e f117599b;

    public final o0 f117600c;

    public C15430f(oh.E e10) {
        if (e10.size() == 1 || e10.size() == 2) {
            this.f117599b = C15429e.v(e10.I(0));
            this.f117600c = e10.size() == 2 ? o0.v(e10.I(1)) : null;
        } else {
            throw new IllegalArgumentException("expected sequence size of 1 or 2, got " + e10.size());
        }
    }

    public static C15430f u(Object obj) {
        if (obj instanceof C15430f) {
            return (C15430f) obj;
        }
        if (obj != null) {
            return new C15430f(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f117599b);
        o0 o0Var = this.f117600c;
        if (o0Var != null) {
            c14518h.a(o0Var);
        }
        return new G0(c14518h);
    }

    public C15429e v() {
        return this.f117599b;
    }

    public o0 x() {
        return this.f117600c;
    }

    public o0 y() {
        return this.f117600c;
    }

    public C15430f(C15429e c15429e, o0 o0Var) {
        this.f117599b = c15429e;
        this.f117600c = o0Var;
    }
}
