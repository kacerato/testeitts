package Fk;

import oh.AbstractC14545v;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;

public class j0 extends AbstractC14545v implements InterfaceC14514f {

    public static final int f7115d = 0;

    public static final int f7116e = 1;

    public static final int f7117f = 2;

    public final int f7118b;

    public final InterfaceC14516g f7119c;

    public j0(int i10, InterfaceC14516g interfaceC14516g) {
        this.f7118b = i10;
        this.f7119c = interfaceC14516g;
    }

    public static j0 u(C2541m c2541m) {
        return new j0(1, c2541m);
    }

    public static j0 v(C2542n c2542n) {
        return new j0(2, c2542n);
    }

    public static j0 w(C2541m c2541m) {
        return new j0(0, c2541m);
    }

    public static j0 y(Object obj) {
        if (obj instanceof j0) {
            return (j0) obj;
        }
        if (obj != null) {
            return new j0(oh.M.S(obj, 128));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new K0(this.f7118b, this.f7119c);
    }

    public int x() {
        return this.f7118b;
    }

    public InterfaceC14516g z() {
        return this.f7119c;
    }

    public j0(oh.M m10) {
        InterfaceC14516g v10;
        int g10 = m10.g();
        this.f7118b = g10;
        if (g10 == 0 || g10 == 1) {
            v10 = C2541m.v(m10.O());
        } else {
            if (g10 != 2) {
                throw new IllegalArgumentException("invalid choice value " + m10.g());
            }
            v10 = C2542n.v(m10.O());
        }
        this.f7119c = v10;
    }
}
