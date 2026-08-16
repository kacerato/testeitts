package com.android.tools.r8.internal;

import com.android.tools.r8.Diagnostic;
import com.android.tools.r8.DiagnosticsHandler;

public abstract class AbstractC7008dy implements DiagnosticsHandler {

    public final DiagnosticsHandler f47556a;

    public AbstractC7008dy(DiagnosticsHandler diagnosticsHandler) {
        this.f47556a = diagnosticsHandler;
    }

    @Override
    public final void error(Diagnostic diagnostic) {
        this.f47556a.error(diagnostic);
    }

    @Override
    public final void info(Diagnostic diagnostic) {
        this.f47556a.info(diagnostic);
    }

    @Override
    public final void warning(Diagnostic diagnostic) {
        this.f47556a.warning(diagnostic);
    }
}
