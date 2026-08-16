package com.android.tools.r8.metadata;

public interface R8StartupOptimizationMetadata {
    boolean isDexLayoutOptimizationEnabled();

    boolean isProfileGuidedOptimizationEnabled();
}
