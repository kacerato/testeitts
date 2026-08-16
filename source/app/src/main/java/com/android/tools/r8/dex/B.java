package com.android.tools.r8.dex;

import com.android.tools.r8.graph.AbstractC4592n1;
import com.android.tools.r8.graph.AbstractC4744v2;
import com.android.tools.r8.graph.AbstractC4820z2;
import java.util.function.Supplier;

public final class B {

    public int f35666a = 0;

    public final AbstractC4820z2[] f35667b;

    public final Supplier f35668c;

    public B(AbstractC4820z2[] abstractC4820z2Arr, Supplier supplier) {
        this.f35667b = abstractC4820z2Arr;
        this.f35668c = supplier;
    }

    public final AbstractC4592n1 a(AbstractC4744v2 abstractC4744v2) {
        while (true) {
            int i10 = this.f35666a;
            AbstractC4820z2[] abstractC4820z2Arr = this.f35667b;
            if (i10 >= abstractC4820z2Arr.length || abstractC4820z2Arr[i10].f38458b.compareTo(abstractC4744v2) >= 0) {
                break;
            }
            this.f35666a++;
        }
        int i11 = this.f35666a;
        AbstractC4820z2[] abstractC4820z2Arr2 = this.f35667b;
        return (i11 >= abstractC4820z2Arr2.length || !abstractC4820z2Arr2[i11].f38458b.equals(abstractC4744v2)) ? (AbstractC4592n1) this.f35668c.get() : this.f35667b[this.f35666a].f38459c;
    }
}
