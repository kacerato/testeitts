package oi;

import th.C;

public class C14559e {

    public final wh.e[] f99011a;

    public C14559e(wh.d dVar) {
        this.f99011a = dVar.v();
    }

    public static C14559e a(C c10) {
        if (c(c10.x())) {
            return new C14559e(wh.d.u(c10.v()));
        }
        throw new IllegalArgumentException("content of PKIBody wrong type: " + c10.x());
    }

    public static boolean c(int i10) {
        return i10 == 0 || i10 == 2 || i10 == 7 || i10 == 9 || i10 == 13;
    }

    public C14561g[] b() {
        int length = this.f99011a.length;
        C14561g[] c14561gArr = new C14561g[length];
        for (int i10 = 0; i10 != length; i10++) {
            c14561gArr[i10] = new C14561g(this.f99011a[i10]);
        }
        return c14561gArr;
    }

    public wh.d d() {
        return new wh.d(this.f99011a);
    }
}
