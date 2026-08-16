package uh;

import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.C14517g0;
import oh.C14518h;
import oh.C14523j0;
import oh.C14527l0;
import oh.C14539s;
import oh.C14549x;
import oh.InterfaceC14516g;
import oh.K0;
import oh.V0;

public class V extends AbstractC14545v {

    public static final C14539s f120609l = new C14539s(1);

    public static final C14539s f120610m = new C14539s(3);

    public static final C14539s f120611n = new C14539s(4);

    public static final C14539s f120612o = new C14539s(5);

    public final C14539s f120613b;

    public final oh.G f120614c;

    public final C15624o f120615d;

    public final oh.G f120616e;

    public final boolean f120617f;

    public final boolean f120618g;

    public oh.G f120619h;

    public oh.G f120620i;

    public boolean f120621j;

    public boolean f120622k;

    public V(oh.E e10) {
        Enumeration J10 = e10.J();
        this.f120613b = C14539s.F(J10.nextElement());
        this.f120614c = (oh.G) J10.nextElement();
        this.f120615d = C15624o.w(J10.nextElement());
        oh.G g10 = null;
        while (J10.hasMoreElements()) {
            oh.B b10 = (oh.B) J10.nextElement();
            if (b10 instanceof oh.M) {
                oh.M m10 = (oh.M) b10;
                int g11 = m10.g();
                if (g11 == 0) {
                    this.f120621j = m10 instanceof C14527l0;
                    this.f120619h = oh.G.G(m10, false);
                } else {
                    if (g11 != 1) {
                        throw new IllegalArgumentException("unknown tag value " + m10.g());
                    }
                    this.f120622k = m10 instanceof C14527l0;
                    this.f120620i = oh.G.G(m10, false);
                }
            } else {
                if (!(b10 instanceof oh.G)) {
                    throw new IllegalArgumentException("SET expected, not encountered");
                }
                g10 = (oh.G) b10;
            }
        }
        if (g10 == null) {
            throw new IllegalArgumentException("signerInfos not set");
        }
        this.f120616e = g10;
        this.f120617f = this.f120614c instanceof C14523j0;
        this.f120618g = g10 instanceof C14523j0;
    }

    public static V B(Object obj) {
        if (obj instanceof V) {
            return (V) obj;
        }
        if (obj != null) {
            return new V(oh.E.G(obj));
        }
        return null;
    }

    public C15624o A() {
        return this.f120615d;
    }

    public oh.G C() {
        return this.f120616e;
    }

    public C14539s D() {
        return this.f120613b;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(6);
        c14518h.a(this.f120613b);
        c14518h.a(this.f120614c);
        c14518h.a(this.f120615d);
        oh.G g10 = this.f120619h;
        if (g10 != null) {
            c14518h.a(this.f120621j ? new C14527l0(false, 0, (InterfaceC14516g) g10) : new K0(false, 0, (InterfaceC14516g) g10));
        }
        oh.G g11 = this.f120620i;
        if (g11 != null) {
            c14518h.a(this.f120622k ? new C14527l0(false, 1, (InterfaceC14516g) g11) : new K0(false, 1, (InterfaceC14516g) g11));
        }
        c14518h.a(this.f120616e);
        return (!this.f120615d.y() || this.f120617f || this.f120618g || this.f120622k || this.f120621j) ? new C14517g0(c14518h) : new V0(c14518h);
    }

    public final C14539s u(C14549x c14549x, oh.G g10, oh.G g11, oh.G g12) {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13 = false;
        if (g10 != null) {
            Enumeration I10 = g10.I();
            z10 = false;
            z11 = false;
            z12 = false;
            while (I10.hasMoreElements()) {
                Object nextElement = I10.nextElement();
                if (nextElement instanceof oh.M) {
                    oh.M R10 = oh.M.R(nextElement);
                    if (R10.g() == 1) {
                        z11 = true;
                    } else if (R10.g() == 2) {
                        z12 = true;
                    } else if (R10.g() == 3) {
                        z10 = true;
                    }
                }
            }
        } else {
            z10 = false;
            z11 = false;
            z12 = false;
        }
        if (z10) {
            return new C14539s(5L);
        }
        if (g11 != null) {
            Enumeration I11 = g11.I();
            while (I11.hasMoreElements()) {
                if (I11.nextElement() instanceof oh.M) {
                    z13 = true;
                }
            }
        }
        if (z13) {
            return f120612o;
        }
        if (z12) {
            return f120611n;
        }
        if (!z11 && !v(g12) && InterfaceC15621l.f120705m8.A(c14549x)) {
            return f120609l;
        }
        return f120610m;
    }

    public final boolean v(oh.G g10) {
        Enumeration I10 = g10.I();
        while (I10.hasMoreElements()) {
            if (Y.z(I10.nextElement()).C().J(3)) {
                return true;
            }
        }
        return false;
    }

    public oh.G x() {
        return this.f120620i;
    }

    public oh.G y() {
        return this.f120619h;
    }

    public oh.G z() {
        return this.f120614c;
    }

    public V(oh.G g10, C15624o c15624o, oh.G g11, oh.G g12, oh.G g13) {
        this.f120613b = u(c15624o.v(), g11, g12, g13);
        this.f120614c = g10;
        this.f120615d = c15624o;
        this.f120619h = g11;
        this.f120620i = g12;
        this.f120616e = g13;
        this.f120617f = g10 instanceof C14523j0;
        this.f120622k = g12 instanceof C14523j0;
        this.f120621j = g11 instanceof C14523j0;
        this.f120618g = g13 instanceof C14523j0;
    }
}
