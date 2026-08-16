package hi;

import oh.AbstractC14545v;
import oh.C14518h;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;

public class s0 extends AbstractC14545v {

    public C13482F f90913b;

    public K f90914c;

    public S f90915d;

    public s0(C13482F c13482f) {
        this(c13482f, null, null);
    }

    public static s0 v(Object obj) {
        if (obj instanceof s0) {
            return (s0) obj;
        }
        if (obj != null) {
            return new s0(oh.E.G(obj));
        }
        return null;
    }

    public static s0 w(oh.M m10, boolean z10) {
        return v(oh.E.H(m10, z10));
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(3);
        C13482F c13482f = this.f90913b;
        if (c13482f != null) {
            c14518h.a(c13482f);
        }
        K k10 = this.f90914c;
        if (k10 != null) {
            c14518h.a(new K0(false, 0, (InterfaceC14516g) k10));
        }
        S s10 = this.f90915d;
        if (s10 != null) {
            c14518h.a(new K0(false, 1, (InterfaceC14516g) s10));
        }
        return new G0(c14518h);
    }

    public K u() {
        return this.f90914c;
    }

    public C13482F x() {
        return this.f90913b;
    }

    public S y() {
        return this.f90915d;
    }

    public s0(C13482F c13482f, K k10) {
        this(c13482f, k10, null);
    }

    public s0(C13482F c13482f, K k10, S s10) {
        this.f90913b = c13482f;
        this.f90914c = k10;
        this.f90915d = s10;
    }

    public s0(C13482F c13482f, S s10) {
        this(c13482f, null, s10);
    }

    public s0(oh.E e10) {
        int i10;
        if (e10.size() > 3) {
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }
        if (e10.I(0) instanceof oh.M) {
            i10 = 0;
        } else {
            this.f90913b = C13482F.w(e10.I(0));
            i10 = 1;
        }
        while (i10 != e10.size()) {
            oh.M R10 = oh.M.R(e10.I(i10));
            if (R10.g() == 0) {
                this.f90914c = K.v(R10, false);
            } else {
                if (R10.g() != 1) {
                    throw new IllegalArgumentException("Bad tag number: " + R10.g());
                }
                this.f90915d = S.x(R10, false);
            }
            i10++;
        }
    }
}
