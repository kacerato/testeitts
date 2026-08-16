package Fk;

import oh.AbstractC14545v;
import zk.C16317a;

public class C2533e extends AbstractC14545v implements W {

    public final C2535g f7088b;

    public final h0 f7089c;

    public static class a {

        public h0 f7090a;

        public C2535g f7091b;

        public C2533e a() {
            return new C2533e(this.f7091b, this.f7090a);
        }

        public a b(C2535g c2535g) {
            this.f7091b = c2535g;
            return this;
        }

        public a c(h0 h0Var) {
            this.f7090a = h0Var;
            return this;
        }
    }

    public C2533e(C2535g c2535g, h0 h0Var) {
        this.f7088b = c2535g;
        this.f7089c = h0.v(h0Var);
    }

    public static a u() {
        return new a();
    }

    public static C2533e w(Object obj) {
        if (obj instanceof C2533e) {
            return (C2533e) obj;
        }
        if (obj != null) {
            return new C2533e(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return C16317a.e(this.f7088b, this.f7089c);
    }

    public C2535g v() {
        return this.f7088b;
    }

    public h0 x() {
        return this.f7089c;
    }

    public C2533e(oh.E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("expected sequence size of 2");
        }
        this.f7088b = C2535g.y(e10.I(0));
        this.f7089c = h0.v(e10.I(1));
    }
}
