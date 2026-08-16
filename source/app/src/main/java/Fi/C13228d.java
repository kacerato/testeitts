package fi;

import oh.AbstractC14545v;
import oh.B;
import oh.C14549x;
import oh.E;
import oh.G0;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.M;

public class C13228d extends AbstractC14545v implements InterfaceC14514f {

    public static f f86385g = gi.c.f89948T;

    public boolean f86386b;

    public int f86387c;

    public f f86388d;

    public C13227c[] f86389e;

    public G0 f86390f;

    public C13228d(f fVar, C13228d c13228d) {
        this.f86388d = fVar;
        this.f86389e = c13228d.f86389e;
        this.f86390f = c13228d.f86390f;
    }

    public static void B(f fVar) {
        if (fVar == null) {
            throw new NullPointerException("cannot set style to null");
        }
        f86385g = fVar;
    }

    public static f v() {
        return f86385g;
    }

    public static C13228d w(f fVar, Object obj) {
        if (obj instanceof C13228d) {
            return new C13228d(fVar, (C13228d) obj);
        }
        if (obj != null) {
            return new C13228d(fVar, E.G(obj));
        }
        return null;
    }

    public static C13228d x(Object obj) {
        if (obj instanceof C13228d) {
            return (C13228d) obj;
        }
        if (obj != null) {
            return new C13228d(E.G(obj));
        }
        return null;
    }

    public static C13228d y(M m10, boolean z10) {
        return x(E.H(m10, true));
    }

    public C13227c[] A(C14549x c14549x) {
        int length = this.f86389e.length;
        C13227c[] c13227cArr = new C13227c[length];
        int i10 = 0;
        int i11 = 0;
        while (true) {
            C13227c[] c13227cArr2 = this.f86389e;
            if (i10 == c13227cArr2.length) {
                break;
            }
            C13227c c13227c = c13227cArr2[i10];
            if (c13227c.v(c14549x)) {
                c13227cArr[i11] = c13227c;
                i11++;
            }
            i10++;
        }
        if (i11 >= length) {
            return c13227cArr;
        }
        C13227c[] c13227cArr3 = new C13227c[i11];
        System.arraycopy(c13227cArr, 0, c13227cArr3, 0, i11);
        return c13227cArr3;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C13228d) && !(obj instanceof E)) {
            return false;
        }
        if (r().A(((InterfaceC14516g) obj).r())) {
            return true;
        }
        try {
            return this.f86388d.d(this, x(obj));
        } catch (Exception unused) {
            return false;
        }
    }

    @Override
    public int hashCode() {
        if (this.f86386b) {
            return this.f86387c;
        }
        this.f86386b = true;
        int b10 = this.f86388d.b(this);
        this.f86387c = b10;
        return b10;
    }

    @Override
    public B r() {
        return this.f86390f;
    }

    public int size() {
        return this.f86389e.length;
    }

    public String toString() {
        return this.f86388d.g(this);
    }

    public C14549x[] u() {
        int length = this.f86389e.length;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            i10 += this.f86389e[i11].size();
        }
        C14549x[] c14549xArr = new C14549x[i10];
        int i12 = 0;
        for (int i13 = 0; i13 < length; i13++) {
            i12 += this.f86389e[i13].u(c14549xArr, i12);
        }
        return c14549xArr;
    }

    public C13227c[] z() {
        return (C13227c[]) this.f86389e.clone();
    }

    public C13228d(f fVar, String str) {
        this(fVar.fromString(str));
        this.f86388d = fVar;
    }

    public C13228d(f fVar, E e10) {
        int size = e10.size();
        this.f86388d = fVar;
        this.f86389e = new C13227c[size];
        boolean z10 = true;
        for (int i10 = 0; i10 < size; i10++) {
            InterfaceC14516g I10 = e10.I(i10);
            C13227c y10 = C13227c.y(I10);
            z10 &= y10 == I10;
            this.f86389e[i10] = y10;
        }
        this.f86390f = z10 ? G0.S(e10) : new G0(this.f86389e);
    }

    public C13228d(f fVar, C13227c[] c13227cArr) {
        this.f86388d = fVar;
        this.f86389e = (C13227c[]) c13227cArr.clone();
        this.f86390f = new G0(this.f86389e);
    }

    public C13228d(String str) {
        this(f86385g, str);
    }

    public C13228d(E e10) {
        this(f86385g, e10);
    }

    public C13228d(C13227c[] c13227cArr) {
        this(f86385g, c13227cArr);
    }
}
