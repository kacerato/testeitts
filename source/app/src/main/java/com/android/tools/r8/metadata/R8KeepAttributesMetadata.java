package com.android.tools.r8.metadata;

public interface R8KeepAttributesMetadata {
    boolean isAnnotationDefaultKept();

    boolean isEnclosingMethodKept();

    boolean isExceptionsKept();

    boolean isInnerClassesKept();

    boolean isLocalVariableTableKept();

    boolean isLocalVariableTypeTableKept();

    boolean isMethodParametersKept();

    boolean isPermittedSubclassesKept();

    boolean isRuntimeInvisibleAnnotationsKept();

    boolean isRuntimeInvisibleParameterAnnotationsKept();

    boolean isRuntimeInvisibleTypeAnnotationsKept();

    boolean isRuntimeVisibleAnnotationsKept();

    boolean isRuntimeVisibleParameterAnnotationsKept();

    boolean isRuntimeVisibleTypeAnnotationsKept();

    boolean isSignatureKept();

    boolean isSourceDebugExtensionKept();

    boolean isSourceDirKept();

    boolean isSourceFileKept();

    boolean isStackMapTableKept();
}
