package com.android.tools.r8;

public final class Q {
    public static CompilationFailedException a() {
        return new CompilationFailedException("Compilation failed to complete", null, false);
    }

    public static CompilationFailedException a(Throwable th2) {
        return new CompilationFailedException("Compilation failed to complete", th2, false);
    }

    public static CompilationFailedException a(String str, Throwable th2, boolean z10) {
        return new CompilationFailedException(str, th2, z10);
    }

    public static CompilationFailedException a(String str) {
        return new CompilationFailedException(str, null, false);
    }
}
