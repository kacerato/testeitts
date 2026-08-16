package com.android.tools.r8;

public interface AndroidResourceConsumer {
    void accept(AndroidResourceOutput androidResourceOutput, DiagnosticsHandler diagnosticsHandler);

    default void finished(DiagnosticsHandler diagnosticsHandler) {
    }
}
