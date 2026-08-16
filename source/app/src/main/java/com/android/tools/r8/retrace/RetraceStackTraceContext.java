package com.android.tools.r8.retrace;

import com.android.tools.r8.internal.C6258Yj0;
import com.android.tools.r8.internal.C6315Zj0;

public interface RetraceStackTraceContext {
    static RetraceStackTraceContext empty() {
        C6258Yj0 c6258Yj0 = new C6258Yj0();
        return new C6315Zj0(c6258Yj0.f46073a, c6258Yj0.f46074b);
    }
}
