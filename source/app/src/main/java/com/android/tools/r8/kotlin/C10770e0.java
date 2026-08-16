package com.android.tools.r8.kotlin;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4403d1;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C5480Ky;
import com.android.tools.r8.internal.C8699o50;
import com.android.tools.r8.internal.ML;
import com.android.tools.r8.internal.NQ;
import com.android.tools.r8.internal.WB;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;

public final class C10770e0 implements InterfaceC10835p {

    public final NQ.c f55287a;

    public final AbstractC7552hC f55288b;

    public final String f55289c;

    public C10770e0(NQ.c cVar, AbstractC7552hC abstractC7552hC, String str) {
        this.f55287a = cVar;
        this.f55288b = abstractC7552hC;
        this.f55289c = str;
    }

    public static C10770e0 a(NQ.c cVar, String str, C4724u1 c4724u1) {
        int i10 = AbstractC7552hC.f48487c;
        Object[] objArr = new Object[4];
        int i11 = 0;
        for (String str2 : cVar.c()) {
            C10853s0 a10 = C10853s0.a(str2, c4724u1, str2);
            a10.getClass();
            int i12 = i11 + 1;
            if (objArr.length < i12) {
                objArr = Arrays.copyOf(objArr, WB.a(objArr.length, i12));
            }
            objArr[i11] = a10;
            i11 = i12;
        }
        return new C10770e0(cVar, AbstractC7552hC.b(i11, objArr), str);
    }

    @Override
    public final boolean n() {
        return true;
    }

    @Override
    public final String r() {
        return this.f55289c;
    }

    @Override
    public final ML u() {
        return this.f55287a.f42588c;
    }

    @Override
    public final C8699o50 a(com.android.tools.r8.graph.H2 h22, C4798y c4798y) {
        final ArrayList arrayList = new ArrayList(this.f55288b.size());
        Iterator it = this.f55288b.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            z10 |= ((C10853s0) it.next()).a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C10770e0.a(List.this, (String) obj);
                }
            }, c4798y, (String) null);
        }
        NQ.c cVar = this.f55287a;
        cVar.f42587b = arrayList;
        ML ml2 = AbstractC10752b0.f55255a;
        if (cVar.a().compareTo(ml2) < 0) {
            cVar.a(ml2);
        }
        return C8699o50.a(this.f55287a.b(), Boolean.valueOf(z10));
    }

    public static void a(List list, String str) {
        if (str != null) {
            list.add(str);
        }
    }

    public static Consumer a(C10853s0 c10853s0) {
        Objects.requireNonNull(c10853s0);
        return new C10795i1(c10853s0);
    }

    @Override
    public final void a(InterfaceC4403d1 interfaceC4403d1) {
        C5480Ky.a((Iterable) this.f55288b, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C10770e0.a((C10853s0) obj);
            }
        }, (Object) interfaceC4403d1);
    }
}
