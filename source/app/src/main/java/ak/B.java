package Ak;

import oh.AbstractC14545v;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;

public class B extends AbstractC14545v implements InterfaceC14514f {

    public static final int f835d = 0;

    public static final int f836e = 1;

    public static final int f837f = 2;

    public static final int f838g = 3;

    public static final int f839h = 4;

    public static final int f840i = 5;

    public static final int f841j = 6;

    public static final int f842k = 7;

    public static final int f843l = 8;

    public static final int f844m = 9;

    public static final int f845n = 10;

    public static final int f846o = 11;

    public static final int f847p = 12;

    public final int f848b;

    public final InterfaceC14516g f849c;

    public B(int i10, InterfaceC14516g interfaceC14516g) {
        this.f848b = i10;
        this.f849c = interfaceC14516g;
    }

    public static B w(Object obj) {
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
        return new K0(this.f848b, this.f849c);
    }

    public int u() {
        return this.f848b;
    }

    public InterfaceC14516g v() {
        return this.f849c;
    }

    public B(oh.M m10) {
        InterfaceC14516g A10;
        int g10 = m10.g();
        this.f848b = g10;
        switch (g10) {
            case 0:
                A10 = H.A(m10.O());
                break;
            case 1:
                A10 = I.w(m10.O());
                break;
            case 2:
                A10 = E.y(m10.O());
                break;
            case 3:
                A10 = F.w(m10.O());
                break;
            case 4:
            default:
                throw new IllegalArgumentException("choice not implemented " + g10);
            case 5:
                A10 = Z.C(m10.O());
                break;
            case 6:
                A10 = Y.C(m10.O());
                break;
            case 7:
                A10 = C2296f.w(m10.O());
                break;
            case 8:
                A10 = C2298h.w(m10.O());
                break;
            case 9:
                A10 = C2302l.v(m10.O());
                break;
        }
        this.f849c = A10;
    }
}
