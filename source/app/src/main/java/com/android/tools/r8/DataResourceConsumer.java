package com.android.tools.r8;

public interface DataResourceConsumer {
    void accept(DataDirectoryResource dataDirectoryResource, DiagnosticsHandler diagnosticsHandler);

    void accept(DataEntryResource dataEntryResource, DiagnosticsHandler diagnosticsHandler);

    void finished(DiagnosticsHandler diagnosticsHandler);
}
