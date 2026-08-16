package Fk;

import oh.AbstractC14545v;
import oh.G0;
import oh.InterfaceC14516g;

public class Q extends AbstractC14545v {

    public final O f7038b;

    public final k0 f7039c;

    public static class a {

        public O f7040a;

        public k0 f7041b;

        public Q a() {
            return new Q(this.f7040a, this.f7041b);
        }

        public a b(long j10) {
            this.f7040a = new O(j10);
            return this;
        }

        public a c(O o10) {
            this.f7040a = o10;
            return this;
        }

        public a d(k0 k0Var) {
            this.f7041b = k0Var;
            return this;
        }
    }

    public Q(O o10, k0 k0Var) {
        this.f7038b = o10;
        this.f7039c = k0Var;
    }

    public static a u() {
        return new a();
    }

    public static Q v(Object obj) {
        if (obj instanceof Q) {
            return (Q) obj;
        }
        if (obj != null) {
            return new Q(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new G0(new InterfaceC14516g[]{this.f7038b, yk.i.w(this.f7039c)});
    }

    public O x() {
        return this.f7038b;
    }

    public k0 y() {
        return this.f7039c;
    }

    public Q(oh.E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("expected sequence size of 2");
        }
        this.f7038b = O.u(e10.I(0));
        this.f7039c = (k0) yk.i.y(k0.class, e10.I(1));
    }
}
