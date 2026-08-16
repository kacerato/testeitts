package Rh;

import hi.C13486b;
import oh.AbstractC14508c;
import oh.AbstractC14545v;
import oh.B;
import oh.E;

public class b extends AbstractC14545v {

    public final a f22799b;

    public final E f22800c;

    public b(E e10) {
        this.f22800c = e10;
        this.f22799b = a.w(e10.I(0));
    }

    public static b u(Object obj) {
        if (obj instanceof b) {
            return (b) obj;
        }
        if (obj != null) {
            return new b(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        return this.f22800c;
    }

    public a v() {
        return this.f22799b;
    }

    public AbstractC14508c x() {
        return AbstractC14508c.H(this.f22800c.I(2));
    }

    public C13486b y() {
        return C13486b.v(this.f22800c.I(1));
    }
}
