package com.android.tools.r8.kotlin;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4403d1;
import com.android.tools.r8.internal.AL;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C5480Ky;
import com.android.tools.r8.internal.C6417aQ;
import com.android.tools.r8.internal.C7083eQ;
import com.android.tools.r8.internal.C7698i5;
import com.android.tools.r8.internal.C8998pu;
import com.android.tools.r8.internal.EnumC4899Ax0;
import com.android.tools.r8.internal.GJ;
import com.android.tools.r8.internal.OL;
import com.android.tools.r8.internal.XY;
import com.android.tools.r8.internal.Y6;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;

public final class C10887z implements InterfaceC10764d0 {

    public final C7083eQ f55519a;

    public final AbstractC7552hC f55520b;

    public final N f55521c;

    public C10887z(C7083eQ c7083eQ, AbstractC7552hC abstractC7552hC, N n10) {
        this.f55519a = c7083eQ;
        this.f55520b = abstractC7552hC;
        this.f55521c = n10;
    }

    public static void a(C7083eQ c7083eQ, OL ol2) {
        GJ.c(c7083eQ, "<this>");
        AL.a(c7083eQ).f54358a = ol2;
    }

    @Override
    public final C10887z h() {
        return this;
    }

    @Override
    public final boolean p() {
        return true;
    }

    public final boolean a(C6417aQ c6417aQ, C4516j1 c4516j1, C4798y c4798y) {
        final C7083eQ c7083eQ = new C7083eQ(0);
        C7083eQ c7083eQ2 = this.f55519a;
        XY[] xyArr = C7698i5.f48805a;
        Y6 y62 = C7698i5.f48809c;
        y62.a(c7083eQ, xyArr[1], y62.a(c7083eQ2, xyArr[1]));
        C8998pu c8998pu = C7698i5.f48828s;
        EnumC4899Ax0 enumC4899Ax0 = (EnumC4899Ax0) c8998pu.a(c7083eQ2, xyArr[17]);
        GJ.c(enumC4899Ax0, "<set-?>");
        c8998pu.a(c7083eQ, xyArr[17], enumC4899Ax0);
        Y6 y63 = C7698i5.f48829t;
        y63.a(c7083eQ, xyArr[18], y63.a(c7083eQ2, xyArr[18]));
        Y6 y64 = C7698i5.f48830u;
        y64.a(c7083eQ, xyArr[19], y64.a(c7083eQ2, xyArr[19]));
        N n10 = this.f55521c;
        boolean a10 = AbstractC10752b0.a(c4798y, this.f55520b, c7083eQ.a(), new C10765d1()) | (n10 != null ? n10.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10887z.a(C7083eQ.this, (OL) obj);
            }
        }, c4516j1, c4798y) : false);
        c7083eQ.f47676c.addAll(this.f55519a.f47676c);
        c6417aQ.e().add(c7083eQ);
        return a10;
    }

    public static Consumer a(C10858t0 c10858t0) {
        Objects.requireNonNull(c10858t0);
        return new W0(c10858t0);
    }

    @Override
    public final void a(InterfaceC4403d1 interfaceC4403d1) {
        C5480Ky.a((Iterable) this.f55520b, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C10887z.a((C10858t0) obj);
            }
        }, (Object) interfaceC4403d1);
        N n10 = this.f55521c;
        if (n10 != null) {
            n10.a(interfaceC4403d1);
        }
    }
}
