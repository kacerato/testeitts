package wh;

import oh.AbstractC14508c;
import oh.AbstractC14545v;
import oh.B;
import oh.C14539s;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;
import uh.C15629u;

public class r extends AbstractC14545v implements InterfaceC14514f {

    public static final int f127540d = 0;

    public static final int f127541e = 1;

    public static final int f127542f = 2;

    public static final int f127543g = 3;

    public static final int f127544h = 4;

    public int f127545b;

    public InterfaceC14516g f127546c;

    public r(M m10) {
        InterfaceC14516g I10;
        int g10 = m10.g();
        this.f127545b = g10;
        if (g10 != 0) {
            if (g10 == 1) {
                I10 = w.T(C14539s.G(m10, false).O());
            } else if (g10 != 2) {
                if (g10 == 3) {
                    I10 = q.w(m10, false);
                } else {
                    if (g10 != 4) {
                        throw new IllegalArgumentException("unknown tag in POPOPrivKey");
                    }
                    I10 = C15629u.x(m10, false);
                }
            }
            this.f127546c = I10;
        }
        I10 = AbstractC14508c.I(m10, false);
        this.f127546c = I10;
    }

    public static r u(Object obj) {
        if (obj instanceof r) {
            return (r) obj;
        }
        if (obj != null) {
            return new r(M.R(obj));
        }
        return null;
    }

    public static r v(M m10, boolean z10) {
        return u(M.W(m10, true));
    }

    @Override
    public B r() {
        return new K0(false, this.f127545b, this.f127546c);
    }

    public int x() {
        return this.f127545b;
    }

    public InterfaceC14516g y() {
        return this.f127546c;
    }

    public r(q qVar) {
        this.f127545b = 3;
        this.f127546c = qVar;
    }

    public r(w wVar) {
        this.f127545b = 1;
        this.f127546c = wVar;
    }
}
