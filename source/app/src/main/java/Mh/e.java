package Mh;

import java.math.BigInteger;
import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.B;
import oh.C;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.F0;
import oh.G0;

public class e extends AbstractC14545v {

    public C f15278b;

    public C14539s f15279c;

    public C14539s f15280d;

    public e(String str, int i10, int i11) {
        this.f15278b = new F0(str, true);
        this.f15279c = new C14539s(i10);
        this.f15280d = new C14539s(i11);
    }

    public static e y(Object obj) {
        if (obj == null || (obj instanceof e)) {
            return (e) obj;
        }
        if (obj instanceof E) {
            return new e(E.G(obj));
        }
        throw new IllegalArgumentException("unknown object in getInstance");
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f15278b);
        c14518h.a(this.f15279c);
        c14518h.a(this.f15280d);
        return new G0(c14518h);
    }

    public BigInteger u() {
        return this.f15279c.I();
    }

    public String v() {
        return this.f15278b.getString();
    }

    public BigInteger x() {
        return this.f15280d.I();
    }

    public e(E e10) {
        if (e10.size() != 3) {
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }
        Enumeration J10 = e10.J();
        this.f15278b = C.F(J10.nextElement());
        this.f15279c = C14539s.F(J10.nextElement());
        this.f15280d = C14539s.F(J10.nextElement());
    }
}
