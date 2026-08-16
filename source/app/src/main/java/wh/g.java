package wh;

import fi.C13228d;
import hi.C13479C;
import hi.C13486b;
import hi.h0;
import java.util.Enumeration;
import oh.AbstractC14508c;
import oh.AbstractC14545v;
import oh.B;
import oh.C14539s;
import oh.E;
import oh.M;

public class g extends AbstractC14545v {

    public E f127494b;

    public C14539s f127495c;

    public C14539s f127496d;

    public C13486b f127497e;

    public C13228d f127498f;

    public n f127499g;

    public C13228d f127500h;

    public h0 f127501i;

    public AbstractC14508c f127502j;

    public AbstractC14508c f127503k;

    public C13479C f127504l;

    public g(E e10) {
        this.f127494b = e10;
        Enumeration J10 = e10.J();
        while (J10.hasMoreElements()) {
            M m10 = (M) J10.nextElement();
            switch (m10.g()) {
                case 0:
                    this.f127495c = C14539s.G(m10, false);
                    break;
                case 1:
                    this.f127496d = C14539s.G(m10, false);
                    break;
                case 2:
                    this.f127497e = C13486b.w(m10, false);
                    break;
                case 3:
                    this.f127498f = C13228d.y(m10, true);
                    break;
                case 4:
                    this.f127499g = n.u(E.H(m10, false));
                    break;
                case 5:
                    this.f127500h = C13228d.y(m10, true);
                    break;
                case 6:
                    this.f127501i = h0.x(m10, false);
                    break;
                case 7:
                    this.f127502j = AbstractC14508c.I(m10, false);
                    break;
                case 8:
                    this.f127503k = AbstractC14508c.I(m10, false);
                    break;
                case 9:
                    this.f127504l = C13479C.D(m10, false);
                    break;
                default:
                    throw new IllegalArgumentException("unknown tag: " + m10.g());
            }
        }
    }

    public static g v(Object obj) {
        if (obj instanceof g) {
            return (g) obj;
        }
        if (obj != null) {
            return new g(E.G(obj));
        }
        return null;
    }

    public C14539s A() {
        return this.f127496d;
    }

    public C13486b B() {
        return this.f127497e;
    }

    public C13228d C() {
        return this.f127500h;
    }

    public AbstractC14508c D() {
        return this.f127503k;
    }

    public n E() {
        return this.f127499g;
    }

    public int F() {
        C14539s c14539s = this.f127495c;
        if (c14539s != null) {
            return c14539s.O();
        }
        return -1;
    }

    @Override
    public B r() {
        return this.f127494b;
    }

    public C13479C u() {
        return this.f127504l;
    }

    public C13228d x() {
        return this.f127498f;
    }

    public AbstractC14508c y() {
        return this.f127502j;
    }

    public h0 z() {
        return this.f127501i;
    }
}
