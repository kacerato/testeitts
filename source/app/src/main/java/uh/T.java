package uh;

import hi.C13486b;
import java.math.BigInteger;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14539s;
import oh.G0;

public class T extends AbstractC14545v {

    public final C13486b f120605b;

    public final BigInteger f120606c;

    public T(C13486b c13486b, int i10) {
        this.f120605b = c13486b;
        this.f120606c = BigInteger.valueOf(i10);
    }

    public static T u(Object obj) {
        if (obj instanceof T) {
            return (T) obj;
        }
        if (obj != null) {
            return new T(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f120605b);
        c14518h.a(new C14539s(this.f120606c));
        return new G0(c14518h);
    }

    public C13486b v() {
        return this.f120605b;
    }

    public BigInteger x() {
        return this.f120606c;
    }

    public T(oh.E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("ASN.1 SEQUENCE should be of length 2");
        }
        this.f120605b = C13486b.v(e10.I(0));
        this.f120606c = C14539s.F(e10.I(1)).I();
    }
}
