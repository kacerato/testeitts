package com.android.tools.r8.shaking;

import com.android.tools.r8.internal.AbstractC4895Av0;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C5920Sm0;

public class C11148c4 {

    public static final boolean f57211c = true;

    public final boolean f57212a;

    public final AbstractC7552hC f57213b;

    public C11148c4(AbstractC7552hC abstractC7552hC, boolean z10) {
        this.f57212a = z10;
        if (abstractC7552hC.isEmpty()) {
            C11165d4 c11165d4 = new C11165d4();
            int i10 = AbstractC7552hC.f48487c;
            this.f57213b = new C5920Sm0(c11165d4);
        } else {
            if (!f57211c && !z10) {
                throw new AssertionError();
            }
            this.f57213b = abstractC7552hC;
        }
    }

    public boolean a(String str) {
        if (!this.f57212a) {
            return false;
        }
        AbstractC4895Av0 it = this.f57213b.iterator();
        while (it.hasNext()) {
            if (((AbstractC11216g4) it.next()).a(str)) {
                return true;
            }
        }
        return false;
    }
}
