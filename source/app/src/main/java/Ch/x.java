package Ch;

import hi.C13495g;
import hi.C13496h;
import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.E;
import oh.G0;
import oh.K0;
import oh.M;

public class x extends AbstractC14545v {

    public Object[] f4375b;

    public x(C13496h c13496h) {
        this.f4375b = r0;
        Object[] objArr = {c13496h};
    }

    public static x u(Object obj) {
        if (obj instanceof x) {
            return (x) obj;
        }
        if (obj != null) {
            return new x(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(this.f4375b.length);
        int i10 = 0;
        while (true) {
            Object[] objArr = this.f4375b;
            if (i10 == objArr.length) {
                return new G0(c14518h);
            }
            Object obj = objArr[i10];
            if (obj instanceof C13495g[]) {
                c14518h.a(new K0(0, new G0((C13495g[]) this.f4375b[i10])));
            } else {
                c14518h.a(new K0(1, (C13496h) obj));
            }
            i10++;
        }
    }

    public Object[] v() {
        Object[] objArr = this.f4375b;
        int length = objArr.length;
        Object[] objArr2 = new Object[length];
        System.arraycopy(objArr, 0, objArr2, 0, length);
        return objArr2;
    }

    public x(E e10) {
        this.f4375b = new Object[e10.size()];
        Enumeration J10 = e10.J();
        int i10 = 0;
        while (J10.hasMoreElements()) {
            M R10 = M.R(J10.nextElement());
            if (R10.g() == 0) {
                E H10 = E.H(R10, true);
                int size = H10.size();
                C13495g[] c13495gArr = new C13495g[size];
                for (int i11 = 0; i11 != size; i11++) {
                    c13495gArr[i11] = C13495g.y(H10.I(i11));
                }
                this.f4375b[i10] = c13495gArr;
            } else {
                if (R10.g() != 1) {
                    throw new IllegalArgumentException("illegal tag: " + R10.g());
                }
                this.f4375b[i10] = C13496h.v(E.H(R10, true));
            }
            i10++;
        }
    }

    public x(C13495g[] c13495gArr) {
        this.f4375b = r0;
        Object[] objArr = {c13495gArr};
    }
}
