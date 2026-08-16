package Ek;

import Fk.A0;
import Fk.C2536h;
import Fk.C2550w;
import Fk.S;
import Fk.c0;
import Fk.l0;
import java.util.Iterator;
import oh.AbstractC14541t;
import oh.AbstractC14545v;
import oh.InterfaceC14516g;
import zk.C16317a;

public class K extends AbstractC14545v {

    public final C2493d f5906b;

    public final C2550w f5907c;

    public final C2536h f5908d;

    public final A0 f5909e;

    public final Fk.r f5910f;

    public final l0 f5911g;

    public final c0 f5912h;

    public final C f5913i;

    public final C f5914j;

    public final AbstractC14541t f5915k;

    public final S f5916l;

    public final M f5917m;

    public static class a {

        public C2493d f5918a;

        public C2550w f5919b;

        public C2536h f5920c;

        public A0 f5921d;

        public Fk.r f5922e;

        public l0 f5923f;

        public c0 f5924g;

        public C f5925h;

        public C f5926i;

        public AbstractC14541t f5927j;

        public S f5928k;

        public M f5929l;

        public a() {
        }

        public K a() {
            return new K(this.f5918a, this.f5919b, this.f5920c, this.f5921d, this.f5922e, this.f5923f, this.f5924g, this.f5925h, this.f5926i, this.f5927j, this.f5928k, this.f5929l);
        }

        public a b(c0 c0Var) {
            this.f5924g = c0Var;
            return this;
        }

        public a c(l0 l0Var) {
            this.f5923f = l0Var;
            return this;
        }

        public a d() {
            this.f5927j = oh.A0.f98776c;
            return this;
        }

        public a e(C c10) {
            this.f5925h = c10;
            return this;
        }

        public a f(C c10) {
            this.f5926i = c10;
            return this;
        }

        public a g(C2550w c2550w) {
            this.f5919b = c2550w;
            return this;
        }

        public a h(C2536h c2536h) {
            this.f5920c = c2536h;
            return this;
        }

        public a i(S s10) {
            this.f5928k = s10;
            return this;
        }

        public a j(C2493d c2493d) {
            this.f5918a = c2493d;
            return this;
        }

        public a k(Fk.r rVar) {
            this.f5922e = rVar;
            return this;
        }

        public a l(A0 a02) {
            this.f5921d = a02;
            return this;
        }

        public a m(M m10) {
            this.f5929l = m10;
            return this;
        }

        public a(a aVar) {
            this.f5918a = aVar.f5918a;
            this.f5919b = aVar.f5919b;
            this.f5920c = aVar.f5920c;
            this.f5921d = aVar.f5921d;
            this.f5922e = aVar.f5922e;
            this.f5923f = aVar.f5923f;
            this.f5924g = aVar.f5924g;
            this.f5925h = aVar.f5925h;
            this.f5926i = aVar.f5926i;
            this.f5927j = aVar.f5927j;
            this.f5928k = aVar.f5928k;
            this.f5929l = aVar.f5929l;
        }

        public a(K k10) {
            this.f5918a = k10.f5906b;
            this.f5919b = k10.f5907c;
            this.f5920c = k10.f5908d;
            this.f5921d = k10.f5909e;
            this.f5922e = k10.f5910f;
            this.f5923f = k10.f5911g;
            this.f5924g = k10.f5912h;
            this.f5925h = k10.f5913i;
            this.f5926i = k10.f5914j;
            this.f5927j = k10.f5915k;
            this.f5928k = k10.f5916l;
            this.f5929l = k10.f5917m;
        }
    }

    public K(C2493d c2493d, C2550w c2550w, C2536h c2536h, A0 a02, Fk.r rVar, l0 l0Var, c0 c0Var, C c10, C c11, AbstractC14541t abstractC14541t, S s10, M m10) {
        this.f5906b = c2493d;
        this.f5907c = c2550w;
        this.f5908d = c2536h;
        this.f5909e = a02;
        this.f5910f = rVar;
        this.f5911g = l0Var;
        this.f5912h = c0Var;
        this.f5913i = c10;
        this.f5914j = c11;
        this.f5915k = abstractC14541t;
        this.f5916l = s10;
        this.f5917m = m10;
    }

    public static a G() {
        return new a();
    }

    public static K R(Object obj) {
        if (obj instanceof K) {
            return (K) obj;
        }
        if (obj != null) {
            return new K(oh.E.G(obj));
        }
        return null;
    }

    public c0 H() {
        return this.f5912h;
    }

    public l0 I() {
        return this.f5911g;
    }

    public AbstractC14541t J() {
        return this.f5915k;
    }

    public C L() {
        return this.f5913i;
    }

    public C M() {
        return this.f5914j;
    }

    public C2550w N() {
        return this.f5907c;
    }

    public C2536h O() {
        return this.f5908d;
    }

    public S P() {
        return this.f5916l;
    }

    public C2493d Q() {
        return this.f5906b;
    }

    public Fk.r S() {
        return this.f5910f;
    }

    public A0 T() {
        return this.f5909e;
    }

    public M U() {
        return this.f5917m;
    }

    @Override
    public oh.B r() {
        return C16317a.e(this.f5906b, this.f5907c, this.f5908d, this.f5909e, yk.i.w(this.f5910f), yk.i.w(this.f5911g), yk.i.w(this.f5912h), yk.i.w(this.f5913i), yk.i.w(this.f5914j), yk.i.w(this.f5915k), yk.i.w(this.f5916l), this.f5917m);
    }

    public K(oh.E e10) {
        Iterator<InterfaceC14516g> it = oh.E.G(e10).iterator();
        if (e10.size() != 12) {
            throw new IllegalArgumentException("expected sequence size of 12");
        }
        this.f5906b = C2493d.z(it.next());
        this.f5907c = C2550w.v(it.next());
        this.f5908d = C2536h.y(it.next());
        this.f5909e = A0.w(it.next());
        this.f5910f = (Fk.r) yk.i.y(Fk.r.class, it.next());
        this.f5911g = (l0) yk.i.y(l0.class, it.next());
        this.f5912h = (c0) yk.i.y(c0.class, it.next());
        this.f5913i = (C) yk.i.y(C.class, it.next());
        this.f5914j = (C) yk.i.y(C.class, it.next());
        this.f5915k = (AbstractC14541t) yk.i.y(AbstractC14541t.class, it.next());
        this.f5916l = (S) yk.i.y(S.class, it.next());
        this.f5917m = M.v(it.next());
    }
}
