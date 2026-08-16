package com.android.tools.r8.kotlin;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4403d1;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C6190Xe0;
import com.android.tools.r8.internal.JP;
import com.android.tools.r8.internal.WB;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;

public final class C10793i extends AbstractC10817m {

    public static final C10793i f55334c;

    public final AbstractC7552hC f55335b;

    static {
        int i10 = AbstractC7552hC.f48487c;
        f55334c = new C10793i(C6190Xe0.f45779e);
    }

    public C10793i(AbstractC7552hC abstractC7552hC) {
        this.f55335b = abstractC7552hC;
    }

    public static C10793i a(JP.a aVar, C4724u1 c4724u1) {
        if (aVar.a().isEmpty()) {
            return f55334c;
        }
        int i10 = AbstractC7552hC.f48487c;
        Object[] objArr = new Object[4];
        Iterator<JP> it = aVar.a().iterator();
        int i11 = 0;
        while (it.hasNext()) {
            AbstractC10817m a10 = AbstractC10817m.a(it.next(), c4724u1);
            a10.getClass();
            int i12 = i11 + 1;
            if (objArr.length < i12) {
                objArr = Arrays.copyOf(objArr, WB.a(objArr.length, i12));
            }
            objArr[i11] = a10;
            i11 = i12;
        }
        return new C10793i(AbstractC7552hC.b(i11, objArr));
    }

    @Override
    public final boolean b(Consumer consumer, C4798y c4798y) {
        final ArrayList arrayList = new ArrayList();
        Iterator it = this.f55335b.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            z10 |= ((AbstractC10817m) it.next()).b(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C10793i.a(List.this, (JP) obj);
                }
            }, c4798y);
        }
        consumer.accept(new JP.a(arrayList));
        return z10;
    }

    @Override
    public final void a(InterfaceC4403d1 interfaceC4403d1) {
        Iterator it = this.f55335b.iterator();
        while (it.hasNext()) {
            ((AbstractC10817m) it.next()).a(interfaceC4403d1);
        }
    }

    public static void a(List list, JP jp2) {
        if (jp2 != null) {
            list.add(jp2);
        }
    }
}
