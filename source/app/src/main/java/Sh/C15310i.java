package sh;

import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14539s;
import oh.G0;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.M0;
import oh.Q;

public class C15310i extends AbstractC14545v {

    public final C15309h f109575b;

    public final oh.E f109576c;

    public final Q f109577d;

    public final a f109578e;

    public static class a extends AbstractC14545v implements InterfaceC14514f {

        public final C15306e f109579b;

        public final C15300C f109580c;

        public a(C15306e c15306e) {
            this(c15306e, null);
        }

        public static a v(Object obj) {
            if (obj instanceof a) {
                return (a) obj;
            }
            if (obj instanceof InterfaceC14516g) {
                oh.B r10 = ((InterfaceC14516g) obj).r();
                if (r10 instanceof C14539s) {
                    return new a(C15306e.u(r10));
                }
                if (r10 instanceof oh.E) {
                    return new a(C15300C.u(r10));
                }
            }
            throw new IllegalArgumentException("unknown object in getInstance(): " + obj.getClass().getName());
        }

        @Override
        public oh.B r() {
            C15300C c15300c = this.f109580c;
            return c15300c != null ? c15300c.r() : this.f109579b.r();
        }

        public boolean x() {
            return this.f109579b != null;
        }

        public a(C15306e c15306e, C15300C c15300c) {
            this.f109579b = c15306e;
            this.f109580c = c15300c;
        }

        public a(C15300C c15300c) {
            this(null, c15300c);
        }
    }

    public C15310i(oh.E e10) {
        InterfaceC14516g I10;
        if (e10.size() < 2 || e10.size() > 4) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.f109575b = C15309h.u(e10.I(0));
        this.f109576c = oh.E.G(e10.I(1));
        if (e10.size() <= 3) {
            if (e10.size() <= 2) {
                this.f109577d = null;
            } else if (e10.I(2) instanceof Q) {
                this.f109577d = Q.F(e10.I(2));
            } else {
                this.f109577d = null;
                I10 = e10.I(2);
            }
            this.f109578e = null;
            return;
        }
        this.f109577d = Q.F(e10.I(2));
        I10 = e10.I(3);
        this.f109578e = a.v(I10);
    }

    public static C15310i w(Object obj) {
        if (obj instanceof C15310i) {
            return (C15310i) obj;
        }
        if (obj != null) {
            return new C15310i(oh.E.G(obj));
        }
        return null;
    }

    public boolean A() {
        return this.f109578e != null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(4);
        c14518h.a(this.f109575b);
        c14518h.a(this.f109576c);
        Q q10 = this.f109577d;
        if (q10 != null) {
            c14518h.a(q10);
        }
        a aVar = this.f109578e;
        if (aVar != null) {
            c14518h.a(aVar);
        }
        return new G0(c14518h);
    }

    public C15302a[] u() {
        return K.c(this.f109576c);
    }

    public C15309h v() {
        return this.f109575b;
    }

    public a x() {
        return this.f109578e;
    }

    public M0 y() {
        Q q10 = this.f109577d;
        return (q10 == null || (q10 instanceof M0)) ? (M0) q10 : new M0(this.f109577d.getString());
    }

    public Q z() {
        return this.f109577d;
    }

    public C15310i(C15309h c15309h, oh.E e10, Q q10, a aVar) {
        this.f109575b = c15309h;
        this.f109576c = e10;
        this.f109577d = q10;
        this.f109578e = aVar;
    }
}
