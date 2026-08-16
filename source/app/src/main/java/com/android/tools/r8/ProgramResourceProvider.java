package com.android.tools.r8;

import java.io.IOException;
import java.util.Collection;

public interface ProgramResourceProvider {
    default void finished(DiagnosticsHandler diagnosticsHandler) throws IOException {
    }

    default DataResourceProvider getDataResourceProvider() {
        return null;
    }

    Collection<ProgramResource> getProgramResources() throws ResourceException;
}
