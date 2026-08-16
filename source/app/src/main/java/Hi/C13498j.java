package hi;

import oh.AbstractC14545v;
import oh.C14549x;
import oh.G0;

public class C13498j extends AbstractC14545v {

    public C13484a[] f90819b;

    public C13498j(C13484a c13484a) {
        this.f90819b = new C13484a[]{c13484a};
    }

    public static C13484a[] u(C13484a[] c13484aArr) {
        C13484a[] c13484aArr2 = new C13484a[c13484aArr.length];
        System.arraycopy(c13484aArr, 0, c13484aArr2, 0, c13484aArr.length);
        return c13484aArr2;
    }

    public static C13498j v(C13479C c13479c) {
        return y(C13479C.A(c13479c, C13478B.f90516B));
    }

    public static C13498j y(Object obj) {
        if (obj instanceof C13498j) {
            return (C13498j) obj;
        }
        if (obj != null) {
            return new C13498j(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new G0(this.f90819b);
    }

    public String toString() {
        return "AuthorityInformationAccess: Oid(" + this.f90819b[0].v().J() + ")";
    }

    public C13484a[] x() {
        return u(this.f90819b);
    }

    public C13498j(C14549x c14549x, C13481E c13481e) {
        this(new C13484a(c14549x, c13481e));
    }

    public C13498j(oh.E e10) {
        if (e10.size() < 1) {
            throw new IllegalArgumentException("sequence may not be empty");
        }
        this.f90819b = new C13484a[e10.size()];
        for (int i10 = 0; i10 != e10.size(); i10++) {
            this.f90819b[i10] = C13484a.w(e10.I(i10));
        }
    }

    public C13498j(C13484a[] c13484aArr) {
        this.f90819b = u(c13484aArr);
    }
}
