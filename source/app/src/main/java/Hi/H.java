package hi;

import java.math.BigInteger;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14539s;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;

public class H extends AbstractC14545v {

    public static final BigInteger f90653e = BigInteger.valueOf(0);

    public C13481E f90654b;

    public C14539s f90655c;

    public C14539s f90656d;

    public H(C13481E c13481e) {
        this(c13481e, null, null);
    }

    public static H v(Object obj) {
        if (obj == null) {
            return null;
        }
        return obj instanceof H ? (H) obj : new H(oh.E.G(obj));
    }

    public static H w(oh.M m10, boolean z10) {
        return new H(oh.E.H(m10, z10));
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f90654b);
        C14539s c14539s = this.f90655c;
        if (c14539s != null && !c14539s.J(0)) {
            c14518h.a(new K0(false, 0, (InterfaceC14516g) this.f90655c));
        }
        C14539s c14539s2 = this.f90656d;
        if (c14539s2 != null) {
            c14518h.a(new K0(false, 1, (InterfaceC14516g) c14539s2));
        }
        return new G0(c14518h);
    }

    public C13481E u() {
        return this.f90654b;
    }

    public BigInteger x() {
        C14539s c14539s = this.f90656d;
        if (c14539s == null) {
            return null;
        }
        return c14539s.I();
    }

    public BigInteger y() {
        C14539s c14539s = this.f90655c;
        return c14539s == null ? f90653e : c14539s.I();
    }

    public H(C13481E c13481e, BigInteger bigInteger, BigInteger bigInteger2) {
        this.f90654b = c13481e;
        if (bigInteger2 != null) {
            this.f90656d = new C14539s(bigInteger2);
        }
        this.f90655c = bigInteger == null ? null : new C14539s(bigInteger);
    }

    public H(oh.E e10) {
        oh.M R10;
        this.f90654b = C13481E.v(e10.I(0));
        int size = e10.size();
        if (size != 1) {
            if (size == 2) {
                R10 = oh.M.R(e10.I(1));
                int g10 = R10.g();
                if (g10 == 0) {
                    this.f90655c = C14539s.G(R10, false);
                    return;
                } else if (g10 != 1) {
                    throw new IllegalArgumentException("Bad tag number: " + R10.g());
                }
            } else {
                if (size != 3) {
                    throw new IllegalArgumentException("Bad sequence size: " + e10.size());
                }
                oh.M R11 = oh.M.R(e10.I(1));
                if (R11.g() != 0) {
                    throw new IllegalArgumentException("Bad tag number for 'minimum': " + R11.g());
                }
                this.f90655c = C14539s.G(R11, false);
                R10 = oh.M.R(e10.I(2));
                if (R10.g() != 1) {
                    throw new IllegalArgumentException("Bad tag number for 'maximum': " + R10.g());
                }
            }
            this.f90656d = C14539s.G(R10, false);
        }
    }
}
