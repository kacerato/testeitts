package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4482h4;
import java.util.ArrayList;
import java.util.Objects;
import java.util.function.Supplier;
import java.util.function.ToIntFunction;

public final class C4866Ah implements InterfaceC5580Mq0 {

    public static final boolean f38685g = true;

    public final int f38686b;

    public final com.android.tools.r8.graph.L2 f38687c;

    public final com.android.tools.r8.graph.M2 f38688d;

    public final com.android.tools.r8.graph.C2 f38689e;

    public final ArrayList f38690f;

    public C4866Ah(int i10, com.android.tools.r8.graph.L2 l22, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.C2 c22, ArrayList arrayList) {
        boolean z10 = f38685g;
        if (!z10 && i10 < 0) {
            throw new AssertionError();
        }
        if (!z10 && l22 == null) {
            throw new AssertionError();
        }
        if (!z10 && m22 == null) {
            throw new AssertionError();
        }
        if (!z10 && c22 == null) {
            throw new AssertionError();
        }
        this.f38686b = i10;
        this.f38687c = l22;
        this.f38688d = m22;
        this.f38689e = c22;
        this.f38690f = arrayList;
    }

    @Override
    public final InterfaceC5580Mq0 E() {
        return this;
    }

    public final boolean equals(Object obj) {
        return InterfaceC7166ev.a(this, obj);
    }

    public final int hashCode() {
        return Objects.hash(this.f38687c, this.f38688d, this.f38689e, this.f38690f);
    }

    @Override
    public final InterfaceC5638Nq0 m() {
        return new InterfaceC5638Nq0() {
            @Override
            public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                C4866Ah.a(abstractC5754Pq0);
            }
        };
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((C4866Ah) obj).f38686b;
                return i10;
            }
        });
    }

    public static C4866Ah a(C10127wh c10127wh, C4482h4 c4482h4, com.android.tools.r8.graph.M2 m22, Supplier supplier) {
        AbstractC10188x1 abstractC10188x1 = (AbstractC10188x1) supplier.get();
        int intValue = ((Integer) abstractC10188x1.getOrDefault(c10127wh, -1)).intValue();
        if (intValue == -1) {
            intValue = abstractC10188x1.size();
            abstractC10188x1.b(intValue, c10127wh);
        }
        int i10 = intValue;
        String str = c10127wh.f53557a;
        String str2 = c10127wh.f53558b;
        com.android.tools.r8.graph.C2 a10 = com.android.tools.r8.graph.C2.a(c10127wh.f53559c, c4482h4, m22);
        int length = c10127wh.f53560d.length;
        ArrayList arrayList = new ArrayList(length);
        for (int i11 = 0; i11 < length; i11++) {
            arrayList.add(com.android.tools.r8.graph.R2.a(c10127wh.f53560d[i11], c4482h4, m22, supplier));
        }
        return new C4866Ah(i10, c4482h4.d(str), c4482h4.e(str2), a10, arrayList);
    }
}
