package com.android.tools.r8.internal;

public final class C9683u {

    public static final C9683u f52754c;

    public static final C9683u f52755d;

    public final boolean f52756a;

    public final RuntimeException f52757b;

    static {
        if (D.f39397e) {
            f52755d = null;
            f52754c = null;
        } else {
            f52755d = new C9683u(false, null);
            f52754c = new C9683u(true, null);
        }
    }

    public C9683u(boolean z10, RuntimeException runtimeException) {
        this.f52756a = z10;
        this.f52757b = runtimeException;
    }
}
