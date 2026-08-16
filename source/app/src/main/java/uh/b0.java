package uh;

import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.G0;

public class b0 extends AbstractC14545v {

    public a0[] f120642b;

    public b0(oh.E e10) {
        this.f120642b = new a0[e10.size()];
        Enumeration J10 = e10.J();
        int i10 = 0;
        while (J10.hasMoreElements()) {
            this.f120642b[i10] = a0.w(J10.nextElement());
            i10++;
        }
    }

    public static b0 v(Object obj) {
        if (obj instanceof b0) {
            return (b0) obj;
        }
        if (obj != null) {
            return new b0(oh.E.G(obj));
        }
        return null;
    }

    public static b0 w(oh.M m10, boolean z10) {
        return v(oh.E.H(m10, z10));
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(this.f120642b.length);
        int i10 = 0;
        while (true) {
            a0[] a0VarArr = this.f120642b;
            if (i10 == a0VarArr.length) {
                return new G0(c14518h);
            }
            c14518h.a(a0VarArr[i10]);
            i10++;
        }
    }

    public final a0[] u(a0[] a0VarArr) {
        int length = a0VarArr.length;
        a0[] a0VarArr2 = new a0[length];
        System.arraycopy(a0VarArr, 0, a0VarArr2, 0, length);
        return a0VarArr2;
    }

    public a0[] x() {
        return u(this.f120642b);
    }

    public b0(a0 a0Var) {
        this.f120642b = r0;
        a0[] a0VarArr = {a0Var};
    }

    public b0(a0[] a0VarArr) {
        this.f120642b = u(a0VarArr);
    }
}
