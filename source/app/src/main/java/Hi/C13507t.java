package hi;

import oh.AbstractC14545v;
import oh.C14549x;
import oh.G0;

public class C13507t extends AbstractC14545v {

    public final W[] f90916b;

    public C13507t(W w10) {
        this.f90916b = new W[]{w10};
    }

    private static W[] u(W[] wArr) {
        W[] wArr2 = new W[wArr.length];
        System.arraycopy(wArr, 0, wArr2, 0, wArr.length);
        return wArr2;
    }

    public static C13507t v(C13479C c13479c) {
        return w(C13479C.A(c13479c, C13478B.f90545u));
    }

    public static C13507t w(Object obj) {
        if (obj instanceof C13507t) {
            return (C13507t) obj;
        }
        if (obj != null) {
            return new C13507t(oh.E.G(obj));
        }
        return null;
    }

    public static C13507t x(oh.M m10, boolean z10) {
        return w(oh.E.H(m10, z10));
    }

    @Override
    public oh.B r() {
        return new G0(this.f90916b);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i10 = 0; i10 < this.f90916b.length; i10++) {
            if (stringBuffer.length() != 0) {
                stringBuffer.append(", ");
            }
            stringBuffer.append((Object) this.f90916b[i10]);
        }
        return "CertificatePolicies: [" + ((Object) stringBuffer) + "]";
    }

    public W y(C14549x c14549x) {
        int i10 = 0;
        while (true) {
            W[] wArr = this.f90916b;
            if (i10 == wArr.length) {
                return null;
            }
            if (c14549x.A(wArr[i10].v())) {
                return this.f90916b[i10];
            }
            i10++;
        }
    }

    public W[] z() {
        return u(this.f90916b);
    }

    public C13507t(oh.E e10) {
        this.f90916b = new W[e10.size()];
        for (int i10 = 0; i10 != e10.size(); i10++) {
            this.f90916b[i10] = W.u(e10.I(i10));
        }
    }

    public C13507t(W[] wArr) {
        this.f90916b = u(wArr);
    }
}
