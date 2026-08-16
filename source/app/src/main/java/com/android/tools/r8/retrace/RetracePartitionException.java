package com.android.tools.r8.retrace;

public class RetracePartitionException extends RuntimeException {
    public RetracePartitionException(String str) {
        super(str);
    }

    public RetracePartitionException(Exception exc) {
        super(exc);
    }

    public RetracePartitionException(String str, Throwable th2) {
        super(str, th2);
    }
}
