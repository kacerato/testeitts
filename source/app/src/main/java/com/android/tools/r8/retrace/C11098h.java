package com.android.tools.r8.retrace;

import com.android.tools.r8.Diagnostic;
import com.android.tools.r8.DiagnosticsHandler;

public final class C11098h implements DiagnosticsHandler {

    public final C11096f f56320a;

    public final boolean f56321b;

    public C11098h(C11096f c11096f, boolean z10) {
        this.f56320a = c11096f;
        this.f56321b = z10;
    }

    @Override
    public final void error(Diagnostic diagnostic) {
        this.f56320a.error(diagnostic);
    }

    @Override
    public final void info(Diagnostic diagnostic) {
        if (this.f56321b) {
            this.f56320a.info(diagnostic);
        }
    }

    @Override
    public final void warning(Diagnostic diagnostic) {
        this.f56320a.warning(diagnostic);
    }
}
