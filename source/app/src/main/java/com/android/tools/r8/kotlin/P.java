package com.android.tools.r8.kotlin;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4403d1;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C5480Ky;
import com.android.tools.r8.internal.C6190Xe0;
import com.android.tools.r8.internal.C9919vQ;
import com.android.tools.r8.internal.InterfaceC7495gt0;
import com.android.tools.r8.internal.WB;
import com.android.tools.r8.shaking.InterfaceC11195f0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;

public final class P implements InterfaceC11195f0 {

    public static final P f55140b;

    public static final boolean f55141c = true;

    public final AbstractC7552hC f55142a;

    static {
        int i10 = AbstractC7552hC.f48487c;
        f55140b = new P(C6190Xe0.f45779e);
    }

    public P(AbstractC7552hC abstractC7552hC) {
        this.f55142a = abstractC7552hC;
    }

    public static P a(ArrayList arrayList, C4724u1 c4724u1, C5094Ef0 c5094Ef0) {
        if (arrayList != null && arrayList.size() != 0) {
            int i10 = AbstractC7552hC.f48487c;
            Object[] objArr = new Object[4];
            Iterator it = arrayList.iterator();
            int i11 = 0;
            while (it.hasNext()) {
                C10745a a10 = C10745a.a((C9919vQ) it.next(), c4724u1, c5094Ef0);
                boolean z10 = f55141c;
                if (!z10 && a10.f55243f != null) {
                    throw new AssertionError();
                }
                if (!z10 && a10.f55244g != null) {
                    throw new AssertionError();
                }
                if (!z10 && a10.f55245h != null) {
                    throw new AssertionError();
                }
                int i12 = i11 + 1;
                if (objArr.length < i12) {
                    objArr = Arrays.copyOf(objArr, WB.a(objArr.length, i12));
                }
                objArr[i11] = a10;
                i11 = i12;
            }
            return new P(AbstractC7552hC.b(i11, objArr));
        }
        return f55140b;
    }

    public final boolean b(Consumer consumer, C4798y c4798y) {
        return AbstractC10752b0.a(c4798y, (List) this.f55142a, consumer, (InterfaceC7495gt0) new E0());
    }

    public static Consumer a(InterfaceC10788h0 interfaceC10788h0) {
        Objects.requireNonNull(interfaceC10788h0);
        return new C10888z0(interfaceC10788h0);
    }

    @Override
    public final void a(InterfaceC4403d1 interfaceC4403d1) {
        C5480Ky.a((Iterable) this.f55142a, new Function() {
            @Override
            public final Object apply(Object obj) {
                return P.a((InterfaceC10788h0) obj);
            }
        }, (Object) interfaceC4403d1);
    }
}
