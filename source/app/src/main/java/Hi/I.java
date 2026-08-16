package hi;

import oh.AbstractC14545v;
import oh.C14518h;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;

public class I extends AbstractC14545v {

    public static final int f90657f = 0;

    public static final int f90658g = 1;

    public K f90659b;

    public C13482F f90660c;

    public S f90661d;

    public int f90662e;

    public I(C13482F c13482f) {
        this(c13482f, 1);
    }

    public static I w(Object obj) {
        if (obj instanceof I) {
            return (I) obj;
        }
        if (obj instanceof oh.M) {
            return new I(oh.M.R(obj));
        }
        if (obj != null) {
            return new I(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        if (this.f90662e != 1) {
            C13482F c13482f = this.f90660c;
            return c13482f != null ? new K0(true, 1, (InterfaceC14516g) c13482f) : new K0(true, 0, (InterfaceC14516g) this.f90659b);
        }
        C14518h c14518h = new C14518h(3);
        K k10 = this.f90659b;
        if (k10 != null) {
            c14518h.a(new K0(false, 0, (InterfaceC14516g) k10));
        }
        C13482F c13482f2 = this.f90660c;
        if (c13482f2 != null) {
            c14518h.a(new K0(false, 1, (InterfaceC14516g) c13482f2));
        }
        S s10 = this.f90661d;
        if (s10 != null) {
            c14518h.a(new K0(false, 2, (InterfaceC14516g) s10));
        }
        return new G0(c14518h);
    }

    public K u() {
        return this.f90659b;
    }

    public C13482F v() {
        return this.f90660c;
    }

    public S x() {
        return this.f90661d;
    }

    public int y() {
        return this.f90662e;
    }

    public I(C13482F c13482f, int i10) {
        this.f90660c = c13482f;
        this.f90662e = i10;
    }

    public I(K k10) {
        this(k10, 1);
    }

    public I(K k10, int i10) {
        this.f90659b = k10;
        this.f90662e = i10;
    }

    public I(S s10) {
        this.f90662e = 1;
        this.f90661d = s10;
    }

    public I(oh.E e10) {
        this.f90662e = 1;
        if (e10.size() > 3) {
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }
        for (int i10 = 0; i10 != e10.size(); i10++) {
            oh.M R10 = oh.M.R(e10.I(i10));
            int g10 = R10.g();
            if (g10 == 0) {
                this.f90659b = K.v(R10, false);
            } else if (g10 == 1) {
                this.f90660c = C13482F.x(R10, false);
            } else {
                if (g10 != 2) {
                    throw new IllegalArgumentException("unknown tag in Holder");
                }
                this.f90661d = S.x(R10, false);
            }
        }
        this.f90662e = 1;
    }

    public I(oh.M m10) {
        this.f90662e = 1;
        int g10 = m10.g();
        if (g10 == 0) {
            this.f90659b = K.v(m10, true);
        } else {
            if (g10 != 1) {
                throw new IllegalArgumentException("unknown tag in Holder");
            }
            this.f90660c = C13482F.x(m10, true);
        }
        this.f90662e = 0;
    }
}
