package com.android.tools.r8;

public class CompilationFailedException extends Exception {

    private final boolean f35221b;

    public CompilationFailedException(String str, Throwable th2, boolean z10) {
        super(str, th2);
        this.f35221b = z10;
    }

    public boolean wasCancelled() {
        return this.f35221b;
    }

    public CompilationFailedException(String str) {
        super(str);
        this.f35221b = false;
    }
}
