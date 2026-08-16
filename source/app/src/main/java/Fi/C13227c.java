package fi;

import oh.AbstractC14545v;
import oh.B;
import oh.C14549x;
import oh.G;
import oh.I0;
import oh.InterfaceC14516g;
import oh.M;

public class C13227c extends AbstractC14545v {

    public G f86384b;

    public C13227c(C13225a c13225a) {
        this.f86384b = new I0(c13225a);
    }

    public static C13227c y(Object obj) {
        if (obj instanceof C13227c) {
            return (C13227c) obj;
        }
        if (obj != null) {
            return new C13227c(G.F(obj));
        }
        return null;
    }

    public static C13227c z(M m10, boolean z10) {
        return new C13227c(G.G(m10, z10));
    }

    public C13225a[] A() {
        int size = this.f86384b.size();
        C13225a[] c13225aArr = new C13225a[size];
        for (int i10 = 0; i10 != size; i10++) {
            c13225aArr[i10] = C13225a.u(this.f86384b.H(i10));
        }
        return c13225aArr;
    }

    public boolean B() {
        return this.f86384b.size() > 1;
    }

    @Override
    public B r() {
        return this.f86384b;
    }

    public int size() {
        return this.f86384b.size();
    }

    public int u(C14549x[] c14549xArr, int i10) {
        int size = this.f86384b.size();
        for (int i11 = 0; i11 < size; i11++) {
            c14549xArr[i10 + i11] = C13225a.u(this.f86384b.H(i11)).v();
        }
        return size;
    }

    public boolean v(C14549x c14549x) {
        int size = this.f86384b.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (C13225a.u(this.f86384b.H(i10)).v().A(c14549x)) {
                return true;
            }
        }
        return false;
    }

    public C13225a x() {
        if (this.f86384b.size() == 0) {
            return null;
        }
        return C13225a.u(this.f86384b.H(0));
    }

    public C13227c(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this(new C13225a(c14549x, interfaceC14516g));
    }

    public C13227c(G g10) {
        this.f86384b = g10;
    }

    public C13227c(C13225a[] c13225aArr) {
        this.f86384b = new I0(c13225aArr);
    }
}
