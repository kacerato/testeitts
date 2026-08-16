package th;

import java.math.BigInteger;
import oh.AbstractC14545v;
import oh.C14539s;
import oh.G0;

public class P extends AbstractC14545v {

    public final oh.E f117531b;

    public P(BigInteger bigInteger) {
        this(new C14539s(bigInteger));
    }

    public static P w(Object obj) {
        if (obj instanceof P) {
            return (P) obj;
        }
        if (obj != null) {
            return new P(oh.E.G(obj));
        }
        return null;
    }

    public static C14539s[] x(BigInteger[] bigIntegerArr) {
        int length = bigIntegerArr.length;
        C14539s[] c14539sArr = new C14539s[length];
        for (int i10 = 0; i10 != length; i10++) {
            c14539sArr[i10] = new C14539s(bigIntegerArr[i10]);
        }
        return c14539sArr;
    }

    public static G0[] y(C14539s[] c14539sArr) {
        int length = c14539sArr.length;
        G0[] g0Arr = new G0[length];
        for (int i10 = 0; i10 != length; i10++) {
            g0Arr[i10] = new G0(c14539sArr[i10]);
        }
        return g0Arr;
    }

    public static C14539s[] z(oh.E e10) {
        int size = e10.size();
        C14539s[] c14539sArr = new C14539s[size];
        for (int i10 = 0; i10 != size; i10++) {
            c14539sArr[i10] = C14539s.F(e10.I(i10));
        }
        return c14539sArr;
    }

    @Override
    public oh.B r() {
        return this.f117531b;
    }

    public BigInteger[] u() {
        int size = this.f117531b.size();
        BigInteger[] bigIntegerArr = new BigInteger[size];
        for (int i10 = 0; i10 != size; i10++) {
            bigIntegerArr[i10] = C14539s.F(oh.E.G(this.f117531b.I(i10)).I(0)).I();
        }
        return bigIntegerArr;
    }

    public C14539s[][] v() {
        int size = this.f117531b.size();
        C14539s[][] c14539sArr = new C14539s[size];
        for (int i10 = 0; i10 != size; i10++) {
            c14539sArr[i10] = z((oh.E) this.f117531b.I(i10));
        }
        return c14539sArr;
    }

    public P(C14539s c14539s) {
        this(new G0(new G0(c14539s)));
    }

    public P(oh.E e10) {
        this.f117531b = e10;
    }

    public P(BigInteger[] bigIntegerArr) {
        this(x(bigIntegerArr));
    }

    public P(C14539s[] c14539sArr) {
        this(new G0(y(c14539sArr)));
    }
}
