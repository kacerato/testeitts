package sh;

import fi.C13228d;
import hi.C13481E;
import hi.C13489c0;
import oh.AbstractC14508c;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14530n;
import oh.G0;
import oh.M;

public class t extends AbstractC14545v {

    public final C13228d f109616b;

    public C13481E f109617c;

    public C14530n f109618d;

    public C13489c0 f109619e;

    public t(C13228d c13228d, C13481E c13481e, C14530n c14530n, C13489c0 c13489c0) {
        this.f109616b = c13228d;
        this.f109617c = c13481e;
        this.f109618d = c14530n;
        this.f109619e = c13489c0;
    }

    public static t u(Object obj) {
        if (obj instanceof t) {
            return (t) obj;
        }
        if (obj != null) {
            return new t(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(4);
        c14518h.a(this.f109616b);
        C13481E c13481e = this.f109617c;
        if (c13481e != null) {
            c14518h.a(c13481e);
        }
        C14530n c14530n = this.f109618d;
        if (c14530n != null) {
            c14518h.a(c14530n);
        }
        C13489c0 c13489c0 = this.f109619e;
        if (c13489c0 != null) {
            c14518h.a(c13489c0);
        }
        return new G0(c14518h);
    }

    public C13228d v() {
        return this.f109616b;
    }

    public C13489c0 x() {
        return this.f109619e;
    }

    public C14530n y() {
        return this.f109618d;
    }

    public C13481E z() {
        return this.f109617c;
    }

    public t(oh.E e10) {
        int i10 = 1;
        if (e10.size() < 1 || e10.size() > 4) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.f109616b = C13228d.x(e10.I(0));
        if (e10.size() > 1 && (e10.I(1).r() instanceof M)) {
            this.f109617c = C13481E.v(e10.I(1));
            i10 = 2;
        }
        if (e10.size() > i10 && (e10.I(i10).r() instanceof C14530n)) {
            this.f109618d = C14530n.J(e10.I(i10));
            i10++;
        }
        if (e10.size() <= i10 || !(e10.I(i10).r() instanceof AbstractC14508c)) {
            return;
        }
        this.f109619e = new C13489c0(AbstractC14508c.H(e10.I(i10)));
    }
}
