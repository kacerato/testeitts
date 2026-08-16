package zh;

import ai.C3655b;
import hi.C13478B;
import hi.C13505q;
import hi.r;
import oh.AbstractC14545v;
import oh.B;
import oh.E;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;
import th.L;
import uh.C15624o;

public class C16311a extends AbstractC14545v implements InterfaceC14514f {

    public static final int f131347e = 0;

    public static final int f131348f = 1;

    public static final int f131349g = 2;

    public static final int f131350h = 3;

    public static final int f131351i = 4;

    public static final int f131352j = 5;

    public static final int f131353k = 6;

    public static final int f131354l = 7;

    public static final int f131355m = 8;

    public static final boolean[] f131356n = {false, true, false, true, false, true, false, false, true};

    public int f131357b;

    public InterfaceC14516g f131358c;

    public C13478B f131359d;

    public C16311a(int i10, InterfaceC14516g interfaceC14516g) {
        this.f131357b = i10;
        this.f131358c = interfaceC14516g;
    }

    public static C16311a[] u(E e10) {
        int size = e10.size();
        C16311a[] c16311aArr = new C16311a[size];
        for (int i10 = 0; i10 != size; i10++) {
            c16311aArr[i10] = w(e10.I(i10));
        }
        return c16311aArr;
    }

    public static C16311a w(Object obj) {
        if (obj instanceof C16311a) {
            return (C16311a) obj;
        }
        if (obj instanceof M) {
            return new C16311a(M.S(obj, 128));
        }
        if (obj != null) {
            return new C16311a(C13478B.z(obj));
        }
        return null;
    }

    public int g() {
        return this.f131357b;
    }

    @Override
    public B r() {
        C13478B c13478b = this.f131359d;
        if (c13478b != null) {
            return c13478b.r();
        }
        boolean[] zArr = f131356n;
        int i10 = this.f131357b;
        return new K0(zArr[i10], i10, this.f131358c);
    }

    public String toString() {
        return "CertEtcToken {\n" + ((Object) this.f131358c) + "}\n";
    }

    public C13478B v() {
        return this.f131359d;
    }

    public InterfaceC14516g x() {
        return this.f131358c;
    }

    public C16311a(C13478B c13478b) {
        this.f131357b = -1;
        this.f131359d = c13478b;
    }

    public C16311a(M m10) {
        InterfaceC14516g w10;
        int g10 = m10.g();
        this.f131357b = g10;
        switch (g10) {
            case 0:
                w10 = C13505q.w(m10, false);
                break;
            case 1:
                w10 = Dh.c.v(m10.O());
                break;
            case 2:
                w10 = L.w(m10, false);
                break;
            case 3:
                w10 = C15624o.w(m10.O());
                break;
            case 4:
                w10 = r.v(m10, false);
                break;
            case 5:
                w10 = Vh.c.u(m10.O());
                break;
            case 6:
                w10 = Vh.b.w(m10, false);
                break;
            case 7:
                w10 = Vh.g.v(m10, false);
                break;
            case 8:
                w10 = C3655b.v(m10.O());
                break;
            default:
                throw new IllegalArgumentException("Unknown tag: " + this.f131357b);
        }
        this.f131358c = w10;
    }
}
