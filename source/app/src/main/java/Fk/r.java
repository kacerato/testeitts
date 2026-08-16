package Fk;

import oh.AbstractC14545v;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;

public class r extends AbstractC14545v implements InterfaceC14514f {

    public static final int f7169d = 0;

    public static final int f7170e = 1;

    public static final int f7171f = 2;

    public static final int f7172g = 3;

    public final int f7173b;

    public final InterfaceC14516g f7174c;

    public r(int i10, InterfaceC14516g interfaceC14516g) {
        this.f7173b = i10;
        this.f7174c = interfaceC14516g;
    }

    public static r A(N n10) {
        return new r(2, n10);
    }

    public static r B(e0 e0Var) {
        return new r(1, e0Var);
    }

    public static r u(C2532d c2532d) {
        return new r(0, c2532d);
    }

    public static r y(Object obj) {
        if (obj instanceof r) {
            return (r) obj;
        }
        if (obj != null) {
            return new r(oh.M.S(obj, 128));
        }
        return null;
    }

    public static r z(Z z10) {
        return new r(3, z10);
    }

    @Override
    public oh.B r() {
        return new K0(this.f7173b, this.f7174c);
    }

    public int v() {
        return this.f7173b;
    }

    public InterfaceC14516g x() {
        return this.f7174c;
    }

    public r(oh.M m10) {
        InterfaceC14516g w10;
        int g10 = m10.g();
        this.f7173b = g10;
        if (g10 == 0) {
            w10 = C2532d.w(m10.O());
        } else if (g10 == 1) {
            w10 = e0.u(m10.O());
        } else if (g10 == 2) {
            w10 = N.u(m10.O());
        } else {
            if (g10 != 3) {
                throw new IllegalArgumentException("invalid choice value " + g10);
            }
            w10 = Z.v(m10.O());
        }
        this.f7174c = w10;
    }
}
