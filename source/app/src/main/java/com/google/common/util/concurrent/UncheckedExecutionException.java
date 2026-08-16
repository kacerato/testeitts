package com.google.common.util.concurrent;

import javax.annotation.CheckForNull;

@A
@v2.b
public class UncheckedExecutionException extends RuntimeException {
    private static final long serialVersionUID = 0;

    public UncheckedExecutionException() {
    }

    public UncheckedExecutionException(@CheckForNull String str) {
        super(str);
    }

    public UncheckedExecutionException(@CheckForNull String str, @CheckForNull Throwable th2) {
        super(str, th2);
    }

    public UncheckedExecutionException(@CheckForNull Throwable th2) {
        super(th2);
    }
}
