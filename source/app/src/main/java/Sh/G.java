package sh;

import oh.AbstractC14545v;
import oh.C14549x;
import oh.G0;
import oh.InterfaceC14516g;

public class G extends AbstractC14545v {

    public final C15302a f109490b;

    public final C14549x f109491c;

    public final oh.G f109492d;

    public G(oh.E e10) {
        if (e10.size() != 3) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.f109490b = C15302a.w(e10.I(0));
        this.f109491c = C14549x.K(e10.I(1));
        this.f109492d = oh.G.F(e10.I(2));
    }

    public static G y(Object obj) {
        if (obj instanceof G) {
            return (G) obj;
        }
        if (obj != null) {
            return new G(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new G0(new InterfaceC14516g[]{this.f109490b, this.f109491c, this.f109492d});
    }

    public C14549x u() {
        return this.f109491c;
    }

    public oh.G v() {
        return this.f109492d;
    }

    public C15302a x() {
        return this.f109490b;
    }

    public G(C15302a c15302a, C14549x c14549x, oh.G g10) {
        this.f109490b = c15302a;
        this.f109491c = c14549x;
        this.f109492d = g10;
    }
}
