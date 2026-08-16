package com.android.tools.r8;

import com.android.tools.r8.errors.DexFileOverflowDiagnostic;
import com.android.tools.r8.utils.StringDiagnostic;

public final class T implements DiagnosticsHandler {
    @Override
    public final void error(Diagnostic diagnostic) {
        if (!(diagnostic instanceof DexFileOverflowDiagnostic)) {
            super.error(diagnostic);
            return;
        }
        super.error(new StringDiagnostic(((DexFileOverflowDiagnostic) diagnostic).getDiagnosticMessage() + ". Library too large. L8 can only produce a single .dex file"));
    }
}
