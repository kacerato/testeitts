package com.android.tools.r8.kotlin;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4403d1;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.AbstractC9668tv;
import com.android.tools.r8.internal.BQ;
import com.android.tools.r8.internal.C10420yQ;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C5480Ky;
import com.android.tools.r8.internal.C6190Xe0;
import com.android.tools.r8.internal.C7698i5;
import com.android.tools.r8.internal.C8584nQ;
import com.android.tools.r8.internal.C9577tM;
import com.android.tools.r8.internal.CQ;
import com.android.tools.r8.internal.FQ;
import com.android.tools.r8.internal.GJ;
import com.android.tools.r8.internal.WB;
import com.android.tools.r8.internal.XY;
import com.android.tools.r8.internal.Y6;
import com.android.tools.r8.shaking.InterfaceC11195f0;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;

public final class C10842q0 implements InterfaceC11195f0 {

    public static final C6190Xe0 f55438d;

    public static final C6190Xe0 f55439e;

    public final BQ f55440a;

    public final AbstractC7552hC f55441b;

    public final AbstractC7552hC f55442c;

    static {
        int i10 = AbstractC7552hC.f48487c;
        C6190Xe0 c6190Xe0 = C6190Xe0.f45779e;
        f55438d = c6190Xe0;
        f55439e = c6190Xe0;
    }

    public C10842q0(BQ bq, AbstractC7552hC abstractC7552hC, AbstractC7552hC abstractC7552hC2) {
        this.f55440a = bq;
        this.f55441b = abstractC7552hC;
        this.f55442c = abstractC7552hC2;
    }

    public static AbstractC7552hC a(List list, C4724u1 c4724u1, C5094Ef0 c5094Ef0) {
        AbstractC7552hC b10;
        if (list.isEmpty()) {
            return f55438d;
        }
        int i10 = AbstractC7552hC.f48487c;
        Object[] objArr = new Object[4];
        Iterator it = list.iterator();
        int i11 = 0;
        while (it.hasNext()) {
            BQ bq = (BQ) it.next();
            List<C10420yQ> c10 = bq.c();
            if (c10.isEmpty()) {
                b10 = f55439e;
            } else {
                int i12 = AbstractC7552hC.f48487c;
                Object[] objArr2 = new Object[4];
                Iterator<C10420yQ> it2 = c10.iterator();
                int i13 = 0;
                while (it2.hasNext()) {
                    C10836p0 a10 = C10836p0.a(c4724u1, c5094Ef0, it2.next());
                    a10.getClass();
                    int i14 = i13 + 1;
                    if (objArr2.length < i14) {
                        objArr2 = Arrays.copyOf(objArr2, WB.a(objArr2.length, i14));
                    }
                    objArr2[i13] = a10;
                    i13 = i14;
                }
                b10 = AbstractC7552hC.b(i13, objArr2);
            }
            C8584nQ c8584nQ = C9577tM.f52588b;
            GJ.c(c8584nQ, "type");
            C10842q0 c10842q0 = new C10842q0(bq, b10, C10823n.a(((C9577tM) ((CQ) AbstractC9668tv.a(bq.f38900f, c8584nQ))).f52589a, c4724u1));
            int i15 = i11 + 1;
            if (objArr.length < i15) {
                objArr = Arrays.copyOf(objArr, WB.a(objArr.length, i15));
            }
            objArr[i11] = c10842q0;
            i11 = i15;
        }
        return AbstractC7552hC.b(i11, objArr);
    }

    public final boolean b(Consumer consumer, C4798y c4798y) {
        String b10 = this.f55440a.b();
        int a10 = this.f55440a.a();
        FQ d10 = this.f55440a.d();
        GJ.c(b10, "name");
        GJ.c(d10, "variance");
        BQ bq = new BQ(0, b10, a10, d10);
        consumer.accept(bq);
        BQ bq2 = this.f55440a;
        XY[] xyArr = C7698i5.f48805a;
        Y6 y62 = C7698i5.f48803Y;
        y62.a(bq, xyArr[49], y62.a(bq2, xyArr[49]));
        boolean a11 = AbstractC10752b0.a(c4798y, this.f55441b, bq.c(), new K0());
        AbstractC7552hC abstractC7552hC = this.f55442c;
        C8584nQ c8584nQ = C9577tM.f52588b;
        GJ.c(c8584nQ, "type");
        return a11 | AbstractC10752b0.a(c4798y, abstractC7552hC, ((C9577tM) ((CQ) AbstractC9668tv.a(bq.f38900f, c8584nQ))).f52589a, new y4());
    }

    public static Consumer a(C10836p0 c10836p0) {
        Objects.requireNonNull(c10836p0);
        return new C10753b1(c10836p0);
    }

    @Override
    public final void a(InterfaceC4403d1 interfaceC4403d1) {
        C5480Ky.a((Iterable) this.f55441b, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C10842q0.a((C10836p0) obj);
            }
        }, (Object) interfaceC4403d1);
        C5480Ky.a((Iterable) this.f55442c, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C10842q0.a((C10823n) obj);
            }
        }, (Object) interfaceC4403d1);
    }

    public static Consumer a(C10823n c10823n) {
        Objects.requireNonNull(c10823n);
        return new z4(c10823n);
    }
}
