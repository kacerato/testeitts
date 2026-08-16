package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C6520b10;
import com.android.tools.r8.internal.M70;
import com.android.tools.r8.internal.X70;
import java.util.concurrent.ExecutorService;

public final class C4 extends I4 {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C4(C4798y c4798y, M70 m70, com.android.tools.r8.graph.Y5 y52, Iterable iterable) {
        super(c4798y, m70 instanceof C6520b10 ? r0 : new X70(m70.a()), y52, iterable);
        InterfaceC11503x4 interfaceC11503x4 = C11486w4.f57941c;
        m70.getClass();
    }

    @Override
    public final B4 a(ExecutorService executorService) {
        D4 a10 = super.a(executorService);
        return new B4(a10.f56422a, a10.f56395e, a10.f56402l, a10.f56424c);
    }
}
