package ii;

import java.math.BigInteger;
import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.G0;

public class C13741d extends AbstractC14545v {

    public C13740c f92288b;

    public C14539s f92289c;

    public C14539s f92290d;

    public C13741d(C13740c c13740c, int i10, int i11) {
        this.f92288b = c13740c;
        this.f92289c = new C14539s(i10);
        this.f92290d = new C14539s(i11);
    }

    public static C13741d y(Object obj) {
        if (obj instanceof C13741d) {
            return (C13741d) obj;
        }
        if (obj != null) {
            return new C13741d(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f92288b);
        c14518h.a(this.f92289c);
        c14518h.a(this.f92290d);
        return new G0(c14518h);
    }

    public BigInteger u() {
        return this.f92289c.I();
    }

    public C13740c v() {
        return this.f92288b;
    }

    public BigInteger x() {
        return this.f92290d.I();
    }

    public C13741d(E e10) {
        Enumeration J10 = e10.J();
        this.f92288b = C13740c.v(J10.nextElement());
        this.f92289c = C14539s.F(J10.nextElement());
        this.f92290d = C14539s.F(J10.nextElement());
    }
}
