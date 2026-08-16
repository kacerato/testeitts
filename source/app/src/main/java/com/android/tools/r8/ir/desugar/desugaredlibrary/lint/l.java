package com.android.tools.r8.ir.desugar.desugaredlibrary.lint;

import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C6190Xe0;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Comparator;

public final class l {

    public static final l f54665e = new l();

    public final boolean f54666a;

    public final boolean f54667b;

    public final AbstractCollection f54668c;

    public final AbstractC7552hC f54669d;

    public l(boolean z10, ArrayList arrayList, ArrayList arrayList2) {
        this.f54666a = false;
        this.f54667b = z10;
        arrayList.sort(Comparator.naturalOrder());
        this.f54668c = arrayList;
        arrayList2.sort(Comparator.naturalOrder());
        this.f54669d = AbstractC7552hC.a(arrayList2);
    }

    public l() {
        this.f54666a = true;
        this.f54667b = false;
        int i10 = AbstractC7552hC.f48487c;
        C6190Xe0 c6190Xe0 = C6190Xe0.f45779e;
        this.f54668c = c6190Xe0;
        this.f54669d = c6190Xe0;
    }
}
