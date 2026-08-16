package sh;

import oh.AbstractC14545v;
import oh.C14549x;
import oh.G0;
import oh.InterfaceC14516g;

public class r extends AbstractC14545v {

    public final C14549x f109613b;

    public final InterfaceC14516g f109614c;

    public r(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this.f109613b = c14549x;
        this.f109614c = interfaceC14516g;
    }

    public static r w(Object obj) {
        if (obj instanceof r) {
            return (r) obj;
        }
        if (!(obj instanceof InterfaceC14516g)) {
            if (obj instanceof byte[]) {
                return w(oh.E.G(obj));
            }
            return null;
        }
        oh.B r10 = ((InterfaceC14516g) obj).r();
        if (r10 instanceof oh.E) {
            return new r((oh.E) r10);
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new G0(new InterfaceC14516g[]{this.f109613b, this.f109614c});
    }

    public C14549x u() {
        return this.f109613b;
    }

    public InterfaceC14516g v() {
        return this.f109614c;
    }

    public r(oh.E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("Sequence must be 2 elements.");
        }
        this.f109613b = C14549x.K(e10.I(0));
        this.f109614c = e10.I(1);
    }
}
