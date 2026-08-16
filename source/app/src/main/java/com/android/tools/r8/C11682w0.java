package com.android.tools.r8;

import com.android.tools.r8.origin.Origin;

public final class C11682w0 implements InterfaceC11677v0 {

    public static final boolean f58655c = true;

    public final Origin f58656a;

    public final String f58657b;

    public C11682w0(Origin origin, String str) {
        boolean z10 = f58655c;
        if (!z10 && origin == null) {
            throw new AssertionError();
        }
        if (!z10 && str == null) {
            throw new AssertionError();
        }
        this.f58656a = origin;
        this.f58657b = str;
    }

    @Override
    public final String a() {
        return this.f58657b;
    }

    @Override
    public final Origin getOrigin() {
        return this.f58656a;
    }
}
