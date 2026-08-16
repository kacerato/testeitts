package uh;

import oh.AbstractC14545v;
import oh.C14517g0;
import oh.C14518h;
import oh.C14527l0;
import oh.C14539s;
import oh.InterfaceC14516g;

public class C15628t extends AbstractC14545v {

    public C14539s f120740b;

    public r f120741c;

    public oh.G f120742d;

    public C15628t(oh.E e10) {
        this.f120740b = C14539s.F(e10.I(0));
        this.f120741c = r.y(e10.I(1));
        if (e10.size() == 3) {
            this.f120742d = oh.G.G((oh.M) e10.I(2), false);
        }
    }

    public static C15628t v(Object obj) {
        if (obj instanceof C15628t) {
            return (C15628t) obj;
        }
        if (obj != null) {
            return new C15628t(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f120740b);
        c14518h.a(this.f120741c);
        oh.G g10 = this.f120742d;
        if (g10 != null) {
            c14518h.a(new C14527l0(false, 1, (InterfaceC14516g) g10));
        }
        return new C14517g0(c14518h);
    }

    public r u() {
        return this.f120741c;
    }

    public oh.G x() {
        return this.f120742d;
    }

    public C14539s y() {
        return this.f120740b;
    }

    public C15628t(r rVar) {
        this(rVar, null);
    }

    public C15628t(r rVar, oh.G g10) {
        this.f120740b = new C14539s(g10 == null ? 0L : 2L);
        this.f120741c = rVar;
        this.f120742d = g10;
    }
}
