package hi;

import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14549x;
import oh.G0;
import oh.InterfaceC14516g;

public class C13495g extends AbstractC14545v {

    public C14549x f90792b;

    public oh.G f90793c;

    public C13495g(C14549x c14549x, oh.G g10) {
        this.f90792b = c14549x;
        this.f90793c = g10;
    }

    public static C13495g y(Object obj) {
        if (obj instanceof C13495g) {
            return (C13495g) obj;
        }
        if (obj != null) {
            return new C13495g(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f90792b);
        c14518h.a(this.f90793c);
        return new G0(c14518h);
    }

    public C14549x u() {
        return new C14549x(this.f90792b.J());
    }

    public oh.G v() {
        return this.f90793c;
    }

    public InterfaceC14516g[] x() {
        return this.f90793c.N();
    }

    public C13495g(oh.E e10) {
        if (e10.size() == 2) {
            this.f90792b = C14549x.K(e10.I(0));
            this.f90793c = oh.G.F(e10.I(1));
        } else {
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }
    }
}
