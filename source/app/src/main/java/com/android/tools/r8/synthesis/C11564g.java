package com.android.tools.r8.synthesis;

import com.android.tools.r8.ByteDataView;
import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.GlobalSyntheticsConsumer;
import com.android.tools.r8.internal.InterfaceC7365g50;
import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.utils.StringDiagnostic;

public final class C11564g implements GlobalSyntheticsConsumer {

    public static final boolean f58251c = true;

    public boolean f58252a = false;

    public final InterfaceC7365g50 f58253b;

    public C11564g(InterfaceC7365g50 interfaceC7365g50) {
        this.f58253b = interfaceC7365g50;
    }

    @Override
    public final synchronized void accept(ByteDataView byteDataView, ClassReference classReference, DiagnosticsHandler diagnosticsHandler) {
        try {
            if (!f58251c && classReference != null) {
                throw new AssertionError();
            }
            if (this.f58252a) {
                diagnosticsHandler.error(new StringDiagnostic("Attempt to write multiple global-synthetics files in dex-indexed mode."));
                throw new RuntimeException("Attempt to write multiple global-synthetics files in dex-indexed mode.");
            }
            this.f58253b.a(byteDataView, "classes.globals", diagnosticsHandler);
            this.f58253b.a(diagnosticsHandler);
            this.f58252a = true;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public final void finished(DiagnosticsHandler diagnosticsHandler) {
        if (this.f58252a) {
            return;
        }
        this.f58253b.a(diagnosticsHandler);
        this.f58252a = true;
    }
}
