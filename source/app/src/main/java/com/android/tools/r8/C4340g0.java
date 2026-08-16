package com.android.tools.r8;

import com.android.tools.r8.errors.DexFileOverflowDiagnostic;
import com.android.tools.r8.utils.StringDiagnostic;

public final class C4340g0 implements DiagnosticsHandler {
    @Override
    public final void error(Diagnostic diagnostic) {
        if (diagnostic instanceof DexFileOverflowDiagnostic) {
            DexFileOverflowDiagnostic dexFileOverflowDiagnostic = (DexFileOverflowDiagnostic) diagnostic;
            if (!dexFileOverflowDiagnostic.hasMainDexSpecification()) {
                super.error(new StringDiagnostic(dexFileOverflowDiagnostic.getDiagnosticMessage() + ". Try supplying a main-dex list or main-dex rules"));
                return;
            }
        }
        super.error(diagnostic);
    }
}
