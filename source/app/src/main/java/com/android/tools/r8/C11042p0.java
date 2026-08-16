package com.android.tools.r8;

import com.android.tools.r8.diagnostic.R8VersionDiagnostic;
import com.android.tools.r8.internal.AbstractC7008dy;

public final class C11042p0 extends AbstractC7008dy {
    public C11042p0(DiagnosticsHandler diagnosticsHandler) {
        super(diagnosticsHandler);
    }

    @Override
    public final DiagnosticsLevel modifyDiagnosticsLevel(DiagnosticsLevel diagnosticsLevel, Diagnostic diagnostic) {
        return diagnostic instanceof R8VersionDiagnostic ? DiagnosticsLevel.NONE : this.f47556a.modifyDiagnosticsLevel(diagnosticsLevel, diagnostic);
    }
}
