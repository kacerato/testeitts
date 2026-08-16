package com.android.tools.r8;

public interface MarkerInfo {
    int getMinApi();

    String getRawEncoding();

    String getTool();

    String getVersion();

    boolean hasBackend();

    boolean hasCompilationMode();

    boolean isBackendClassFiles();

    boolean isBackendDexFiles();

    boolean isCompilationModeDebug();

    boolean isCompilationModeRelease();

    boolean isD8();

    boolean isL8();

    boolean isR8();

    boolean isR8ModeCompatibility();

    boolean isR8ModeFull();
}
