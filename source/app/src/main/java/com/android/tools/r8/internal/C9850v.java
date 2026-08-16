package com.android.tools.r8.internal;

public final class C9850v extends Throwable {
    public C9850v() {
        super("Failure occurred while trying to finish a future.");
    }

    @Override
    public final synchronized Throwable fillInStackTrace() {
        return this;
    }
}
