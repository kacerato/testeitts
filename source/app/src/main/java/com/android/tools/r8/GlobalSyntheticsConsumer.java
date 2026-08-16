package com.android.tools.r8;

import com.android.tools.r8.references.ClassReference;

public interface GlobalSyntheticsConsumer {
    void accept(ByteDataView byteDataView, ClassReference classReference, DiagnosticsHandler diagnosticsHandler);

    default void finished(DiagnosticsHandler diagnosticsHandler) {
    }
}
