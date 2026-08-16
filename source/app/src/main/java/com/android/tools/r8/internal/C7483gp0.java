package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;

public final class C7483gp0 implements InterfaceC7982jp0 {

    public static final boolean f48364b = true;

    public final String f48365a;

    public C7483gp0(String str) {
        this.f48365a = str;
    }

    @Override
    public final void a(C4798y c4798y, C7215fB c7215fB, C7549hB c7549hB, AbstractC10561zE abstractC10561zE, C10696a c10696a, C5752Pp0 c5752Pp0) {
        if (!f48364b && !c5752Pp0.a(abstractC10561zE, abstractC10561zE.W0())) {
            throw new AssertionError();
        }
        c7549hB.a((C4798y<?>) c4798y, c7215fB, c4798y.b().b(this.f48365a), c10696a);
    }
}
