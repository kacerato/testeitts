package Fk;

import oh.AbstractC14545v;
import zk.C16317a;

public class C2532d extends AbstractC14545v implements W {

    public final r0 f7082b;

    public final s0 f7083c;

    public static class a {

        public r0 f7084a;

        public s0 f7085b;

        public C2532d a() {
            return new C2532d(this.f7084a, this.f7085b);
        }

        public a b(r0 r0Var) {
            this.f7084a = r0Var;
            return this;
        }

        public a c(s0 s0Var) {
            this.f7085b = s0Var;
            return this;
        }
    }

    public C2532d(r0 r0Var, s0 s0Var) {
        this.f7082b = r0Var;
        this.f7083c = s0Var;
    }

    public static a u() {
        return new a();
    }

    public static C2532d w(Object obj) {
        if (obj instanceof C2532d) {
            return (C2532d) obj;
        }
        if (obj != null) {
            return new C2532d(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return C16317a.e(this.f7082b, this.f7083c);
    }

    public r0 v() {
        return this.f7082b;
    }

    public s0 x() {
        return this.f7083c;
    }

    public C2532d(oh.E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("expected sequence size of 2");
        }
        this.f7082b = r0.v(e10.I(0));
        this.f7083c = s0.w(e10.I(1));
    }
}
