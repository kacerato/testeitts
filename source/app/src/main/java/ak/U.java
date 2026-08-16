package Ak;

import Fk.p0;
import oh.AbstractC14545v;
import oh.G0;
import oh.InterfaceC14516g;

public class U extends AbstractC14545v {

    public final Bk.e f900b;

    public final p0 f901c;

    public final p0 f902d;

    public final N f903e;

    public static class a {

        public Bk.e f904a;

        public p0 f905b;

        public p0 f906c;

        public N f907d;

        public U a() {
            return new U(this.f904a, this.f905b, this.f906c, this.f907d);
        }

        public a b(N n10) {
            this.f907d = n10;
            return this;
        }

        public a c(p0 p0Var) {
            this.f906c = p0Var;
            return this;
        }

        public a d(p0 p0Var) {
            this.f905b = p0Var;
            return this;
        }

        public a e(Bk.e eVar) {
            this.f904a = eVar;
            return this;
        }
    }

    public U(Bk.e eVar, p0 p0Var, p0 p0Var2, N n10) {
        this.f900b = eVar;
        this.f901c = p0Var;
        this.f902d = p0Var2;
        this.f903e = n10;
    }

    public static a u() {
        return new a();
    }

    public static U w(Object obj) {
        if (obj instanceof U) {
            return (U) obj;
        }
        if (obj != null) {
            return new U(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new G0(new InterfaceC14516g[]{this.f900b, this.f901c, this.f902d, this.f903e});
    }

    public N v() {
        return this.f903e;
    }

    public p0 x() {
        return this.f902d;
    }

    public p0 y() {
        return this.f901c;
    }

    public Bk.e z() {
        return this.f900b;
    }

    public U(oh.E e10) {
        if (e10.size() != 4) {
            throw new IllegalArgumentException("expected sequence size of 4");
        }
        this.f900b = Bk.e.u(e10.I(0));
        this.f901c = p0.x(e10.I(1));
        this.f902d = p0.x(e10.I(2));
        this.f903e = N.w(e10.I(3));
    }
}
