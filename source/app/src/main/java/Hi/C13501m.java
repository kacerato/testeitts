package hi;

import ei.C13155a;
import oh.AbstractC14545v;
import oh.G0;

public class C13501m extends AbstractC14545v {

    public oh.E f90853b;

    public C13501m(oh.E e10) {
        this.f90853b = e10;
    }

    public static C13501m u(C13479C c13479c) {
        return w(C13479C.A(c13479c, C13478B.f90544t));
    }

    public static C13501m w(Object obj) {
        if (obj instanceof C13501m) {
            return (C13501m) obj;
        }
        if (obj != null) {
            return new C13501m(oh.E.G(obj));
        }
        return null;
    }

    public static C13501m x(oh.M m10, boolean z10) {
        return w(oh.E.H(m10, z10));
    }

    @Override
    public oh.B r() {
        return this.f90853b;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String f10 = org.bouncycastle.util.w.f();
        stringBuffer.append("CRLDistPoint:");
        stringBuffer.append(f10);
        C13512y[] v10 = v();
        for (int i10 = 0; i10 != v10.length; i10++) {
            stringBuffer.append(C13155a.f85806a);
            stringBuffer.append((Object) v10[i10]);
            stringBuffer.append(f10);
        }
        return stringBuffer.toString();
    }

    public C13512y[] v() {
        C13512y[] c13512yArr = new C13512y[this.f90853b.size()];
        for (int i10 = 0; i10 != this.f90853b.size(); i10++) {
            c13512yArr[i10] = C13512y.y(this.f90853b.I(i10));
        }
        return c13512yArr;
    }

    public C13501m(C13512y[] c13512yArr) {
        this.f90853b = null;
        this.f90853b = new G0(c13512yArr);
    }
}
