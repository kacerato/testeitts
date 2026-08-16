package com.android.tools.r8.internal;

import com.android.tools.r8.metadata.R8KeepAttributesMetadata;

public final class C6774cb0 implements R8KeepAttributesMetadata {

    @InterfaceC9168qv
    @InterfaceC10474yl0("isAnnotationDefaultKept")
    public final boolean f47093a;

    @InterfaceC9168qv
    @InterfaceC10474yl0("isEnclosingMethodKept")
    public final boolean f47094b;

    @InterfaceC9168qv
    @InterfaceC10474yl0("isExceptionsKept")
    public final boolean f47095c;

    @InterfaceC9168qv
    @InterfaceC10474yl0("isInnerClassesKept")
    public final boolean f47096d;

    @InterfaceC9168qv
    @InterfaceC10474yl0("isLocalVariableTableKept")
    public final boolean f47097e;

    @InterfaceC9168qv
    @InterfaceC10474yl0("isLocalVariableTypeTableKept")
    public final boolean f47098f;

    @InterfaceC9168qv
    @InterfaceC10474yl0("isMethodParametersKept")
    public final boolean f47099g;

    @InterfaceC9168qv
    @InterfaceC10474yl0("isPermittedSubclassesKept")
    public final boolean f47100h;

    @InterfaceC9168qv
    @InterfaceC10474yl0("isRuntimeInvisibleAnnotationsKept")
    public final boolean f47101i;

    @InterfaceC9168qv
    @InterfaceC10474yl0("isRuntimeInvisibleParameterAnnotationsKept")
    public final boolean f47102j;

    @InterfaceC9168qv
    @InterfaceC10474yl0("isRuntimeInvisibleTypeAnnotationsKept")
    public final boolean f47103k;

    @InterfaceC9168qv
    @InterfaceC10474yl0("isRuntimeVisibleAnnotationsKept")
    public final boolean f47104l;

    @InterfaceC9168qv
    @InterfaceC10474yl0("isRuntimeVisibleParameterAnnotationsKept")
    public final boolean f47105m;

    @InterfaceC9168qv
    @InterfaceC10474yl0("isRuntimeVisibleTypeAnnotationsKept")
    public final boolean f47106n;

    @InterfaceC9168qv
    @InterfaceC10474yl0("isSignatureKept")
    public final boolean f47107o;

    @InterfaceC9168qv
    @InterfaceC10474yl0("isSourceDebugExtensionKept")
    public final boolean f47108p;

    @InterfaceC9168qv
    @InterfaceC10474yl0("isSourceDirKept")
    public final boolean f47109q;

    @InterfaceC9168qv
    @InterfaceC10474yl0("isSourceFileKept")
    public final boolean f47110r;

    @InterfaceC9168qv
    @InterfaceC10474yl0("isStackMapTableKept")
    public final boolean f47111s;

    public C6774cb0(com.android.tools.r8.shaking.I3 i32) {
        this.f47093a = i32.f56585q;
        this.f47094b = i32.f56572d;
        this.f47095c = i32.f56574f;
        this.f47096d = i32.f56571c;
        this.f47097e = i32.f56575g;
        this.f47098f = i32.f56576h;
        this.f47099g = i32.f56577i;
        this.f47100h = i32.f56587s;
        this.f47101i = i32.f56580l;
        this.f47102j = i32.f56582n;
        this.f47103k = i32.f56584p;
        this.f47104l = i32.f56579k;
        this.f47105m = i32.f56581m;
        this.f47106n = i32.f56583o;
        this.f47107o = i32.f56573e;
        this.f47108p = i32.f56578j;
        this.f47109q = i32.f56570b;
        this.f47110r = i32.f56569a;
        this.f47111s = i32.f56586r;
    }

    @Override
    public final boolean isAnnotationDefaultKept() {
        return this.f47093a;
    }

    @Override
    public final boolean isEnclosingMethodKept() {
        return this.f47094b;
    }

    @Override
    public final boolean isExceptionsKept() {
        return this.f47095c;
    }

    @Override
    public final boolean isInnerClassesKept() {
        return this.f47096d;
    }

    @Override
    public final boolean isLocalVariableTableKept() {
        return this.f47097e;
    }

    @Override
    public final boolean isLocalVariableTypeTableKept() {
        return this.f47098f;
    }

    @Override
    public final boolean isMethodParametersKept() {
        return this.f47099g;
    }

    @Override
    public final boolean isPermittedSubclassesKept() {
        return this.f47100h;
    }

    @Override
    public final boolean isRuntimeInvisibleAnnotationsKept() {
        return this.f47101i;
    }

    @Override
    public final boolean isRuntimeInvisibleParameterAnnotationsKept() {
        return this.f47102j;
    }

    @Override
    public final boolean isRuntimeInvisibleTypeAnnotationsKept() {
        return this.f47103k;
    }

    @Override
    public final boolean isRuntimeVisibleAnnotationsKept() {
        return this.f47104l;
    }

    @Override
    public final boolean isRuntimeVisibleParameterAnnotationsKept() {
        return this.f47105m;
    }

    @Override
    public final boolean isRuntimeVisibleTypeAnnotationsKept() {
        return this.f47106n;
    }

    @Override
    public final boolean isSignatureKept() {
        return this.f47107o;
    }

    @Override
    public final boolean isSourceDebugExtensionKept() {
        return this.f47108p;
    }

    @Override
    public final boolean isSourceDirKept() {
        return this.f47109q;
    }

    @Override
    public final boolean isSourceFileKept() {
        return this.f47110r;
    }

    @Override
    public final boolean isStackMapTableKept() {
        return this.f47111s;
    }
}
