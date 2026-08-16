package com.android.tools.r8.graph;

import com.android.tools.r8.graph.O0;
import com.android.tools.r8.internal.A30;
import com.android.tools.r8.internal.B60;
import com.android.tools.r8.internal.C10371y60;
import com.android.tools.r8.internal.C7215fB;
import com.android.tools.r8.internal.C8564nG;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8898pG;
import com.android.tools.r8.internal.C9065qG;
import com.android.tools.r8.internal.DG;
import com.android.tools.r8.internal.RG;
import com.android.tools.r8.internal.SG;
import java.util.ArrayList;
import java.util.List;

public class U0 {

    public static final boolean f36842o = true;

    public final C4516j1 f36843a;

    public final C4724u1 f36844b;

    public final C8570nJ f36845c;

    public ArrayList f36846d;

    public com.android.tools.r8.internal.Q f36847e;

    public B60 f36849g;

    public com.android.tools.r8.internal.Q f36853k;

    public final boolean f36854l;

    public com.android.tools.r8.internal.Q f36848f = null;

    public boolean f36850h = false;

    public int f36851i = -1;

    public B60 f36852j = B60.s();

    public final ArrayList f36855m = new ArrayList();

    public int f36856n = -1;

    public U0(C4798y c4798y, C7215fB c7215fB) {
        boolean z10 = false;
        this.f36843a = c7215fB.j().d();
        this.f36844b = c4798y.b();
        C8570nJ E10 = c4798y.E();
        this.f36845c = E10;
        if (E10.X().f50783a && c4798y.f().a().g() != null) {
            z10 = true;
        }
        this.f36854l = z10;
    }

    public static void a(int i10, B60 b60, int i11, B60 b602, List<O0> list, C4724u1 c4724u1, boolean z10) {
        boolean z11 = f36842o;
        if (!z11 && i10 < 0) {
            throw new AssertionError();
        }
        int i12 = i11 - i10;
        if (!z11 && b60.o() && !b602.o()) {
            throw new AssertionError();
        }
        if (!z11 && !b602.o() && b602.f() < 0) {
            throw new AssertionError();
        }
        boolean z12 = false;
        int f10 = b602.o() ? 0 : b602.f() - b60.f();
        if (!z11 && i12 < 0) {
            throw new AssertionError();
        }
        if (b602.e() != b60.e()) {
            list.add(c4724u1.a(b602.e()));
        }
        if (!z11 && !b602.k() && !b60.k() && b602.f38808c != b60.f38808c && !z10) {
            throw new AssertionError();
        }
        boolean z13 = (b602.f38809d == b60.f38809d && b602.f38808c == b60.f38808c) ? false : true;
        boolean p10 = b602.p();
        boolean z14 = b602 instanceof C10371y60;
        boolean z15 = (!z14 || b602.i() == null || b602.j().f38588b.length == 0) ? false : true;
        if ((b60 instanceof C10371y60) && !z14) {
            z12 = true;
        }
        if (z13 || p10 || z15 || z12) {
            list.add(c4724u1.a(b602));
        }
        a(f10, i12, list, c4724u1);
    }

    public static void a(int i10, int i11, List list, C4724u1 c4724u1) {
        if (i10 < -4 || i10 + 4 >= 15) {
            list.add(c4724u1.a(i10));
            i10 = 0;
        }
        boolean z10 = O0.b.f36664e;
        int i12 = i10 + 14;
        int i13 = (i11 * 15) + i12;
        if (i13 > 255) {
            list.add(c4724u1.b(i11));
        } else {
            i12 = i13;
        }
        boolean z11 = f36842o;
        if (!z11 && i12 < 10) {
            throw new AssertionError();
        }
        if (!z11 && i12 > 255) {
            throw new AssertionError();
        }
        list.add(c4724u1.c(i12));
    }

    public static void a(SG sg2, SG sg3, SG sg4, ArrayList arrayList, C4724u1 c4724u1) {
        int i10 = C4515j0.f37306e;
        DG dg2 = new DG();
        A30 it = sg2.c().iterator();
        while (it.hasNext()) {
            RG rg2 = (RG) it.next();
            int a10 = rg2.a();
            C4515j0 c4515j0 = (C4515j0) rg2.getValue();
            if (sg3.get(a10) != c4515j0) {
                dg2.a(a10, c4515j0);
            }
        }
        DG dg3 = new DG();
        A30 it2 = sg3.c().iterator();
        while (it2.hasNext()) {
            RG rg3 = (RG) it2.next();
            int a11 = rg3.a();
            Object obj = (C4515j0) rg3.getValue();
            if (sg2.get(a11) != obj) {
                dg3.a(a11, obj);
            }
        }
        if (!f36842o && dg2.isEmpty() && dg3.isEmpty()) {
            throw new AssertionError();
        }
        C9065qG c9065qG = new C9065qG(((C8564nG) dg2.c()).f50573c);
        while (c9065qG.hasNext()) {
            int a12 = c9065qG.a().a();
            if (!dg3.a(a12)) {
                sg2.remove(a12);
                arrayList.add(c4724u1.d(a12));
            }
        }
        C9065qG c9065qG2 = new C9065qG(((C8564nG) dg3.c()).f50573c);
        while (c9065qG2.hasNext()) {
            C8898pG a13 = c9065qG2.a();
            int a14 = a13.a();
            C4515j0 c4515j02 = (C4515j0) a13.getValue();
            sg2.a(a14, c4515j02);
            if (sg4.get(a14) == c4515j02) {
                arrayList.add(c4724u1.e(a14));
            } else {
                arrayList.add(new O0.d(a14, c4515j02.f37307b, c4515j02.f37308c, c4515j02.f37309d));
                sg4.a(a14, c4515j02);
            }
        }
    }
}
