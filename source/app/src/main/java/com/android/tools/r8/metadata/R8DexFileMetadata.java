package com.android.tools.r8.metadata;

public interface R8DexFileMetadata {
    String getChecksum();

    boolean isStartup();
}
