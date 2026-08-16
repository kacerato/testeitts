package ki;

import java.math.BigInteger;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14539s;
import oh.C14549x;
import oh.E;
import oh.G0;

public class p extends AbstractC14545v implements r {

    public C14549x f95293b;

    public B f95294c;

    public p(int i10, int i11) {
        this(i10, i11, 0, 0);
    }

    public static p v(Object obj) {
        if (obj instanceof p) {
            return (p) obj;
        }
        if (obj != null) {
            return new p(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f95293b);
        c14518h.a(this.f95294c);
        return new G0(c14518h);
    }

    public C14549x u() {
        return this.f95293b;
    }

    public B x() {
        return this.f95294c;
    }

    public p(int i10, int i11, int i12, int i13) {
        this.f95293b = r.f95358y5;
        C14518h c14518h = new C14518h(3);
        c14518h.a(new C14539s(i10));
        if (i12 == 0) {
            if (i13 != 0) {
                throw new IllegalArgumentException("inconsistent k values");
            }
            c14518h.a(r.f95295A5);
            c14518h.a(new C14539s(i11));
        } else {
            if (i12 <= i11 || i13 <= i12) {
                throw new IllegalArgumentException("inconsistent k values");
            }
            c14518h.a(r.f95297B5);
            C14518h c14518h2 = new C14518h(3);
            c14518h2.a(new C14539s(i11));
            c14518h2.a(new C14539s(i12));
            c14518h2.a(new C14539s(i13));
            c14518h.a(new G0(c14518h2));
        }
        this.f95294c = new G0(c14518h);
    }

    public p(BigInteger bigInteger) {
        this.f95293b = r.f95356x5;
        this.f95294c = new C14539s(bigInteger);
    }

    public p(E e10) {
        this.f95293b = C14549x.K(e10.I(0));
        this.f95294c = e10.I(1).r();
    }
}
