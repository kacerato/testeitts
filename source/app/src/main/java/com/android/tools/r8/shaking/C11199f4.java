package com.android.tools.r8.shaking;

import com.android.tools.r8.internal.AbstractC7552hC;
import java.util.Iterator;

public final class C11199f4 extends AbstractC11216g4 {

    public final AbstractC7552hC f57305a;

    public C11199f4(AbstractC7552hC abstractC7552hC) {
        this.f57305a = abstractC7552hC;
    }

    @Override
    public final boolean a(String str) {
        Iterator it = this.f57305a.iterator();
        while (it.hasNext()) {
            if (C11182e4.a(0, 0, ((C11182e4) it.next()).f57257b, str)) {
                return !r1.f57256a;
            }
        }
        return false;
    }
}
