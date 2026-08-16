package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.function.Predicate;

public interface InterfaceC7982jp0 {
    void a(C4798y c4798y, C7215fB c7215fB, C7549hB c7549hB, AbstractC10561zE abstractC10561zE, C10696a c10696a, C5752Pp0 c5752Pp0);

    default boolean a() {
        return false;
    }

    default boolean b() {
        return false;
    }

    default C7316fp0 c() {
        return null;
    }

    static C10340xw0 a(C4798y c4798y, C7215fB c7215fB, C7549hB c7549hB, AbstractC10561zE abstractC10561zE, String str) {
        if (!abstractC10561zE.b().z()) {
            return c7549hB.a((C4798y<?>) c4798y, c7215fB, c4798y.b().b(str));
        }
        Y5 I10 = c7215fB.k().I();
        while (true) {
            if (!I10.hasNext()) {
                break;
            }
            if (!I10.next().k1()) {
                I10.previous();
                break;
            }
        }
        return I10.a((C4798y<?>) c4798y, c7215fB, c4798y.b().b(str));
    }

    static void a(C7549hB c7549hB, AbstractC10561zE abstractC10561zE, C10696a c10696a, final C5752Pp0 c5752Pp0) {
        if (!AbstractC6650bp0.f46872a && !c5752Pp0.a(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return InterfaceC7982jp0.a(InterfaceC5810Qp0.this, (C10340xw0) obj);
            }
        }, abstractC10561zE)) {
            throw new AssertionError();
        }
        if (c5752Pp0.b(abstractC10561zE) && abstractC10561zE.e1()) {
            abstractC10561zE.d().a(abstractC10561zE.W0(), c10696a);
        }
        c7549hB.i();
    }

    static boolean a(InterfaceC5810Qp0 interfaceC5810Qp0, C10340xw0 c10340xw0) {
        if (!c10340xw0.u().s()) {
            return false;
        }
        com.android.tools.r8.graph.M2 E10 = c10340xw0.u().b().E();
        C4724u1 c4724u1 = ((C5752Pp0) interfaceC5810Qp0).f43386a;
        return E10 == c4724u1.f37857F2 || E10 == c4724u1.f37864G2;
    }
}
