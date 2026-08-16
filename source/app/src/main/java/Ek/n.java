package Ek;

import Fk.C2545q;
import Fk.C2550w;
import Fk.O;
import Fk.X;
import Fk.o0;
import Fk.q0;
import java.util.Iterator;
import oh.AbstractC14545v;
import oh.G0;
import oh.InterfaceC14516g;

public class n extends AbstractC14545v {

    public final O f5980b;

    public final q0 f5981c;

    public final q0 f5982d;

    public final o0 f5983e;

    public final C2550w f5984f;

    public final u f5985g;

    public final C2545q f5986h;

    public final X f5987i;

    public final C2491b f5988j;

    public final x f5989k;

    public final C2496g f5990l;

    public static class a {

        public O f5991a;

        public q0 f5992b;

        public q0 f5993c;

        public o0 f5994d;

        public C2550w f5995e;

        public u f5996f;

        public C2545q f5997g;

        public X f5998h;

        public C2491b f5999i;

        public x f6000j;

        public C2496g f6001k;

        public n a() {
            return new n(this.f5991a, this.f5992b, this.f5993c, this.f5994d, this.f5995e, this.f5996f, this.f5997g, this.f5998h, this.f5999i, this.f6000j, this.f6001k);
        }

        public a b(C2496g c2496g) {
            this.f6001k = c2496g;
            return this;
        }

        public a c(C2545q c2545q) {
            this.f5997g = c2545q;
            return this;
        }

        public a d(q0 q0Var) {
            this.f5993c = q0Var;
            return this;
        }

        public a e(o0 o0Var) {
            this.f5994d = o0Var;
            return this;
        }

        public a f(q0 q0Var) {
            this.f5992b = q0Var;
            return this;
        }

        public a g(X x10) {
            this.f5998h = x10;
            return this;
        }

        public a h(u uVar) {
            this.f5996f = uVar;
            return this;
        }

        public a i(C2550w c2550w) {
            this.f5995e = c2550w;
            return this;
        }

        public a j(x xVar) {
            this.f6000j = xVar;
            return this;
        }

        public a k(O o10) {
            this.f5991a = o10;
            return this;
        }

        public a l(C2491b c2491b) {
            this.f5999i = c2491b;
            return this;
        }
    }

    public n(O o10, q0 q0Var, q0 q0Var2, o0 o0Var, C2550w c2550w, u uVar, C2545q c2545q, X x10, C2491b c2491b, x xVar, C2496g c2496g) {
        this.f5980b = o10;
        this.f5981c = q0Var;
        this.f5982d = q0Var2;
        this.f5983e = o0Var;
        this.f5984f = c2550w;
        this.f5985g = uVar;
        this.f5986h = c2545q;
        this.f5987i = x10;
        this.f5988j = c2491b;
        this.f5989k = xVar;
        this.f5990l = c2496g;
    }

    public static n C(Object obj) {
        if (obj instanceof n) {
            return (n) obj;
        }
        if (obj != null) {
            return new n(oh.E.G(obj));
        }
        return null;
    }

    public static a u() {
        return new a();
    }

    public q0 A() {
        return this.f5981c;
    }

    public X B() {
        return this.f5987i;
    }

    public u D() {
        return this.f5985g;
    }

    public C2550w E() {
        return this.f5984f;
    }

    public x F() {
        return this.f5989k;
    }

    public O G() {
        return this.f5980b;
    }

    public C2491b H() {
        return this.f5988j;
    }

    @Override
    public oh.B r() {
        return new G0(new InterfaceC14516g[]{this.f5980b, yk.i.w(this.f5981c), yk.i.w(this.f5982d), yk.i.w(this.f5983e), yk.i.w(this.f5984f), yk.i.w(this.f5985g), yk.i.w(this.f5986h), yk.i.w(this.f5987i), yk.i.w(this.f5988j), yk.i.w(this.f5989k), yk.i.w(this.f5990l)});
    }

    public C2496g v() {
        return this.f5990l;
    }

    public C2545q x() {
        return this.f5986h;
    }

    public q0 y() {
        return this.f5982d;
    }

    public o0 z() {
        return this.f5983e;
    }

    public n(oh.E e10) {
        C2496g c2496g;
        if (e10.size() != 11 && e10.size() != 7) {
            throw new IllegalArgumentException("expected sequence size of 11 or 7");
        }
        Iterator<InterfaceC14516g> it = e10.iterator();
        this.f5980b = O.u(it.next());
        this.f5981c = (q0) yk.i.y(q0.class, it.next());
        this.f5982d = (q0) yk.i.y(q0.class, it.next());
        this.f5983e = (o0) yk.i.y(o0.class, it.next());
        this.f5984f = (C2550w) yk.i.y(C2550w.class, it.next());
        this.f5985g = (u) yk.i.y(u.class, it.next());
        this.f5986h = (C2545q) yk.i.y(C2545q.class, it.next());
        if (e10.size() > 7) {
            this.f5987i = (X) yk.i.y(X.class, it.next());
            this.f5988j = (C2491b) yk.i.y(C2491b.class, it.next());
            this.f5989k = (x) yk.i.y(x.class, it.next());
            c2496g = (C2496g) yk.i.y(C2496g.class, it.next());
        } else {
            c2496g = null;
            this.f5987i = null;
            this.f5988j = null;
            this.f5989k = null;
        }
        this.f5990l = c2496g;
    }
}
