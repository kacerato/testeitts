package com.android.tools.r8;

import com.android.tools.r8.origin.Origin;

public final class C11104s implements DataDirectoryResource {

    public static final boolean f56325c = true;

    public final String f56326a;

    public final Origin f56327b;

    public C11104s(String str, Origin origin) {
        boolean z10 = f56325c;
        if (!z10 && str == null) {
            throw new AssertionError();
        }
        if (!z10 && origin == null) {
            throw new AssertionError();
        }
        this.f56326a = str;
        this.f56327b = origin;
    }

    @Override
    public final String getName() {
        return this.f56326a;
    }

    @Override
    public final Origin getOrigin() {
        return this.f56327b;
    }
}
