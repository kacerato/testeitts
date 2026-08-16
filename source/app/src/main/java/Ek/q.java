package Ek;

import Fk.w0;
import java.util.Iterator;
import oh.AbstractC14545v;
import oh.InterfaceC14516g;
import zk.C16317a;

public class q extends AbstractC14545v {

    public final w0 f6010b;

    public final p f6011c;

    public static class a {

        public w0 f6012a;

        public p f6013b;

        public C2497h a() {
            return new C2497h(this.f6012a, this.f6013b);
        }

        public Ck.b b() {
            return new Ck.b(this.f6012a, this.f6013b);
        }

        public Ck.c c() {
            return new Ck.c(this.f6013b);
        }

        public Ck.d d() {
            return new Ck.d(this.f6013b);
        }

        public Ck.e e() {
            return new Ck.e(this.f6013b);
        }

        public Ck.f f() {
            return new Ck.f(this.f6013b);
        }

        public Ck.g g() {
            return new Ck.g(this.f6013b);
        }

        public Ck.h h() {
            return new Ck.h(this.f6013b);
        }

        public Ck.j i() {
            return new Ck.j(this.f6013b);
        }

        public q j() {
            return new q(this.f6012a, this.f6013b);
        }

        public Ak.H k() {
            return new Ak.H(this.f6013b);
        }

        public a l(p pVar) {
            this.f6013b = pVar;
            return this;
        }

        public a m(w0 w0Var) {
            this.f6012a = w0Var;
            return this;
        }
    }

    public q(w0 w0Var, p pVar) {
        this.f6010b = w0Var;
        this.f6011c = pVar;
    }

    public static a u() {
        return new a();
    }

    public static q w(Object obj) {
        if (obj instanceof q) {
            return (q) obj;
        }
        if (obj != null) {
            return new q(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return C16317a.e(this.f6010b, this.f6011c);
    }

    public p v() {
        return this.f6011c;
    }

    public w0 x() {
        return this.f6010b;
    }

    public q(oh.E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("expected sequence size of 2");
        }
        Iterator<InterfaceC14516g> it = oh.E.G(e10).iterator();
        this.f6010b = w0.w(it.next());
        this.f6011c = p.y(it.next());
    }
}
