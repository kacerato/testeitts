package com.android.tools.r8.internal;

import com.android.tools.r8.relocated.keepanno.proto.KeepSpecProtos;

public final class C9249rP {

    public final OM f52033a;

    public final QM f52034b;

    public C9249rP(OM om2) {
        this.f52033a = om2;
        this.f52034b = om2.a();
    }

    public final MM a(KeepSpecProtos.BindingReference bindingReference) {
        if (bindingReference == null || bindingReference.getName().isEmpty()) {
            throw new FN("Invalid binding reference");
        }
        return this.f52033a.b(bindingReference.getName());
    }
}
