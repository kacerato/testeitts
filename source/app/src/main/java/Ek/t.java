package Ek;

import Fk.C2546s;
import oh.AbstractC14545v;
import oh.G0;
import oh.InterfaceC14516g;

public class t extends AbstractC14545v {

    public final Fk.A f6019b;

    public final Fk.H f6020c;

    public final C2546s f6021d;

    public static class a {

        public Fk.A f6022a;

        public Fk.H f6023b;

        public C2546s f6024c;

        public t a() {
            return new t(this.f6022a, this.f6023b, this.f6024c);
        }

        public a b(C2546s c2546s) {
            this.f6024c = c2546s;
            return this;
        }

        public a c(Fk.A a10) {
            this.f6022a = a10;
            return this;
        }

        public a d(Fk.H h10) {
            this.f6023b = h10;
            return this;
        }
    }

    public t(Fk.A a10, Fk.H h10, C2546s c2546s) {
        this.f6019b = a10;
        this.f6020c = h10;
        this.f6021d = c2546s;
    }

    public static a u() {
        return new a();
    }

    public static t y(Object obj) {
        if (obj instanceof t) {
            return (t) obj;
        }
        if (obj != null) {
            return new t(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new G0(new InterfaceC14516g[]{this.f6019b, this.f6020c, yk.i.w(this.f6021d)});
    }

    public C2546s v() {
        return this.f6021d;
    }

    public Fk.A x() {
        return this.f6019b;
    }

    public Fk.H z() {
        return this.f6020c;
    }

    public t(oh.E e10) {
        if (e10.size() != 3) {
            throw new IllegalArgumentException("expected sequence size of 3");
        }
        this.f6019b = Fk.A.u(e10.I(0));
        this.f6020c = Fk.H.M(e10.I(1));
        this.f6021d = (C2546s) yk.i.y(C2546s.class, e10.I(2));
    }
}
