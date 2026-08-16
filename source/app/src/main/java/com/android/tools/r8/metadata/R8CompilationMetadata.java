package com.android.tools.r8.metadata;

public interface R8CompilationMetadata {
    long getBuildTimeInNanos();

    long getNumberOfThreads();
}
