package com.android.tools.r8;

@FunctionalInterface
public interface SourceFileProvider {
    default boolean allowDiscardingSourceFile() {
        return false;
    }

    String get(SourceFileEnvironment sourceFileEnvironment);
}
