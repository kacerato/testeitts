package ni;

import Qk.C3017j;
import Qk.o;
import th.C;
import th.C15432h;
import th.C15437m;

public class C14450c {

    public o f98236a;

    public C15432h f98237b;

    public C14450c(C15432h c15432h) {
        this(c15432h, new C3017j());
    }

    public static C14450c a(C c10) {
        return b(c10, new C3017j());
    }

    public static C14450c b(C c10, o oVar) {
        if (d(c10.x())) {
            return new C14450c(C15432h.u(c10.v()), oVar);
        }
        throw new IllegalArgumentException("content of PKIBody wrong type: " + c10.x());
    }

    public static boolean d(int i10) {
        return i10 == 24;
    }

    public e[] c() {
        C15437m[] v10 = this.f98237b.v();
        int length = v10.length;
        e[] eVarArr = new e[length];
        for (int i10 = 0; i10 != length; i10++) {
            eVarArr[i10] = new e(this.f98236a, v10[i10]);
        }
        return eVarArr;
    }

    public C15432h e() {
        return this.f98237b;
    }

    public C14450c(C15432h c15432h, o oVar) {
        this.f98236a = oVar;
        this.f98237b = c15432h;
    }
}
