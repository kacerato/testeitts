package com.android.tools.r8;

import com.android.tools.r8.errors.DexFileOverflowDiagnostic;
import com.android.tools.r8.utils.StringDiagnostic;

public final class L implements DiagnosticsHandler {
    @Override
    public final void error(Diagnostic diagnostic) {
        if (!(diagnostic instanceof DexFileOverflowDiagnostic)) {
            super.error(diagnostic);
            return;
        }
        super.error(new StringDiagnostic(((DexFileOverflowDiagnostic) diagnostic).getDiagnosticMessage() + ". Library too large. GlobalSyntheticsGenerator can only produce a single .dex file"));
    }
}
