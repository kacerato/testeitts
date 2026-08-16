package com.android.tools.r8.kotlin;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4403d1;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C10420yQ;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C5480Ky;
import com.android.tools.r8.internal.C6190Xe0;
import com.android.tools.r8.internal.C6917dQ;
import com.android.tools.r8.internal.C7698i5;
import com.android.tools.r8.internal.C7916jQ;
import com.android.tools.r8.internal.WB;
import com.android.tools.r8.internal.XY;
import com.android.tools.r8.internal.Y6;
import com.android.tools.r8.shaking.InterfaceC11195f0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;

public final class D implements InterfaceC11195f0 {

    public static final C6190Xe0 f55027e;

    public static final D f55028f;

    public final C7916jQ f55029a;

    public final C10836p0 f55030b;

    public final AbstractC7552hC f55031c;

    public final AbstractC7552hC f55032d;

    static {
        int i10 = AbstractC7552hC.f48487c;
        C6190Xe0 c6190Xe0 = C6190Xe0.f45779e;
        f55027e = c6190Xe0;
        f55028f = new D(new C7916jQ(), null, c6190Xe0, c6190Xe0);
    }

    public D(C7916jQ c7916jQ, C10836p0 c10836p0, AbstractC7552hC abstractC7552hC, AbstractC7552hC abstractC7552hC2) {
        this.f55029a = c7916jQ;
        this.f55030b = c10836p0;
        this.f55031c = abstractC7552hC;
        this.f55032d = abstractC7552hC2;
    }

    public static D a(C7916jQ c7916jQ, C4724u1 c4724u1, C5094Ef0 c5094Ef0) {
        if (c7916jQ == null) {
            return f55028f;
        }
        return new D(c7916jQ, C10836p0.a(c4724u1, c5094Ef0, c7916jQ.f49231d), a(c7916jQ.f49232e, c4724u1, c5094Ef0), a(c7916jQ.f49233f, c4724u1, c5094Ef0));
    }

    public static Consumer b(D d10) {
        Objects.requireNonNull(d10);
        return new I0(d10);
    }

    public final boolean b(Consumer consumer, C4798y c4798y) {
        if (this == f55028f) {
            return false;
        }
        final C7916jQ c7916jQ = new C7916jQ();
        consumer.accept(c7916jQ);
        C7916jQ c7916jQ2 = this.f55029a;
        XY[] xyArr = C7698i5.f48805a;
        Y6 y62 = C7698i5.f48812d0;
        y62.a(c7916jQ, xyArr[54], y62.a(c7916jQ2, xyArr[54]));
        Y6 y63 = C7698i5.f48814e0;
        y63.a(c7916jQ, xyArr[55], y63.a(c7916jQ2, xyArr[55]));
        C7916jQ c7916jQ3 = this.f55029a;
        c7916jQ.f49229b = c7916jQ3.f49229b;
        C6917dQ c6917dQ = c7916jQ3.f49230c;
        if (c6917dQ != null) {
            c7916jQ.f49230c = c6917dQ;
        }
        return AbstractC10752b0.a(c4798y, this.f55030b, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C7916jQ.this.a((C10420yQ) obj);
            }
        }, new K0()) | AbstractC10752b0.a(c4798y, this.f55031c, c7916jQ.f49232e, new L0()) | AbstractC10752b0.a(c4798y, this.f55032d, c7916jQ.f49233f, new L0());
    }

    public static AbstractC7552hC a(ArrayList arrayList, C4724u1 c4724u1, C5094Ef0 c5094Ef0) {
        if (arrayList.isEmpty()) {
            return f55027e;
        }
        int i10 = AbstractC7552hC.f48487c;
        Object[] objArr = new Object[4];
        Iterator it = arrayList.iterator();
        int i11 = 0;
        while (it.hasNext()) {
            D a10 = a((C7916jQ) it.next(), c4724u1, c5094Ef0);
            a10.getClass();
            int i12 = i11 + 1;
            if (objArr.length < i12) {
                objArr = Arrays.copyOf(objArr, WB.a(objArr.length, i12));
            }
            objArr[i11] = a10;
            i11 = i12;
        }
        return AbstractC7552hC.b(i11, objArr);
    }

    @Override
    public final void a(InterfaceC4403d1 interfaceC4403d1) {
        if (this == f55028f) {
            return;
        }
        C10836p0 c10836p0 = this.f55030b;
        if (c10836p0 != null) {
            c10836p0.a(interfaceC4403d1);
        }
        C5480Ky.a((Iterable) this.f55031c, new Function() {
            @Override
            public final Object apply(Object obj) {
                return D.a((D) obj);
            }
        }, (Object) interfaceC4403d1);
        C5480Ky.a((Iterable) this.f55032d, new Function() {
            @Override
            public final Object apply(Object obj) {
                return D.b((D) obj);
            }
        }, (Object) interfaceC4403d1);
    }

    public static Consumer a(D d10) {
        Objects.requireNonNull(d10);
        return new I0(d10);
    }
}
