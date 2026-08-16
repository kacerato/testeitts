package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.AbstractC10561zE;
import com.android.tools.r8.internal.AbstractC6483ap0;
import com.android.tools.r8.internal.C10231xF0;
import com.android.tools.r8.internal.C10340xw0;
import com.android.tools.r8.internal.C4;
import com.android.tools.r8.internal.C6382aB;
import com.android.tools.r8.internal.C6399aH;
import com.android.tools.r8.internal.C6899dH;
import com.android.tools.r8.internal.C7215fB;
import com.android.tools.r8.internal.C7549hB;
import com.android.tools.r8.internal.C7561hF;
import com.android.tools.r8.internal.C8331lu0;
import com.android.tools.r8.internal.RG;
import com.android.tools.r8.internal.WG;

public class C10732x {

    public static final boolean f54957b = true;

    public final C4798y f54958a;

    public C10732x(C4798y c4798y) {
        this.f54958a = c4798y;
    }

    public static void a(C4798y<?> c4798y, C7215fB c7215fB) {
        C10696a c10696a = new C10696a();
        C7549hB p10 = c7215fB.p();
        boolean z10 = false;
        while (p10.hasNext()) {
            AbstractC10561zE next = p10.next();
            next.getClass();
            if (next instanceof C4) {
                C4 B10 = next.B();
                C10340xw0 v22 = B10.v2();
                C10340xw0 d10 = B10.d();
                c10696a.f54829b.addAll(d10.a());
                z10 |= d10.V() > 0;
                d10.f(v22);
                p10.remove();
            }
        }
        if (z10) {
            c7215fB.a((C6382aB) null, c10696a);
        }
        if (!c10696a.f54829b.isEmpty()) {
            new C8331lu0(c4798y, c7215fB, false).a(c10696a, 2);
        }
        c7215fB.x();
        boolean z11 = f54957b;
        if (!z11 && !AbstractC6483ap0.a(c7215fB.q()).noneMatch(new C10231xF0())) {
            throw new AssertionError();
        }
        if (!z11 && !c7215fB.b(c4798y)) {
            throw new AssertionError();
        }
    }

    public static void a(C7561hF c7561hF, C6899dH c6899dH) {
        if (c7561hF.isEmpty()) {
            return;
        }
        C6899dH c6899dH2 = new C6899dH(c6899dH.size());
        c6899dH2.putAll(c6899dH);
        c6899dH.clear();
        WG wg2 = new WG(((C6399aH) c6899dH2.c()).f46484b);
        while (wg2.hasNext()) {
            RG rg2 = (RG) wg2.next();
            int a10 = rg2.a();
            c6899dH.a(((Integer) c7561hF.getOrDefault(Integer.valueOf(a10), Integer.valueOf(a10))).intValue(), (C4515j0) rg2.getValue());
        }
    }
}
