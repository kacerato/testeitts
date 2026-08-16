package Ch;

import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.E;
import oh.G0;

public class h extends AbstractC14545v {

    public m f4332b;

    public e f4333c;

    public h(m mVar) {
        this(mVar, null);
    }

    public static h w(Object obj) {
        if (obj instanceof h) {
            return (h) obj;
        }
        if (obj != null) {
            return new h(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f4332b.r());
        e eVar = this.f4333c;
        if (eVar != null) {
            c14518h.a(eVar.r());
        }
        return new G0(c14518h);
    }

    public m u() {
        return this.f4332b;
    }

    public e v() {
        return this.f4333c;
    }

    public h(m mVar, e eVar) {
        this.f4332b = mVar;
        this.f4333c = eVar;
    }

    public h(E e10) {
        if (e10.size() < 1 || e10.size() > 2) {
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }
        this.f4332b = m.w(e10.I(0));
        if (e10.size() > 1) {
            this.f4333c = e.y(e10.I(1));
        }
    }
}
