package Ek;

import Fk.C2553z;
import oh.A0;
import oh.AbstractC14541t;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C0;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;

public class C2493d extends AbstractC14545v implements InterfaceC14514f {

    public static final int f5952d = 0;

    public static final int f5953e = 1;

    public static final int f5954f = 2;

    public static final int f5955g = 3;

    public final int f5956b;

    public final InterfaceC14516g f5957c;

    public C2493d(int i10, InterfaceC14516g interfaceC14516g) {
        this.f5956b = i10;
        this.f5957c = interfaceC14516g;
    }

    public static C2493d A(t tVar) {
        return new C2493d(0, tVar);
    }

    public static C2493d B(C2553z c2553z) {
        return new C2493d(1, c2553z);
    }

    public static C2493d C() {
        return new C2493d(3, A0.f98776c);
    }

    public static C2493d u(AbstractC14551y abstractC14551y) {
        return new C2493d(2, abstractC14551y);
    }

    public static C2493d v(byte[] bArr) {
        return new C2493d(2, new C0(bArr));
    }

    public static C2493d z(Object obj) {
        if (obj instanceof C2493d) {
            return (C2493d) obj;
        }
        if (obj != null) {
            return new C2493d(oh.M.S(obj, 128));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new K0(this.f5956b, this.f5957c).r();
    }

    public InterfaceC14516g x() {
        return this.f5957c;
    }

    public int y() {
        return this.f5956b;
    }

    public C2493d(oh.M m10) {
        InterfaceC14516g y10;
        int g10 = m10.g();
        this.f5956b = g10;
        if (g10 == 0) {
            y10 = t.y(m10.O());
        } else if (g10 == 1) {
            y10 = C2553z.v(m10.O());
        } else if (g10 == 2) {
            y10 = AbstractC14551y.F(m10.O());
        } else {
            if (g10 != 3) {
                throw new IllegalArgumentException("invalid choice value " + g10);
            }
            y10 = AbstractC14541t.F(m10.O());
        }
        this.f5957c = y10;
    }
}
