package uh;

import oh.AbstractC14545v;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;

public class D extends AbstractC14545v implements InterfaceC14514f {

    public C15634z f120568b;

    public S f120569c;

    public D(C15634z c15634z) {
        this.f120568b = c15634z;
        this.f120569c = null;
    }

    public static D u(Object obj) {
        if (obj == null || (obj instanceof D)) {
            return (D) obj;
        }
        if (obj instanceof oh.E) {
            return new D(C15634z.u(obj));
        }
        if (obj instanceof oh.M) {
            oh.M m10 = (oh.M) obj;
            if (m10.g() == 0) {
                return new D(S.w(m10, false));
            }
        }
        throw new IllegalArgumentException("Invalid KeyAgreeRecipientIdentifier: " + obj.getClass().getName());
    }

    public static D v(oh.M m10, boolean z10) {
        return u(oh.E.H(m10, z10));
    }

    @Override
    public oh.B r() {
        C15634z c15634z = this.f120568b;
        return c15634z != null ? c15634z.r() : new K0(false, 0, (InterfaceC14516g) this.f120569c);
    }

    public C15634z x() {
        return this.f120568b;
    }

    public S y() {
        return this.f120569c;
    }

    public D(S s10) {
        this.f120568b = null;
        this.f120569c = s10;
    }
}
