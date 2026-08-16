package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.startup.StartupClassBuilder;

public final class C9481so0 implements InterfaceC8519n1, StartupClassBuilder {

    public static final boolean f52457c = true;

    public final C4724u1 f52458a;

    public com.android.tools.r8.graph.M2 f52459b;

    public C9481so0() {
        this.f52458a = null;
    }

    @Override
    public final InterfaceC8686o1 build() {
        return new C9648to0(this.f52459b);
    }

    @Override
    public final StartupClassBuilder setClassReference(ClassReference classReference) {
        if (!f52457c && this.f52458a == null) {
            throw new AssertionError();
        }
        this.f52459b = C6186Xd.a(classReference, this.f52458a);
        return this;
    }

    public C9481so0(C4724u1 c4724u1) {
        this.f52458a = c4724u1;
    }
}
