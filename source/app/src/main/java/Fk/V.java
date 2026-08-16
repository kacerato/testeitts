package Fk;

import oh.AbstractC14545v;
import zk.C16317a;

public class V extends AbstractC14545v implements W {

    public final w0 f7057b;

    public final g0 f7058c;

    public static class a {

        public w0 f7059a;

        public g0 f7060b;

        public V a() {
            return new V(this.f7059a, this.f7060b);
        }

        public a b(w0 w0Var) {
            this.f7059a = w0Var;
            return this;
        }

        public a c(g0 g0Var) {
            this.f7060b = g0Var;
            return this;
        }
    }

    public V(w0 w0Var, g0 g0Var) {
        this.f7057b = w0Var;
        this.f7058c = g0Var;
    }

    public static a u() {
        return new a();
    }

    public static V v(Object obj) {
        if (obj instanceof V) {
            return (V) obj;
        }
        if (obj != null) {
            return new V(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return C16317a.e(this.f7057b, this.f7058c);
    }

    public w0 x() {
        return this.f7057b;
    }

    public g0 y() {
        return this.f7058c;
    }

    public V(oh.E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("expected sequence size of 2");
        }
        this.f7057b = w0.w(e10.I(0));
        this.f7058c = g0.v(e10.I(1));
    }
}
