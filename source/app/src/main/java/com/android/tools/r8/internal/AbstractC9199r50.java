package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public abstract class AbstractC9199r50 {

    public static final boolean f51963a = true;

    public static boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.shaking.I1 a10 = c4798y.a(h52);
        C8570nJ E10 = c4798y.E();
        if (!a10.i(E10)) {
            return false;
        }
        com.android.tools.r8.shaking.I1 a11 = c4798y.a(h52);
        if (a11.g(E10) && a11.c(E10) && a11.e(E10) && a11.f56566y) {
            return h52.d().k1().a();
        }
        return false;
    }

    public static boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, int i10) {
        if (!f51963a && !a(c4798y, h52)) {
            throw new AssertionError();
        }
        if (i10 != 0) {
            return true;
        }
        if (h52.d().j1()) {
            return false;
        }
        if (h52.d().w0()) {
            return true;
        }
        if (h52.getAccessFlags().L()) {
            return false;
        }
        com.android.tools.r8.shaking.I1 a10 = c4798y.a(h52);
        C8570nJ E10 = c4798y.E();
        return a10.g(E10) && a10.c(E10) && a10.e(E10) && E10.c().f50745c && a10.f56559r;
    }
}
