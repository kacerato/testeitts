package uh;

import hi.C13486b;
import oh.AbstractC14545v;
import oh.C14517g0;
import oh.C14518h;
import oh.C14539s;

public class C15622m extends AbstractC14545v {

    public C14539s f120719b;

    public C13486b f120720c;

    public C15624o f120721d;

    public C15622m(C13486b c13486b, C15624o c15624o) {
        this.f120719b = new C14539s(0L);
        this.f120720c = c13486b;
        this.f120721d = c15624o;
    }

    public static C15622m w(Object obj) {
        if (obj instanceof C15622m) {
            return (C15622m) obj;
        }
        if (obj != null) {
            return new C15622m(oh.E.G(obj));
        }
        return null;
    }

    public static C15622m x(oh.M m10, boolean z10) {
        return w(oh.E.H(m10, z10));
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f120719b);
        c14518h.a(this.f120720c);
        c14518h.a(this.f120721d);
        return new C14517g0(c14518h);
    }

    public C13486b u() {
        return this.f120720c;
    }

    public C15624o v() {
        return this.f120721d;
    }

    public C14539s y() {
        return this.f120719b;
    }

    public C15622m(oh.E e10) {
        this.f120719b = (C14539s) e10.I(0);
        this.f120720c = C13486b.v(e10.I(1));
        this.f120721d = C15624o.w(e10.I(2));
    }
}
