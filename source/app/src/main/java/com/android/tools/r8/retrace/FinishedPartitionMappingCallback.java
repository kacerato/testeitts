package com.android.tools.r8.retrace;

import com.android.tools.r8.DiagnosticsHandler;

@FunctionalInterface
public interface FinishedPartitionMappingCallback {
    public static final FinishedPartitionMappingCallback EMPTY_INSTANCE = new FinishedPartitionMappingCallback() {
        @Override
        public final void finished(DiagnosticsHandler diagnosticsHandler) {
            FinishedPartitionMappingCallback.a(diagnosticsHandler);
        }
    };

    static void a(DiagnosticsHandler diagnosticsHandler) {
    }

    static FinishedPartitionMappingCallback empty() {
        return EMPTY_INSTANCE;
    }

    void finished(DiagnosticsHandler diagnosticsHandler);
}
