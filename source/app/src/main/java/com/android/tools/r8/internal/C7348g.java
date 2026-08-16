package com.android.tools.r8.internal;

import com.android.tools.r8.Diagnostic;
import com.android.tools.r8.utils.ExceptionDiagnostic;

public class C7348g extends RuntimeException {

    public static final boolean f48160c = true;

    public final Diagnostic f48161b;

    public C7348g(Diagnostic diagnostic) {
        if (!f48160c && diagnostic == null) {
            throw new AssertionError();
        }
        this.f48161b = diagnostic;
    }

    @Override
    public final synchronized Throwable getCause() {
        Diagnostic diagnostic = this.f48161b;
        if (!(diagnostic instanceof ExceptionDiagnostic)) {
            return null;
        }
        return ((ExceptionDiagnostic) diagnostic).getCause();
    }

    @Override
    public final String getMessage() {
        return this.f48161b.getDiagnosticMessage();
    }
}
