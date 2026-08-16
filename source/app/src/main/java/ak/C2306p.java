package Ak;

import oh.AbstractC14545v;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;

public class C2306p extends AbstractC14545v implements InterfaceC14514f {

    public static final int f973d = 0;

    public static final int f974e = 1;

    public final int f975b;

    public final InterfaceC14516g f976c;

    public C2306p(int i10, InterfaceC14516g interfaceC14516g) {
        this.f975b = i10;
        this.f976c = interfaceC14516g;
    }

    public static C2306p u(r rVar) {
        return new C2306p(0, rVar);
    }

    public static C2306p v(C2307q c2307q) {
        return new C2306p(1, c2307q);
    }

    public static C2306p z(Object obj) {
        if (obj instanceof C2306p) {
            return (C2306p) obj;
        }
        if (obj != null) {
            return new C2306p(oh.M.S(obj, 128));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new K0(this.f975b, this.f976c);
    }

    public int x() {
        return this.f975b;
    }

    public InterfaceC14516g y() {
        return this.f976c;
    }

    public C2306p(oh.M m10) {
        InterfaceC14516g z10;
        int g10 = m10.g();
        this.f975b = g10;
        if (g10 == 0) {
            z10 = r.z(m10.O());
        } else {
            if (g10 != 1) {
                throw new IllegalArgumentException("invalid choice value " + g10);
            }
            z10 = C2307q.z(m10.O());
        }
        this.f976c = z10;
    }
}
