package sh;

import oh.AbstractC14545v;
import oh.G0;
import oh.InterfaceC14516g;

public class C15298A extends AbstractC14545v {

    public final G[] f109467b;

    public final J[] f109468c;

    public final I[] f109469d;

    public final y[] f109470e;

    public C15298A(oh.E e10) {
        if (e10.size() != 4) {
            throw new IllegalArgumentException("Sequence not 4 elements.");
        }
        int i10 = 0;
        oh.E e11 = (oh.E) e10.I(0);
        this.f109467b = new G[e11.size()];
        int i11 = 0;
        while (true) {
            G[] gArr = this.f109467b;
            if (i11 >= gArr.length) {
                break;
            }
            gArr[i11] = G.y(e11.I(i11));
            i11++;
        }
        oh.E e12 = (oh.E) e10.I(1);
        this.f109468c = new J[e12.size()];
        int i12 = 0;
        while (true) {
            J[] jArr = this.f109468c;
            if (i12 >= jArr.length) {
                break;
            }
            jArr[i12] = J.u(e12.I(i12));
            i12++;
        }
        oh.E e13 = (oh.E) e10.I(2);
        this.f109469d = new I[e13.size()];
        int i13 = 0;
        while (true) {
            I[] iArr = this.f109469d;
            if (i13 >= iArr.length) {
                break;
            }
            iArr[i13] = I.w(e13.I(i13));
            i13++;
        }
        oh.E e14 = (oh.E) e10.I(3);
        this.f109470e = new y[e14.size()];
        while (true) {
            y[] yVarArr = this.f109470e;
            if (i10 >= yVarArr.length) {
                return;
            }
            yVarArr[i10] = y.v(e14.I(i10));
            i10++;
        }
    }

    public static C15298A A(Object obj) {
        if (obj instanceof C15298A) {
            return (C15298A) obj;
        }
        if (obj != null) {
            return new C15298A(oh.E.G(obj));
        }
        return null;
    }

    public y[] B() {
        return u(this.f109470e);
    }

    public J[] C() {
        return x(this.f109468c);
    }

    @Override
    public oh.B r() {
        return new G0(new InterfaceC14516g[]{new G0(this.f109467b), new G0(this.f109468c), new G0(this.f109469d), new G0(this.f109470e)});
    }

    public final y[] u(y[] yVarArr) {
        int length = yVarArr.length;
        y[] yVarArr2 = new y[length];
        System.arraycopy(yVarArr, 0, yVarArr2, 0, length);
        return yVarArr2;
    }

    public final G[] v(G[] gArr) {
        int length = gArr.length;
        G[] gArr2 = new G[length];
        System.arraycopy(gArr, 0, gArr2, 0, length);
        return gArr2;
    }

    public final I[] w(I[] iArr) {
        int length = iArr.length;
        I[] iArr2 = new I[length];
        System.arraycopy(iArr, 0, iArr2, 0, length);
        return iArr2;
    }

    public final J[] x(J[] jArr) {
        int length = jArr.length;
        J[] jArr2 = new J[length];
        System.arraycopy(jArr, 0, jArr2, 0, length);
        return jArr2;
    }

    public I[] y() {
        return w(this.f109469d);
    }

    public G[] z() {
        return v(this.f109467b);
    }

    public C15298A(G[] gArr, J[] jArr, I[] iArr, y[] yVarArr) {
        this.f109467b = v(gArr);
        this.f109468c = x(jArr);
        this.f109469d = w(iArr);
        this.f109470e = u(yVarArr);
    }
}
