package Ak;

import oh.AbstractC14545v;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;

public class r extends AbstractC14545v implements InterfaceC14514f {

    public static final int f981d = 0;

    public static final int f982e = 1;

    public static final int f983f = 2;

    public static final int f984g = 3;

    public static final int f985h = 4;

    public final int f986b;

    public final InterfaceC14516g f987c;

    public r(int i10, InterfaceC14516g interfaceC14516g) {
        this.f986b = i10;
        this.f987c = interfaceC14516g;
    }

    public static r A(M m10) {
        return new r(0, m10);
    }

    public static r B(S s10) {
        return new r(4, s10);
    }

    public static r u(C2291a c2291a) {
        return new r(2, c2291a);
    }

    public static r v(C2310u c2310u) {
        return new r(3, c2310u);
    }

    public static r w(C2312w c2312w) {
        return new r(1, c2312w);
    }

    public static r z(Object obj) {
        if (obj instanceof r) {
            return (r) obj;
        }
        if (obj != null) {
            return new r(oh.M.S(obj, 128));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new K0(this.f986b, this.f987c);
    }

    public int x() {
        return this.f986b;
    }

    public InterfaceC14516g y() {
        return this.f987c;
    }

    public r(oh.M m10) {
        InterfaceC14516g v10;
        int g10 = m10.g();
        this.f986b = g10;
        if (g10 == 0) {
            v10 = M.v(m10.O());
        } else if (g10 == 1) {
            v10 = C2312w.y(m10.O());
        } else if (g10 == 2) {
            v10 = C2291a.y(m10.O());
        } else if (g10 == 3) {
            v10 = C2310u.w(m10.O());
        } else {
            if (g10 != 4) {
                throw new IllegalArgumentException("invalid choice value " + g10);
            }
            v10 = S.w(m10.O());
        }
        this.f987c = v10;
    }
}
