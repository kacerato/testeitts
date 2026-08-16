package Ch;

import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.E;
import oh.G0;

public class l extends AbstractC14545v {

    public j f4351b;

    public m f4352c;

    public l(j jVar) {
        this(jVar, null);
    }

    public static l u(Object obj) {
        if (obj instanceof l) {
            return (l) obj;
        }
        if (obj != null) {
            return new l(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f4351b);
        m mVar = this.f4352c;
        if (mVar != null) {
            c14518h.a(mVar);
        }
        return new G0(c14518h);
    }

    public j v() {
        return this.f4351b;
    }

    public m x() {
        return this.f4352c;
    }

    public l(j jVar, m mVar) {
        this.f4351b = jVar;
        this.f4352c = mVar;
    }

    public l(E e10) {
        if (e10.size() < 1 || e10.size() > 2) {
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }
        this.f4351b = j.u(e10.I(0));
        if (e10.size() > 1) {
            this.f4352c = m.w(e10.I(1));
        }
    }
}
