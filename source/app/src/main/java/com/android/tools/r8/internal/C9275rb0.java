package com.android.tools.r8.internal;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.references.PackageReference;
import com.android.tools.r8.tracereferences.TraceReferencesConsumer;

public final class C9275rb0 implements TraceReferencesConsumer {

    public static final boolean f52072a = true;

    @Override
    public final void acceptField(TraceReferencesConsumer.TracedField tracedField, DiagnosticsHandler diagnosticsHandler) {
        if (!f52072a && !tracedField.isMissingDefinition()) {
            throw new AssertionError();
        }
    }

    @Override
    public final void acceptMethod(TraceReferencesConsumer.TracedMethod tracedMethod, DiagnosticsHandler diagnosticsHandler) {
        if (!f52072a && !tracedMethod.isMissingDefinition()) {
            throw new AssertionError();
        }
    }

    @Override
    public final void acceptPackage(PackageReference packageReference, DiagnosticsHandler diagnosticsHandler) {
        if (!f52072a) {
            throw new AssertionError();
        }
    }

    @Override
    public final void acceptType(TraceReferencesConsumer.TracedClass tracedClass, DiagnosticsHandler diagnosticsHandler) {
        if (!f52072a && !tracedClass.isMissingDefinition()) {
            throw new AssertionError();
        }
    }
}
