package com.android.tools.r8;

import java.io.IOException;
import java.util.Set;

public interface ClassFileResourceProvider {
    default void finished(DiagnosticsHandler diagnosticsHandler) throws IOException {
    }

    Set<String> getClassDescriptors();

    @Deprecated
    default DataResourceProvider getDataResourceProvider() {
        return null;
    }

    ProgramResource getProgramResource(String str);
}
