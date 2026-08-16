package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.C10340xw0;
import com.android.tools.r8.internal.C4;
import com.android.tools.r8.internal.C7215fB;
import com.android.tools.r8.internal.Y5;
import java.util.Set;
import java.util.function.Consumer;

public final class r {

    public static final boolean f54919d = true;

    public final C4798y f54920a;

    public final C7215fB f54921b;

    public final Set f54922c = AbstractC5513Ll0.c();

    public r(C4798y c4798y, C7215fB c7215fB) {
        this.f54920a = c4798y;
        this.f54921b = c7215fB;
    }

    public static void a(C4 c42, Y5 y52, Set set, Consumer consumer) {
        C10340xw0 v22 = c42.v2();
        C10340xw0 d10 = c42.d();
        if (d10 == null) {
            return;
        }
        if (!d10.u().equals(v22.u())) {
            set.addAll(d10.a());
        }
        d10.f(v22);
        consumer.accept(c42);
        y52.i();
    }
}
