package uh;

import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.C14517g0;
import oh.C14518h;
import oh.C14539s;
import oh.InterfaceC14516g;
import oh.K0;

public class C15629u extends AbstractC14545v {

    public C14539s f120743b;

    public I f120744c;

    public oh.G f120745d;

    public r f120746e;

    public oh.G f120747f;

    public C15629u(oh.E e10) {
        this.f120743b = (C14539s) e10.I(0);
        InterfaceC14516g I10 = e10.I(1);
        int i10 = 2;
        if (I10 instanceof oh.M) {
            this.f120744c = I.x((oh.M) I10, false);
            I10 = e10.I(2);
            i10 = 3;
        }
        this.f120745d = oh.G.F(I10);
        int i11 = i10 + 1;
        this.f120746e = r.y(e10.I(i10));
        if (e10.size() > i11) {
            this.f120747f = oh.G.G((oh.M) e10.I(i11), false);
        }
    }

    public static int u(I i10, oh.G g10, oh.G g11) {
        Enumeration I10 = g10.I();
        boolean z10 = false;
        boolean z11 = false;
        while (I10.hasMoreElements()) {
            Q v10 = Q.v(I10.nextElement());
            if (!v10.x().J(0)) {
                z11 = true;
            }
            InterfaceC14516g u10 = v10.u();
            if ((u10 instanceof N) || (u10 instanceof L)) {
                z10 = true;
            }
        }
        if (z10) {
            return 3;
        }
        return (!z11 && i10 == null && g11 == null) ? 0 : 2;
    }

    public static C15629u w(Object obj) {
        if (obj instanceof C15629u) {
            return (C15629u) obj;
        }
        if (obj != null) {
            return new C15629u(oh.E.G(obj));
        }
        return null;
    }

    public static C15629u x(oh.M m10, boolean z10) {
        return w(oh.E.H(m10, z10));
    }

    public oh.G A() {
        return this.f120747f;
    }

    public C14539s B() {
        return this.f120743b;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(5);
        c14518h.a(this.f120743b);
        I i10 = this.f120744c;
        if (i10 != null) {
            c14518h.a(new K0(false, 0, (InterfaceC14516g) i10));
        }
        c14518h.a(this.f120745d);
        c14518h.a(this.f120746e);
        oh.G g10 = this.f120747f;
        if (g10 != null) {
            c14518h.a(new K0(false, 1, (InterfaceC14516g) g10));
        }
        return new C14517g0(c14518h);
    }

    public r v() {
        return this.f120746e;
    }

    public I y() {
        return this.f120744c;
    }

    public oh.G z() {
        return this.f120745d;
    }

    public C15629u(I i10, oh.G g10, r rVar, oh.G g11) {
        this.f120743b = new C14539s(u(i10, g10, g11));
        this.f120744c = i10;
        this.f120745d = g10;
        this.f120746e = rVar;
        this.f120747f = g11;
    }

    public C15629u(I i10, oh.G g10, r rVar, C15612c c15612c) {
        this.f120743b = new C14539s(u(i10, g10, oh.G.F(c15612c)));
        this.f120744c = i10;
        this.f120745d = g10;
        this.f120746e = rVar;
        this.f120747f = oh.G.F(c15612c);
    }
}
