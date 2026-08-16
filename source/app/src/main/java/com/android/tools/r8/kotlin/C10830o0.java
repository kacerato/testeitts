package com.android.tools.r8.kotlin;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4403d1;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C10420yQ;
import com.android.tools.r8.internal.C10587zQ;
import com.android.tools.r8.internal.C5480Ky;
import com.android.tools.r8.internal.C7698i5;
import com.android.tools.r8.internal.C8998pu;
import com.android.tools.r8.internal.EnumC4899Ax0;
import com.android.tools.r8.internal.GJ;
import com.android.tools.r8.internal.XY;
import com.android.tools.r8.internal.Y6;
import com.android.tools.r8.shaking.InterfaceC11195f0;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;

public final class C10830o0 implements InterfaceC11195f0 {

    public static final boolean f55412f = true;

    public final C10587zQ f55413a;

    public final C10836p0 f55414b;

    public final C10836p0 f55415c;

    public final AbstractC7552hC f55416d;

    public final AbstractC7552hC f55417e;

    public C10830o0(C10587zQ c10587zQ, C10836p0 c10836p0, C10836p0 c10836p02, AbstractC7552hC abstractC7552hC, AbstractC7552hC abstractC7552hC2) {
        this.f55413a = c10587zQ;
        boolean z10 = f55412f;
        if (!z10 && c10836p0 == null) {
            throw new AssertionError();
        }
        if (!z10 && c10836p02 == null) {
            throw new AssertionError();
        }
        this.f55414b = c10836p0;
        this.f55415c = c10836p02;
        this.f55416d = abstractC7552hC;
        this.f55417e = abstractC7552hC2;
    }

    @Override
    public final void a(InterfaceC4403d1 interfaceC4403d1) {
        this.f55414b.a(interfaceC4403d1);
        this.f55415c.a(interfaceC4403d1);
        C5480Ky.a((Iterable) this.f55416d, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C10830o0.a((C10842q0) obj);
            }
        }, (Object) interfaceC4403d1);
        C5480Ky.a((Iterable) this.f55417e, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C10830o0.a((C10823n) obj);
            }
        }, (Object) interfaceC4403d1);
    }

    public final boolean b(Consumer consumer, C4798y c4798y) {
        String b10 = this.f55413a.b();
        GJ.c(b10, "name");
        final C10587zQ c10587zQ = new C10587zQ(0, b10);
        consumer.accept(c10587zQ);
        C10587zQ c10587zQ2 = this.f55413a;
        XY[] xyArr = C7698i5.f48805a;
        Y6 y62 = C7698i5.f48817h;
        y62.a(c10587zQ, xyArr[6], y62.a(c10587zQ2, xyArr[6]));
        C8998pu c8998pu = C7698i5.f48804Z;
        EnumC4899Ax0 enumC4899Ax0 = (EnumC4899Ax0) c8998pu.a(c10587zQ2, xyArr[50]);
        GJ.c(enumC4899Ax0, "<set-?>");
        c8998pu.a(c10587zQ, xyArr[50], enumC4899Ax0);
        boolean b11 = this.f55414b.b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10587zQ.this.b((C10420yQ) obj);
            }
        }, c4798y) | this.f55415c.b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10587zQ.this.a((C10420yQ) obj);
            }
        }, c4798y) | AbstractC10752b0.a(c4798y, this.f55416d, c10587zQ.c(), new C10771e1()) | AbstractC10752b0.a(c4798y, this.f55417e, c10587zQ.a(), new y4());
        c10587zQ.f54380g.addAll(this.f55413a.f54380g);
        return b11;
    }

    public static Consumer a(C10842q0 c10842q0) {
        Objects.requireNonNull(c10842q0);
        return new X0(c10842q0);
    }

    public static Consumer a(C10823n c10823n) {
        Objects.requireNonNull(c10823n);
        return new z4(c10823n);
    }
}
