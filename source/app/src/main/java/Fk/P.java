package Fk;

import oh.AbstractC14545v;
import zk.C16317a;

public class P extends AbstractC14545v {

    public final O f7034b;

    public final i0 f7035c;

    public static class a {

        public O f7036a;

        public i0 f7037b;

        public P a() {
            return new P(this.f7036a, this.f7037b);
        }

        public a b(O o10) {
            this.f7036a = o10;
            return this;
        }

        public a c(i0 i0Var) {
            this.f7037b = i0Var;
            return this;
        }
    }

    public P(O o10, i0 i0Var) {
        this.f7034b = o10;
        this.f7035c = i0Var;
    }

    public static a u() {
        return new a();
    }

    public static P v(Object obj) {
        if (obj instanceof P) {
            return (P) obj;
        }
        if (obj != null) {
            return new P(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return C16317a.e(this.f7034b, yk.i.w(this.f7035c));
    }

    public O x() {
        return this.f7034b;
    }

    public i0 y() {
        return this.f7035c;
    }

    public P(oh.E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("expected sequence size of 2");
        }
        this.f7034b = O.u(e10.I(0));
        this.f7035c = (i0) yk.i.y(i0.class, e10.I(1));
    }
}
