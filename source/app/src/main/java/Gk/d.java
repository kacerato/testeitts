package Gk;

import Ek.C2494e;
import Ek.K;
import Fk.p0;
import Fk.w0;
import oh.AbstractC14536q;
import oh.AbstractC14545v;
import oh.B;
import oh.C14554z0;
import oh.E;
import yk.i;
import zk.C16317a;

public class d extends AbstractC14545v {

    public final w0 f7865b;

    public final p0 f7866c;

    public final C2494e f7867d;

    public final K f7868e;

    public final AbstractC14536q f7869f;

    public static class a {

        public w0 f7870a;

        public p0 f7871b;

        public C2494e f7872c;

        public K f7873d;

        public C14554z0 f7874e;

        public d a() {
            return new d(this.f7870a, this.f7871b, this.f7872c, this.f7873d, this.f7874e);
        }

        public a b(String str) {
            this.f7874e = new C14554z0(str);
            return this;
        }

        public a c(C14554z0 c14554z0) {
            this.f7874e = c14554z0;
            return this;
        }

        public a d(p0 p0Var) {
            this.f7871b = p0Var;
            return this;
        }

        public a e(K k10) {
            this.f7873d = k10;
            return this;
        }

        public a f(C2494e c2494e) {
            this.f7872c = c2494e;
            return this;
        }

        public a g(w0 w0Var) {
            this.f7870a = w0Var;
            return this;
        }
    }

    public d(w0 w0Var, p0 p0Var, C2494e c2494e, K k10, AbstractC14536q abstractC14536q) {
        this.f7865b = w0Var;
        this.f7866c = p0Var;
        this.f7867d = c2494e;
        this.f7868e = k10;
        this.f7869f = abstractC14536q;
    }

    public static a u() {
        return new a();
    }

    public static d y(Object obj) {
        if (obj instanceof d) {
            return (d) obj;
        }
        if (obj != null) {
            return new d(E.G(obj));
        }
        return null;
    }

    public C2494e A() {
        return this.f7867d;
    }

    public w0 B() {
        return this.f7865b;
    }

    @Override
    public B r() {
        return C16317a.e(this.f7865b, this.f7866c, this.f7867d, this.f7868e, i.w(this.f7869f));
    }

    public AbstractC14536q v() {
        return this.f7869f;
    }

    public p0 x() {
        return this.f7866c;
    }

    public K z() {
        return this.f7868e;
    }

    public d(E e10) {
        if (e10.size() != 5) {
            throw new IllegalArgumentException("expected sequence size of 5");
        }
        this.f7865b = w0.w(e10.I(0));
        this.f7866c = p0.x(e10.I(1));
        this.f7867d = C2494e.N(e10.I(2));
        this.f7868e = K.R(e10.I(3));
        this.f7869f = (AbstractC14536q) i.w(e10.I(4)).x(AbstractC14536q.class);
    }
}
