package yh;

import java.math.BigInteger;
import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.G0;
import oh.M;

public class c extends AbstractC14545v {

    public C14539s f130305b;

    public C14539s f130306c;

    public C14539s f130307d;

    public C14539s f130308e;

    public C14539s f130309f;

    public C14539s f130310g;

    public c(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, int i10, BigInteger bigInteger5) {
        this.f130307d = new C14539s(bigInteger);
        this.f130308e = new C14539s(bigInteger2);
        this.f130305b = new C14539s(bigInteger3);
        this.f130306c = new C14539s(bigInteger4);
        this.f130309f = new C14539s(i10);
        this.f130310g = new C14539s(bigInteger5);
    }

    public static c v(Object obj) {
        if (obj == null || (obj instanceof c)) {
            return (c) obj;
        }
        if (obj instanceof E) {
            return new c((E) obj);
        }
        throw new IllegalArgumentException("Invalid GOST3410Parameter: " + obj.getClass().getName());
    }

    public static c w(M m10, boolean z10) {
        return v(E.H(m10, z10));
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(6);
        c14518h.a(this.f130307d);
        c14518h.a(this.f130308e);
        c14518h.a(this.f130305b);
        c14518h.a(this.f130306c);
        c14518h.a(this.f130309f);
        c14518h.a(this.f130310g);
        return new G0(c14518h);
    }

    public BigInteger u() {
        return this.f130307d.H();
    }

    public BigInteger x() {
        return this.f130305b.H();
    }

    public BigInteger y() {
        return this.f130306c.H();
    }

    public c(E e10) {
        Enumeration J10 = e10.J();
        this.f130307d = (C14539s) J10.nextElement();
        this.f130308e = (C14539s) J10.nextElement();
        this.f130305b = (C14539s) J10.nextElement();
        this.f130306c = (C14539s) J10.nextElement();
        this.f130309f = (C14539s) J10.nextElement();
        this.f130310g = (C14539s) J10.nextElement();
    }
}
