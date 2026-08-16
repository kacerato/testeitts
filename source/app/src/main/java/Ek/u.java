package Ek;

import Fk.C2536h;
import Fk.C2550w;
import oh.AbstractC14545v;
import zk.C16317a;

public class u extends AbstractC14545v {

    public final C2550w f6025b;

    public final C2536h f6026c;

    public static class a {

        public C2550w f6027a;

        public C2536h f6028b;

        public u a() {
            return new u(this.f6027a, this.f6028b);
        }

        public a b(C2550w c2550w) {
            this.f6027a = c2550w;
            return this;
        }

        public a c(C2536h c2536h) {
            this.f6028b = c2536h;
            return this;
        }
    }

    public u(C2550w c2550w, C2536h c2536h) {
        this.f6025b = c2550w;
        this.f6026c = c2536h;
    }

    public static a u() {
        return new a();
    }

    public static u y(Object obj) {
        if (obj instanceof u) {
            return (u) obj;
        }
        if (obj != null) {
            return new u(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return C16317a.e(this.f6025b, this.f6026c);
    }

    public C2550w v() {
        return this.f6025b;
    }

    public C2536h x() {
        return this.f6026c;
    }

    public u(oh.E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("expected sequence size of 2");
        }
        this.f6025b = C2550w.v(e10.I(0));
        this.f6026c = C2536h.y(e10.I(1));
    }
}
