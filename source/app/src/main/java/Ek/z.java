package Ek;

import java.math.BigInteger;
import oh.AbstractC14545v;
import oh.C14539s;
import oh.G0;
import oh.InterfaceC14516g;

public class z extends AbstractC14545v {

    public final H f6041b;

    public final C14539s f6042c;

    public final C14539s f6043d;

    public final C2500k f6044e;

    public static class a {

        public H f6045a;

        public C14539s f6046b;

        public C14539s f6047c;

        public C2500k f6048d;

        public z a() {
            return new z(this.f6045a, this.f6046b, this.f6047c, this.f6048d);
        }

        public a b(long j10) {
            this.f6047c = new C14539s(j10);
            return this;
        }

        public a c(BigInteger bigInteger) {
            this.f6047c = new C14539s(bigInteger);
            return this;
        }

        public a d(C14539s c14539s) {
            this.f6047c = c14539s;
            return this;
        }

        public a e(C2500k c2500k) {
            this.f6048d = c2500k;
            return this;
        }

        public a f(long j10) {
            this.f6046b = new C14539s(j10);
            return this;
        }

        public a g(BigInteger bigInteger) {
            this.f6046b = new C14539s(bigInteger);
            return this;
        }

        public a h(C14539s c14539s) {
            this.f6046b = c14539s;
            return this;
        }

        public a i(H h10) {
            this.f6045a = h10;
            return this;
        }
    }

    public z(H h10, C14539s c14539s, C14539s c14539s2, C2500k c2500k) {
        this.f6041b = h10;
        this.f6042c = c14539s;
        this.f6043d = c14539s2;
        this.f6044e = c2500k;
    }

    public static a u() {
        return new a();
    }

    public static z y(Object obj) {
        if (obj instanceof z) {
            return (z) obj;
        }
        if (obj != null) {
            return new z(oh.E.G(obj));
        }
        return null;
    }

    public H A() {
        return this.f6041b;
    }

    @Override
    public oh.B r() {
        return new G0(new InterfaceC14516g[]{this.f6041b, yk.i.w(this.f6042c), yk.i.w(this.f6043d), yk.i.w(this.f6044e)});
    }

    public C14539s v() {
        return this.f6043d;
    }

    public C2500k x() {
        return this.f6044e;
    }

    public C14539s z() {
        return this.f6042c;
    }

    public z(oh.E e10) {
        if (e10.size() != 4) {
            throw new IllegalArgumentException("expected sequence size of 4");
        }
        this.f6041b = H.y(e10.I(0));
        this.f6042c = (C14539s) yk.i.w(e10.I(1)).x(C14539s.class);
        this.f6043d = (C14539s) yk.i.w(e10.I(2)).x(C14539s.class);
        this.f6044e = (C2500k) yk.i.w(e10.I(3)).x(C2500k.class);
    }
}
