package Ek;

import Fk.C2539k;
import Fk.T;
import oh.AbstractC14545v;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;

public class M extends AbstractC14545v implements InterfaceC14514f {

    public static final int f5934d = 0;

    public static final int f5935e = 1;

    public final int f5936b;

    public final InterfaceC14516g f5937c;

    public M(int i10, InterfaceC14516g interfaceC14516g) {
        this.f5936b = i10;
        this.f5937c = interfaceC14516g;
    }

    public static M v(Object obj) {
        if (obj instanceof M) {
            return (M) obj;
        }
        if (obj != null) {
            return new M(oh.M.S(obj, 128));
        }
        return null;
    }

    public static M y(C2539k c2539k) {
        return new M(1, c2539k);
    }

    public static M z(T t10) {
        return new M(0, t10);
    }

    @Override
    public oh.B r() {
        return new K0(this.f5936b, this.f5937c);
    }

    public int u() {
        return this.f5936b;
    }

    public InterfaceC14516g x() {
        return this.f5937c;
    }

    public M(oh.M m10) {
        InterfaceC14516g z10;
        int g10 = m10.g();
        this.f5936b = g10;
        if (g10 == 0) {
            z10 = T.z(m10.O());
        } else {
            if (g10 != 1) {
                throw new IllegalArgumentException("invalid choice value " + g10);
            }
            z10 = C2539k.E(m10.O());
        }
        this.f5937c = z10;
    }
}
