package hi;

import ei.C13155a;
import oh.AbstractC14545v;
import oh.C14549x;
import oh.G0;

public class C13482F extends AbstractC14545v {

    public final C13481E[] f90651b;

    public C13482F(C13481E c13481e) {
        this.f90651b = new C13481E[]{c13481e};
    }

    public static C13481E[] u(C13481E[] c13481eArr) {
        C13481E[] c13481eArr2 = new C13481E[c13481eArr.length];
        System.arraycopy(c13481eArr, 0, c13481eArr2, 0, c13481eArr.length);
        return c13481eArr2;
    }

    public static C13482F v(C13479C c13479c, C14549x c14549x) {
        return w(C13479C.A(c13479c, c14549x));
    }

    public static C13482F w(Object obj) {
        if (obj instanceof C13482F) {
            return (C13482F) obj;
        }
        if (obj != null) {
            return new C13482F(oh.E.G(obj));
        }
        return null;
    }

    public static C13482F x(oh.M m10, boolean z10) {
        return new C13482F(oh.E.H(m10, z10));
    }

    @Override
    public oh.B r() {
        return new G0(this.f90651b);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String f10 = org.bouncycastle.util.w.f();
        stringBuffer.append("GeneralNames:");
        stringBuffer.append(f10);
        for (int i10 = 0; i10 != this.f90651b.length; i10++) {
            stringBuffer.append(C13155a.f85806a);
            stringBuffer.append((Object) this.f90651b[i10]);
            stringBuffer.append(f10);
        }
        return stringBuffer.toString();
    }

    public C13481E[] y() {
        return u(this.f90651b);
    }

    public C13482F(oh.E e10) {
        this.f90651b = new C13481E[e10.size()];
        for (int i10 = 0; i10 != e10.size(); i10++) {
            this.f90651b[i10] = C13481E.v(e10.I(i10));
        }
    }

    public C13482F(C13481E[] c13481eArr) {
        this.f90651b = u(c13481eArr);
    }
}
