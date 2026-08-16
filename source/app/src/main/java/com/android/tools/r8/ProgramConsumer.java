package com.android.tools.r8;

public interface ProgramConsumer {
    void finished(DiagnosticsHandler diagnosticsHandler);

    default DataResourceConsumer getDataResourceConsumer() {
        return null;
    }
}
