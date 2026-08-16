package com.android.tools.r8.retrace;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.StringConsumer;
import com.android.tools.r8.internal.InterfaceC5429Kb;

public final class C11094d implements InterfaceC5429Kb, com.android.tools.r8.H {

    public final StringConsumer f56317a;

    public final DiagnosticsHandler f56318b;

    public C11094d(StringConsumer stringConsumer, DiagnosticsHandler diagnosticsHandler) {
        this.f56317a = stringConsumer;
        this.f56318b = diagnosticsHandler;
    }

    @Override
    public final InterfaceC5429Kb a(String str) {
        this.f56317a.accept(str, this.f56318b);
        return this;
    }

    @Override
    public final void finished(DiagnosticsHandler diagnosticsHandler) {
        this.f56317a.finished(diagnosticsHandler);
    }
}
