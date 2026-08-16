package Fk;

import oh.AbstractC14545v;
import oh.G0;
import oh.InterfaceC14516g;

public class C2534f extends AbstractC14545v {

    public final C2535g f7093b;

    public final f0 f7094c;

    public static class a {

        public C2535g f7095a;

        public f0 f7096b;

        public C2534f a() {
            return new C2534f(this.f7095a, this.f7096b);
        }

        public a b(C2535g c2535g) {
            this.f7095a = c2535g;
            return this;
        }

        public a c(f0 f0Var) {
            this.f7096b = f0Var;
            return this;
        }
    }

    public C2534f(C2535g c2535g, f0 f0Var) {
        this.f7093b = c2535g;
        this.f7094c = f0Var;
    }

    public static a u() {
        return new a();
    }

    public static C2534f w(Object obj) {
        if (obj instanceof C2534f) {
            return (C2534f) obj;
        }
        if (obj != null) {
            return new C2534f(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new G0(new InterfaceC14516g[]{this.f7093b, this.f7094c});
    }

    public C2535g v() {
        return this.f7093b;
    }

    public f0 x() {
        return this.f7094c;
    }

    public C2534f(oh.E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("expected sequence size of 2");
        }
        this.f7093b = C2535g.y(e10.I(0));
        this.f7094c = f0.u(e10.I(1));
    }
}
