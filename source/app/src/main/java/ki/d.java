package ki;

import java.math.BigInteger;
import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import oh.M;

public class d extends AbstractC14545v {

    public final C14539s f95237b;

    public final C14539s f95238c;

    public final C14539s f95239d;

    public final C14539s f95240e;

    public final h f95241f;

    public d(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, h hVar) {
        if (bigInteger == null) {
            throw new IllegalArgumentException("'p' cannot be null");
        }
        if (bigInteger2 == null) {
            throw new IllegalArgumentException("'g' cannot be null");
        }
        if (bigInteger3 == null) {
            throw new IllegalArgumentException("'q' cannot be null");
        }
        this.f95237b = new C14539s(bigInteger);
        this.f95238c = new C14539s(bigInteger2);
        this.f95239d = new C14539s(bigInteger3);
        this.f95240e = bigInteger4 != null ? new C14539s(bigInteger4) : null;
        this.f95241f = hVar;
    }

    public static d v(Object obj) {
        if (obj instanceof d) {
            return (d) obj;
        }
        if (obj != null) {
            return new d(E.G(obj));
        }
        return null;
    }

    public static d w(M m10, boolean z10) {
        return v(E.H(m10, z10));
    }

    private static InterfaceC14516g y(Enumeration enumeration) {
        if (enumeration.hasMoreElements()) {
            return (InterfaceC14516g) enumeration.nextElement();
        }
        return null;
    }

    public BigInteger A() {
        return this.f95239d.H();
    }

    public h B() {
        return this.f95241f;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(5);
        c14518h.a(this.f95237b);
        c14518h.a(this.f95238c);
        c14518h.a(this.f95239d);
        C14539s c14539s = this.f95240e;
        if (c14539s != null) {
            c14518h.a(c14539s);
        }
        h hVar = this.f95241f;
        if (hVar != null) {
            c14518h.a(hVar);
        }
        return new G0(c14518h);
    }

    public BigInteger u() {
        return this.f95238c.H();
    }

    public BigInteger x() {
        C14539s c14539s = this.f95240e;
        if (c14539s == null) {
            return null;
        }
        return c14539s.H();
    }

    public BigInteger z() {
        return this.f95237b.H();
    }

    public d(E e10) {
        if (e10.size() < 3 || e10.size() > 5) {
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }
        Enumeration J10 = e10.J();
        this.f95237b = C14539s.F(J10.nextElement());
        this.f95238c = C14539s.F(J10.nextElement());
        this.f95239d = C14539s.F(J10.nextElement());
        InterfaceC14516g y10 = y(J10);
        if (y10 == null || !(y10 instanceof C14539s)) {
            this.f95240e = null;
        } else {
            this.f95240e = C14539s.F(y10);
            y10 = y(J10);
        }
        if (y10 != null) {
            this.f95241f = h.u(y10.r());
        } else {
            this.f95241f = null;
        }
    }
}
