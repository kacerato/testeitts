package com.android.tools.r8.retrace;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.internal.C8875p80;
import java.io.IOException;

public interface ProguardMapPartitioner {
    static ProguardMapPartitionerBuilder<?, ?> builder(DiagnosticsHandler diagnosticsHandler) {
        return new C8875p80.a(diagnosticsHandler);
    }

    MappingPartitionMetadata run() throws IOException;
}
