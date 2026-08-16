package com.android.tools.r8.retrace;

public class RetraceFailedException extends Exception {
    public RetraceFailedException() {
        super("Retrace failed to complete");
    }

    public RetraceFailedException(String str, Throwable th2) {
        super(str, th2);
    }
}
