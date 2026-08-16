package Ak;

import oh.AbstractC14545v;
import oh.G0;
import oh.InterfaceC14516g;

public class C2310u extends AbstractC14545v {

    public final a0 f999b;

    public final Fk.Y f1000c;

    public static class a {

        public a0 f1001a;

        public Fk.Y f1002b;

        public C2310u a() {
            return new C2310u(this.f1001a, this.f1002b);
        }

        public a b(Fk.Y y10) {
            this.f1002b = y10;
            return this;
        }

        public a c(a0 a0Var) {
            this.f1001a = a0Var;
            return this;
        }
    }

    public C2310u(a0 a0Var, Fk.Y y10) {
        this.f999b = a0Var;
        this.f1000c = y10;
    }

    public static a u() {
        return new a();
    }

    public static C2310u w(Object obj) {
        if (obj instanceof C2310u) {
            return (C2310u) obj;
        }
        if (obj != null) {
            return new C2310u(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new G0(new InterfaceC14516g[]{this.f999b, this.f1000c});
    }

    public Fk.Y v() {
        return this.f1000c;
    }

    public a0 x() {
        return this.f999b;
    }

    public C2310u(oh.E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("expected sequence size of 2");
        }
        this.f999b = a0.u(e10.I(0));
        this.f1000c = Fk.Y.w(e10.I(1));
    }
}
