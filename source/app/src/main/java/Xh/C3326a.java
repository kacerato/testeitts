package Xh;

import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14549x;
import oh.G;
import oh.G0;
import oh.InterfaceC14516g;

public class C3326a extends AbstractC14545v {

    public C14549x f28955b;

    public G f28956c;

    public C3326a(C14549x c14549x, G g10) {
        this.f28955b = c14549x;
        this.f28956c = g10;
    }

    public static C3326a y(Object obj) {
        if (obj == null || (obj instanceof C3326a)) {
            return (C3326a) obj;
        }
        if (obj instanceof oh.E) {
            return new C3326a((oh.E) obj);
        }
        throw new IllegalArgumentException("unknown object in factory: " + obj.getClass().getName());
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f28955b);
        c14518h.a(this.f28956c);
        return new G0(c14518h);
    }

    public C14549x u() {
        return this.f28955b;
    }

    public G v() {
        return this.f28956c;
    }

    public InterfaceC14516g[] x() {
        return this.f28956c.N();
    }

    public C3326a(oh.E e10) {
        this.f28955b = (C14549x) e10.I(0);
        this.f28956c = (G) e10.I(1);
    }
}
