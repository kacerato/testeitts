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

public class C13986a extends AbstractC14545v {

    public C14539s f95229b;

    public C14539s f95230c;

    public C14539s f95231d;

    public C14539s f95232e;

    public C13988c f95233f;

    public C13986a(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, C13988c c13988c) {
        if (bigInteger == null) {
            throw new IllegalArgumentException("'p' cannot be null");
        }
        if (bigInteger2 == null) {
            throw new IllegalArgumentException("'g' cannot be null");
        }
        if (bigInteger3 == null) {
            throw new IllegalArgumentException("'q' cannot be null");
        }
        this.f95229b = new C14539s(bigInteger);
        this.f95230c = new C14539s(bigInteger2);
        this.f95231d = new C14539s(bigInteger3);
        this.f95232e = new C14539s(bigInteger4);
        this.f95233f = c13988c;
    }

    public static C13986a v(Object obj) {
        if (obj == null || (obj instanceof C13986a)) {
            return (C13986a) obj;
        }
        if (obj instanceof E) {
            return new C13986a((E) obj);
        }
        throw new IllegalArgumentException("Invalid DHDomainParameters: " + obj.getClass().getName());
    }

    public static C13986a w(M m10, boolean z10) {
        return v(E.H(m10, z10));
    }

    public static InterfaceC14516g y(Enumeration enumeration) {
        if (enumeration.hasMoreElements()) {
            return (InterfaceC14516g) enumeration.nextElement();
        }
        return null;
    }

    public C14539s A() {
        return this.f95231d;
    }

    public C13988c B() {
        return this.f95233f;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(5);
        c14518h.a(this.f95229b);
        c14518h.a(this.f95230c);
        c14518h.a(this.f95231d);
        C14539s c14539s = this.f95232e;
        if (c14539s != null) {
            c14518h.a(c14539s);
        }
        C13988c c13988c = this.f95233f;
        if (c13988c != null) {
            c14518h.a(c13988c);
        }
        return new G0(c14518h);
    }

    public C14539s u() {
        return this.f95230c;
    }

    public C14539s x() {
        return this.f95232e;
    }

    public C14539s z() {
        return this.f95229b;
    }

    public C13986a(C14539s c14539s, C14539s c14539s2, C14539s c14539s3, C14539s c14539s4, C13988c c13988c) {
        if (c14539s == null) {
            throw new IllegalArgumentException("'p' cannot be null");
        }
        if (c14539s2 == null) {
            throw new IllegalArgumentException("'g' cannot be null");
        }
        if (c14539s3 == null) {
            throw new IllegalArgumentException("'q' cannot be null");
        }
        this.f95229b = c14539s;
        this.f95230c = c14539s2;
        this.f95231d = c14539s3;
        this.f95232e = c14539s4;
        this.f95233f = c13988c;
    }

    public C13986a(E e10) {
        if (e10.size() < 3 || e10.size() > 5) {
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }
        Enumeration J10 = e10.J();
        this.f95229b = C14539s.F(J10.nextElement());
        this.f95230c = C14539s.F(J10.nextElement());
        this.f95231d = C14539s.F(J10.nextElement());
        InterfaceC14516g y10 = y(J10);
        if (y10 != null && (y10 instanceof C14539s)) {
            this.f95232e = C14539s.F(y10);
            y10 = y(J10);
        }
        if (y10 != null) {
            this.f95233f = C13988c.u(y10.r());
        }
    }
}
