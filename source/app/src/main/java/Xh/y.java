package Xh;

import java.math.BigInteger;
import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14539s;
import oh.G0;
import oh.M;

public class y extends AbstractC14545v {

    public BigInteger f29170b;

    public BigInteger f29171c;

    public BigInteger f29172d;

    public BigInteger f29173e;

    public BigInteger f29174f;

    public BigInteger f29175g;

    public BigInteger f29176h;

    public BigInteger f29177i;

    public BigInteger f29178j;

    public oh.E f29179k;

    public y(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5, BigInteger bigInteger6, BigInteger bigInteger7, BigInteger bigInteger8) {
        this.f29179k = null;
        this.f29170b = BigInteger.valueOf(0L);
        this.f29171c = bigInteger;
        this.f29172d = bigInteger2;
        this.f29173e = bigInteger3;
        this.f29174f = bigInteger4;
        this.f29175g = bigInteger5;
        this.f29176h = bigInteger6;
        this.f29177i = bigInteger7;
        this.f29178j = bigInteger8;
    }

    public static y y(Object obj) {
        if (obj instanceof y) {
            return (y) obj;
        }
        if (obj != null) {
            return new y(oh.E.G(obj));
        }
        return null;
    }

    public static y z(M m10, boolean z10) {
        return y(oh.E.H(m10, z10));
    }

    public BigInteger A() {
        return this.f29171c;
    }

    public BigInteger B() {
        return this.f29174f;
    }

    public BigInteger C() {
        return this.f29175g;
    }

    public BigInteger D() {
        return this.f29173e;
    }

    public BigInteger E() {
        return this.f29172d;
    }

    public BigInteger F() {
        return this.f29170b;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(10);
        c14518h.a(new C14539s(this.f29170b));
        c14518h.a(new C14539s(A()));
        c14518h.a(new C14539s(E()));
        c14518h.a(new C14539s(D()));
        c14518h.a(new C14539s(B()));
        c14518h.a(new C14539s(C()));
        c14518h.a(new C14539s(v()));
        c14518h.a(new C14539s(x()));
        c14518h.a(new C14539s(u()));
        oh.E e10 = this.f29179k;
        if (e10 != null) {
            c14518h.a(e10);
        }
        return new G0(c14518h);
    }

    public BigInteger u() {
        return this.f29178j;
    }

    public BigInteger v() {
        return this.f29176h;
    }

    public BigInteger x() {
        return this.f29177i;
    }

    public y(oh.E e10) {
        this.f29179k = null;
        Enumeration J10 = e10.J();
        C14539s c14539s = (C14539s) J10.nextElement();
        int O10 = c14539s.O();
        if (O10 < 0 || O10 > 1) {
            throw new IllegalArgumentException("wrong version for RSA private key");
        }
        this.f29170b = c14539s.I();
        this.f29171c = ((C14539s) J10.nextElement()).I();
        this.f29172d = ((C14539s) J10.nextElement()).I();
        this.f29173e = ((C14539s) J10.nextElement()).I();
        this.f29174f = ((C14539s) J10.nextElement()).I();
        this.f29175g = ((C14539s) J10.nextElement()).I();
        this.f29176h = ((C14539s) J10.nextElement()).I();
        this.f29177i = ((C14539s) J10.nextElement()).I();
        this.f29178j = ((C14539s) J10.nextElement()).I();
        if (J10.hasMoreElements()) {
            this.f29179k = (oh.E) J10.nextElement();
        }
    }
}
