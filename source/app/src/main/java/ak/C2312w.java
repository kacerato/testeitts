package Ak;

import oh.AbstractC14545v;
import oh.G0;
import oh.InterfaceC14516g;

public class C2312w extends AbstractC14545v {

    public final Ck.a f1003b;

    public final a0 f1004c;

    public final a0 f1005d;

    public static class a {

        public Ck.a f1006a;

        public a0 f1007b;

        public a0 f1008c;

        public C2312w a() {
            return new C2312w(this.f1006a, this.f1007b, this.f1008c);
        }

        public a b(a0 a0Var) {
            this.f1007b = a0Var;
            return this;
        }

        public a c(Ck.a aVar) {
            this.f1006a = aVar;
            return this;
        }

        public a d(a0 a0Var) {
            this.f1008c = a0Var;
            return this;
        }
    }

    public C2312w(Ck.a aVar, a0 a0Var, a0 a0Var2) {
        this.f1003b = aVar;
        this.f1004c = a0Var;
        this.f1005d = a0Var2;
    }

    public static a u() {
        return new a();
    }

    public static C2312w y(Object obj) {
        if (obj instanceof C2312w) {
            return (C2312w) obj;
        }
        if (obj != null) {
            return new C2312w(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new G0(new InterfaceC14516g[]{this.f1003b, this.f1004c, yk.i.w(this.f1005d)});
    }

    public a0 v() {
        return this.f1004c;
    }

    public Ck.a x() {
        return this.f1003b;
    }

    public a0 z() {
        return this.f1005d;
    }

    public C2312w(oh.E e10) {
        if (e10.size() != 3) {
            throw new IllegalArgumentException("expected sequence size of 3");
        }
        this.f1003b = Ck.a.D(e10.I(0));
        this.f1004c = a0.u(e10.I(1));
        this.f1005d = (a0) yk.i.y(a0.class, e10.I(2));
    }
}
