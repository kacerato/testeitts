package Ak;

import oh.AbstractC14545v;
import oh.G0;
import oh.InterfaceC14516g;

public class C2291a extends AbstractC14545v {

    public final Ck.a f912b;

    public final a0 f913c;

    public static class C0019a {

        public Ck.a f914a;

        public a0 f915b;

        public C2291a a() {
            return new C2291a(this.f914a, this.f915b);
        }

        public C0019a b(Ck.a aVar) {
            this.f914a = aVar;
            return this;
        }

        public C0019a c(a0 a0Var) {
            this.f915b = a0Var;
            return this;
        }
    }

    public C2291a(Ck.a aVar, a0 a0Var) {
        this.f912b = aVar;
        this.f913c = a0Var;
    }

    public static C0019a u() {
        return new C0019a();
    }

    public static C2291a y(Object obj) {
        if (obj instanceof C2291a) {
            return (C2291a) obj;
        }
        if (obj != null) {
            return new C2291a(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new G0(new InterfaceC14516g[]{this.f912b, this.f913c});
    }

    public Ck.a v() {
        return this.f912b;
    }

    public a0 x() {
        return this.f913c;
    }

    public C2291a(oh.E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("expected sequence size of 2");
        }
        this.f912b = Ck.a.D(e10.I(0));
        this.f913c = a0.u(e10.I(1));
    }
}
