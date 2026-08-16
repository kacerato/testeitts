package com.android.tools.r8;

import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C8570nJ;

public final class C4842i0 implements StringConsumer {

    public final C8570nJ f38490a;

    public StringBuilder f38491b = new StringBuilder();

    public C4842i0(C8570nJ c8570nJ) {
        this.f38490a = c8570nJ;
    }

    @Override
    public final void accept(String str, DiagnosticsHandler diagnosticsHandler) {
        this.f38491b.append(str);
    }

    @Override
    public final void finished(DiagnosticsHandler diagnosticsHandler) {
        this.f38490a.f50679f = C10656zq0.c(this.f38491b.toString());
        this.f38491b = null;
    }
}
