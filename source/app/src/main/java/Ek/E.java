package Ek;

import Fk.C2547t;
import Fk.j0;
import oh.AbstractC14545v;
import zk.C16317a;

public class E extends AbstractC14545v {

    public final C2547t f5878b;

    public final L f5879c;

    public final G f5880d;

    public final j0 f5881e;

    public static class a {

        public C2547t f5882a;

        public L f5883b;

        public G f5884c;

        public j0 f5885d;

        public E a() {
            return new E(this.f5882a, this.f5883b, this.f5884c, this.f5885d);
        }

        public a b(C2547t c2547t) {
            this.f5882a = c2547t;
            return this;
        }

        public a c(j0 j0Var) {
            this.f5885d = j0Var;
            return this;
        }

        public a d(G g10) {
            this.f5884c = g10;
            return this;
        }

        public a e(L l10) {
            this.f5883b = l10;
            return this;
        }
    }

    public E(C2547t c2547t, L l10, G g10, j0 j0Var) {
        this.f5878b = c2547t;
        this.f5879c = l10;
        this.f5880d = g10;
        this.f5881e = j0Var;
    }

    public static a u() {
        return new a();
    }

    public static E w(Object obj) {
        if (obj instanceof E) {
            return (E) obj;
        }
        if (obj != null) {
            return new E(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return C16317a.e(this.f5878b, this.f5879c, this.f5880d, this.f5881e);
    }

    public C2547t v() {
        return this.f5878b;
    }

    public j0 x() {
        return this.f5881e;
    }

    public G y() {
        return this.f5880d;
    }

    public L z() {
        return this.f5879c;
    }

    public E(oh.E e10) {
        if (e10.size() != 4) {
            throw new IllegalArgumentException("expected sequence size of 4");
        }
        this.f5878b = C2547t.N(e10.I(0));
        this.f5879c = L.w(e10.I(1));
        this.f5880d = G.y(e10.I(2));
        this.f5881e = j0.y(e10.I(3));
    }
}
