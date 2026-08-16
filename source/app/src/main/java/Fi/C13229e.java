package fi;

import java.util.Vector;
import oh.C14549x;
import oh.InterfaceC14516g;

public class C13229e {

    public f f86391a;

    public Vector f86392b;

    public C13229e() {
        this(gi.c.f89948T);
    }

    public C13229e a(C13225a[] c13225aArr) {
        this.f86392b.addElement(new C13227c(c13225aArr));
        return this;
    }

    public C13229e b(C14549x[] c14549xArr, String[] strArr) {
        int length = strArr.length;
        InterfaceC14516g[] interfaceC14516gArr = new InterfaceC14516g[length];
        for (int i10 = 0; i10 != length; i10++) {
            interfaceC14516gArr[i10] = this.f86391a.a(c14549xArr[i10], strArr[i10]);
        }
        return c(c14549xArr, interfaceC14516gArr);
    }

    public C13229e c(C14549x[] c14549xArr, InterfaceC14516g[] interfaceC14516gArr) {
        C13225a[] c13225aArr = new C13225a[c14549xArr.length];
        for (int i10 = 0; i10 != c14549xArr.length; i10++) {
            c13225aArr[i10] = new C13225a(c14549xArr[i10], interfaceC14516gArr[i10]);
        }
        return a(c13225aArr);
    }

    public C13229e d(C13225a c13225a) {
        this.f86392b.addElement(new C13227c(c13225a));
        return this;
    }

    public C13229e e(C14549x c14549x, String str) {
        f(c14549x, this.f86391a.a(c14549x, str));
        return this;
    }

    public C13229e f(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this.f86392b.addElement(new C13227c(c14549x, interfaceC14516g));
        return this;
    }

    public C13228d g() {
        int size = this.f86392b.size();
        C13227c[] c13227cArr = new C13227c[size];
        for (int i10 = 0; i10 != size; i10++) {
            c13227cArr[i10] = (C13227c) this.f86392b.elementAt(i10);
        }
        return new C13228d(this.f86391a, c13227cArr);
    }

    public C13229e(f fVar) {
        this.f86392b = new Vector();
        this.f86391a = fVar;
    }
}
