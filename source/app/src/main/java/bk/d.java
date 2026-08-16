package Bk;

import Fk.S;
import Fk.T;
import oh.AbstractC14545v;
import oh.B;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import yk.i;

public class d extends AbstractC14545v {

    public final T f1926b;

    public final S f1927c;

    public d(T t10, S s10) {
        this.f1926b = t10;
        this.f1927c = s10;
    }

    public static d v(Object obj) {
        if (obj instanceof d) {
            return (d) obj;
        }
        if (obj != null) {
            return new d(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        return new G0(new InterfaceC14516g[]{this.f1926b, i.w(this.f1927c)});
    }

    public S u() {
        return this.f1927c;
    }

    public T x() {
        return this.f1926b;
    }

    public d(E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("expected sequence size of 2");
        }
        this.f1926b = T.z(e10.I(0));
        this.f1927c = (S) i.y(S.class, e10.I(1));
    }
}
