package hi;

import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14549x;
import oh.G0;

public class C13484a extends AbstractC14545v {

    public static final C14549x f90753d = new C14549x("1.3.6.1.5.5.7.48.2");

    public static final C14549x f90754e = new C14549x("1.3.6.1.5.5.7.48.1");

    public C14549x f90755b;

    public C13481E f90756c;

    public C13484a(C14549x c14549x, C13481E c13481e) {
        this.f90755b = c14549x;
        this.f90756c = c13481e;
    }

    public static C13484a w(Object obj) {
        if (obj instanceof C13484a) {
            return (C13484a) obj;
        }
        if (obj != null) {
            return new C13484a(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f90755b);
        c14518h.a(this.f90756c);
        return new G0(c14518h);
    }

    public String toString() {
        return "AccessDescription: Oid(" + this.f90755b.J() + ")";
    }

    public C13481E u() {
        return this.f90756c;
    }

    public C14549x v() {
        return this.f90755b;
    }

    public C13484a(oh.E e10) {
        this.f90755b = null;
        this.f90756c = null;
        if (e10.size() != 2) {
            throw new IllegalArgumentException("wrong number of elements in sequence");
        }
        this.f90755b = C14549x.K(e10.I(0));
        this.f90756c = C13481E.v(e10.I(1));
    }
}
