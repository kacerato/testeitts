package hi;

import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;

public class P extends AbstractC14545v {

    public H[] f90718b;

    public H[] f90719c;

    public P(oh.E e10) {
        Enumeration J10 = e10.J();
        while (J10.hasMoreElements()) {
            oh.M R10 = oh.M.R(J10.nextElement());
            int g10 = R10.g();
            if (g10 == 0) {
                this.f90718b = v(oh.E.H(R10, false));
            } else {
                if (g10 != 1) {
                    throw new IllegalArgumentException("Unknown tag encountered: " + R10.g());
                }
                this.f90719c = v(oh.E.H(R10, false));
            }
        }
    }

    public static H[] u(H[] hArr) {
        if (hArr == null) {
            return null;
        }
        int length = hArr.length;
        H[] hArr2 = new H[length];
        System.arraycopy(hArr, 0, hArr2, 0, length);
        return hArr2;
    }

    public static P y(Object obj) {
        if (obj instanceof P) {
            return (P) obj;
        }
        if (obj != null) {
            return new P(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        if (this.f90718b != null) {
            c14518h.a(new K0(false, 0, (InterfaceC14516g) new G0(this.f90718b)));
        }
        if (this.f90719c != null) {
            c14518h.a(new K0(false, 1, (InterfaceC14516g) new G0(this.f90719c)));
        }
        return new G0(c14518h);
    }

    public final H[] v(oh.E e10) {
        int size = e10.size();
        H[] hArr = new H[size];
        for (int i10 = 0; i10 != size; i10++) {
            hArr[i10] = H.v(e10.I(i10));
        }
        return hArr;
    }

    public H[] x() {
        return u(this.f90719c);
    }

    public H[] z() {
        return u(this.f90718b);
    }

    public P(H[] hArr, H[] hArr2) {
        this.f90718b = u(hArr);
        this.f90719c = u(hArr2);
    }
}
