package wh;

import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.G0;

public class f extends AbstractC14545v {

    public C14539s f127491b;

    public g f127492c;

    public i f127493d;

    public f(int i10, g gVar, i iVar) {
        this(new C14539s(i10), gVar, iVar);
    }

    public static f y(Object obj) {
        if (obj instanceof f) {
            return (f) obj;
        }
        if (obj != null) {
            return new f(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f127491b);
        c14518h.a(this.f127492c);
        i iVar = this.f127493d;
        if (iVar != null) {
            c14518h.a(iVar);
        }
        return new G0(c14518h);
    }

    public C14539s u() {
        return this.f127491b;
    }

    public g v() {
        return this.f127492c;
    }

    public i x() {
        return this.f127493d;
    }

    public f(C14539s c14539s, g gVar, i iVar) {
        this.f127491b = c14539s;
        this.f127492c = gVar;
        this.f127493d = iVar;
    }

    public f(E e10) {
        this.f127491b = new C14539s(C14539s.F(e10.I(0)).I());
        this.f127492c = g.v(e10.I(1));
        if (e10.size() > 2) {
            this.f127493d = i.u(e10.I(2));
        }
    }
}
