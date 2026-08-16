package sh;

import oh.AbstractC14545v;
import oh.C14518h;
import oh.G0;
import oh.InterfaceC14516g;
import oh.M0;
import oh.Q;

public class C15312k extends AbstractC14545v {

    public final C15309h f109585b;

    public final oh.E f109586c;

    public final Q f109587d;

    public final z f109588e;

    public C15312k(oh.E e10) {
        InterfaceC14516g I10;
        if (e10.size() < 2 || e10.size() > 4) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.f109585b = C15309h.u(e10.I(0));
        this.f109586c = oh.E.G(e10.I(1));
        if (e10.size() > 2) {
            if (e10.size() == 4) {
                this.f109587d = Q.F(e10.I(2));
                I10 = e10.I(3);
            } else if (e10.I(2) instanceof Q) {
                this.f109587d = Q.F(e10.I(2));
            } else {
                this.f109587d = null;
                I10 = e10.I(2);
            }
            this.f109588e = z.u(I10);
            return;
        }
        this.f109587d = null;
        this.f109588e = null;
    }

    public static C15312k w(Object obj) {
        if (obj instanceof C15312k) {
            return (C15312k) obj;
        }
        if (obj != null) {
            return new C15312k(oh.E.G(obj));
        }
        return null;
    }

    public C15309h A() {
        return this.f109585b;
    }

    public boolean B() {
        return this.f109588e != null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(4);
        c14518h.a(this.f109585b);
        c14518h.a(this.f109586c);
        Q q10 = this.f109587d;
        if (q10 != null) {
            c14518h.a(q10);
        }
        z zVar = this.f109588e;
        if (zVar != null) {
            c14518h.a(zVar);
        }
        return new G0(c14518h);
    }

    public C15302a[] u() {
        return K.c(this.f109586c);
    }

    public C15309h v() {
        return this.f109585b;
    }

    public z x() {
        return this.f109588e;
    }

    public M0 y() {
        Q q10 = this.f109587d;
        return (q10 == null || (q10 instanceof M0)) ? (M0) q10 : new M0(this.f109587d.getString());
    }

    public Q z() {
        return this.f109587d;
    }

    public C15312k(C15309h c15309h, oh.E e10, Q q10, z zVar) {
        this.f109585b = c15309h;
        this.f109586c = e10;
        this.f109587d = q10;
        this.f109588e = zVar;
    }
}
