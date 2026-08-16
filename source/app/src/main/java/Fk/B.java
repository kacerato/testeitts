package Fk;

import oh.AbstractC14545v;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;

public class B extends AbstractC14545v implements InterfaceC14514f, W {

    public static final int f7008d = 0;

    public static final int f7009e = 1;

    public static final int f7010f = 2;

    public final int f7011b;

    public final InterfaceC14516g f7012c;

    public B(int i10, InterfaceC14516g interfaceC14516g) {
        this.f7011b = i10;
        this.f7012c = interfaceC14516g;
    }

    public static B u(C2533e c2533e) {
        return new B(1, c2533e);
    }

    public static B v(C2534f c2534f) {
        return new B(2, c2534f);
    }

    public static B w(C2535g c2535g) {
        return new B(0, c2535g);
    }

    public static B z(Object obj) {
        if (obj instanceof B) {
            return (B) obj;
        }
        if (obj != null) {
            return new B(oh.M.S(obj, 128));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new K0(this.f7011b, this.f7012c);
    }

    public int x() {
        return this.f7011b;
    }

    public InterfaceC14516g y() {
        return this.f7012c;
    }

    public B(oh.M m10) {
        InterfaceC14516g y10;
        int g10 = m10.g();
        this.f7011b = g10;
        if (g10 == 0) {
            y10 = C2535g.y(m10.O());
        } else if (g10 == 1) {
            y10 = C2533e.w(m10.O());
        } else {
            if (g10 != 2) {
                throw new IllegalArgumentException("invalid choice value " + g10);
            }
            y10 = C2534f.w(m10.O());
        }
        this.f7012c = y10;
    }
}
