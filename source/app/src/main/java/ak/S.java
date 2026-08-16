package Ak;

import oh.AbstractC14545v;
import oh.G0;
import oh.InterfaceC14516g;

public class S extends AbstractC14545v {

    public final Ck.a f894b;

    public final Ck.a f895c;

    public final a0 f896d;

    public static class a {

        public Ck.a f897a;

        public Ck.a f898b;

        public a0 f899c;

        public S a() {
            return new S(this.f897a, this.f898b, this.f899c);
        }

        public a b(a0 a0Var) {
            this.f899c = a0Var;
            return this;
        }

        public a c(Ck.a aVar) {
            this.f897a = aVar;
            return this;
        }

        public a d(Ck.a aVar) {
            this.f898b = aVar;
            return this;
        }
    }

    public S(Ck.a aVar, Ck.a aVar2, a0 a0Var) {
        this.f894b = aVar;
        this.f895c = aVar2;
        this.f896d = a0Var;
    }

    public static a u() {
        return new a();
    }

    public static S w(Object obj) {
        if (obj instanceof S) {
            return (S) obj;
        }
        if (obj != null) {
            return new S(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new G0(new InterfaceC14516g[]{this.f894b, yk.i.w(this.f895c), this.f896d});
    }

    public a0 v() {
        return this.f896d;
    }

    public Ck.a x() {
        return this.f894b;
    }

    public Ck.a y() {
        return this.f895c;
    }

    public S(oh.E e10) {
        if (e10.size() != 3) {
            throw new IllegalArgumentException("expected sequence size of 3");
        }
        this.f894b = Ck.a.D(e10.I(0));
        this.f895c = (Ck.a) yk.i.y(Ck.a.class, e10.I(1));
        this.f896d = a0.u(e10.I(2));
    }
}
