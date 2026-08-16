package wh;

import hi.C13481E;
import java.math.BigInteger;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.G0;
import oh.M;

public class c extends AbstractC14545v {

    public C13481E f127485b;

    public C14539s f127486c;

    public c(C13481E c13481e, BigInteger bigInteger) {
        this(c13481e, new C14539s(bigInteger));
    }

    public static c u(Object obj) {
        if (obj instanceof c) {
            return (c) obj;
        }
        if (obj != null) {
            return new c(E.G(obj));
        }
        return null;
    }

    public static c v(M m10, boolean z10) {
        return u(E.H(m10, z10));
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f127485b);
        c14518h.a(this.f127486c);
        return new G0(c14518h);
    }

    public C13481E x() {
        return this.f127485b;
    }

    public C14539s y() {
        return this.f127486c;
    }

    public c(C13481E c13481e, C14539s c14539s) {
        this.f127485b = c13481e;
        this.f127486c = c14539s;
    }

    public c(E e10) {
        this.f127485b = C13481E.v(e10.I(0));
        this.f127486c = C14539s.F(e10.I(1));
    }
}
