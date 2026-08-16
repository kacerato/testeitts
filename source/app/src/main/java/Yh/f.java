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

public class f extends AbstractC14545v {

    public int f130319b;

    public C14539s f130320c;

    public C14539s f130321d;

    public C14539s f130322e;

    public f(int i10, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.f130319b = i10;
        this.f130320c = new C14539s(bigInteger);
        this.f130321d = new C14539s(bigInteger2);
        this.f130322e = new C14539s(bigInteger3);
    }

    public static f v(Object obj) {
        if (obj == null || (obj instanceof f)) {
            return (f) obj;
        }
        if (obj instanceof E) {
            return new f((E) obj);
        }
        throw new IllegalArgumentException("Invalid GOST3410Parameter: " + obj.getClass().getName());
    }

    public static f w(M m10, boolean z10) {
        return v(E.H(m10, z10));
    }

    public BigInteger A() {
        return this.f130321d.H();
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(4);
        c14518h.a(new C14539s(this.f130319b));
        c14518h.a(this.f130320c);
        c14518h.a(this.f130321d);
        c14518h.a(this.f130322e);
        return new G0(c14518h);
    }

    public BigInteger u() {
        return this.f130322e.H();
    }

    public int x() {
        return this.f130319b;
    }

    public int y() {
        return this.f130319b;
    }

    public BigInteger z() {
        return this.f130320c.H();
    }

    public f(E e10) {
        Enumeration J10 = e10.J();
        this.f130319b = ((C14539s) J10.nextElement()).O();
        this.f130320c = (C14539s) J10.nextElement();
        this.f130321d = (C14539s) J10.nextElement();
        this.f130322e = (C14539s) J10.nextElement();
    }
}
