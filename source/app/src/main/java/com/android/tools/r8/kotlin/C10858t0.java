package com.android.tools.r8.kotlin;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4403d1;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C10420yQ;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C6190Xe0;
import com.android.tools.r8.internal.C7698i5;
import com.android.tools.r8.internal.EQ;
import com.android.tools.r8.internal.GJ;
import com.android.tools.r8.internal.WB;
import com.android.tools.r8.internal.XY;
import com.android.tools.r8.internal.Y6;
import com.android.tools.r8.shaking.InterfaceC11195f0;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;

public final class C10858t0 implements InterfaceC11195f0 {

    public static final C6190Xe0 f55467d;

    public final EQ f55468a;

    public final C10836p0 f55469b;

    public final C10836p0 f55470c;

    static {
        int i10 = AbstractC7552hC.f48487c;
        f55467d = C6190Xe0.f45779e;
    }

    public C10858t0(EQ eq, C10836p0 c10836p0, C10836p0 c10836p02) {
        this.f55468a = eq;
        this.f55469b = c10836p0;
        this.f55470c = c10836p02;
    }

    public static AbstractC7552hC a(List list, C4724u1 c4724u1, C5094Ef0 c5094Ef0) {
        if (list.isEmpty()) {
            return f55467d;
        }
        int i10 = AbstractC7552hC.f48487c;
        Object[] objArr = new Object[4];
        Iterator it = list.iterator();
        int i11 = 0;
        while (it.hasNext()) {
            EQ eq = (EQ) it.next();
            C10858t0 c10858t0 = eq == null ? null : new C10858t0(eq, C10836p0.a(c4724u1, c5094Ef0, eq.a()), C10836p0.a(c4724u1, c5094Ef0, eq.b()));
            c10858t0.getClass();
            int i12 = i11 + 1;
            if (objArr.length < i12) {
                objArr = Arrays.copyOf(objArr, WB.a(objArr.length, i12));
            }
            objArr[i11] = c10858t0;
            i11 = i12;
        }
        return AbstractC7552hC.b(i11, objArr);
    }

    public final boolean b(Consumer consumer, C4798y c4798y) {
        String str = this.f55468a.f39850b;
        GJ.c(str, "name");
        final EQ eq = new EQ(0, str);
        consumer.accept(eq);
        EQ eq2 = this.f55468a;
        XY[] xyArr = C7698i5.f48805a;
        GJ.c(eq2, "<this>");
        Y6 y62 = C7698i5.f48816g;
        y62.a(eq, xyArr[5], y62.a(eq2, xyArr[5]));
        C7698i5.f48806a0.a(eq, xyArr[51], C7698i5.a(eq2));
        Y6 y63 = C7698i5.f48808b0;
        y63.a(eq, xyArr[52], y63.a(eq2, xyArr[52]));
        Y6 y64 = C7698i5.f48810c0;
        y64.a(eq, xyArr[53], y64.a(eq2, xyArr[53]));
        return this.f55469b.b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                EQ.this.a((C10420yQ) obj);
            }
        }, c4798y) | AbstractC10752b0.a(c4798y, this.f55470c, new Consumer() {
            @Override
            public final void accept(Object obj) {
                EQ.this.b((C10420yQ) obj);
            }
        }, new K0());
    }

    @Override
    public final void a(InterfaceC4403d1 interfaceC4403d1) {
        this.f55469b.a(interfaceC4403d1);
        C10836p0 c10836p0 = this.f55470c;
        if (c10836p0 != null) {
            c10836p0.a(interfaceC4403d1);
        }
    }
}
