package com.android.tools.r8;

import java.util.Collection;

public interface AndroidResourceProvider {
    default void finished(DiagnosticsHandler diagnosticsHandler) {
    }

    Collection<AndroidResourceInput> getAndroidResources() throws ResourceException;
}
