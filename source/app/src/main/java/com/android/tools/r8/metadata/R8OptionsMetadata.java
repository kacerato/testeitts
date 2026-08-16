package com.android.tools.r8.metadata;

public interface R8OptionsMetadata {
    R8ApiModelingMetadata getApiModelingMetadata();

    R8KeepAttributesMetadata getKeepAttributesMetadata();

    R8LibraryDesugaringMetadata getLibraryDesugaringMetadata();

    String getMinApiLevel();

    boolean hasClassObfuscationDictionary();

    boolean hasObfuscationDictionary();

    boolean hasPackageObfuscationDictionary();

    boolean isAccessModificationEnabled();

    boolean isDebugModeEnabled();

    boolean isFlattenPackageHierarchyEnabled();

    boolean isObfuscationEnabled();

    boolean isOptimizationsEnabled();

    boolean isProGuardCompatibilityModeEnabled();

    boolean isProtoLiteOptimizationEnabled();

    boolean isRepackageClassesEnabled();

    boolean isShrinkingEnabled();
}
