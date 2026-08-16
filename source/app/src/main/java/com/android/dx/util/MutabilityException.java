package com.android.dx.util;

import com.android.dex.util.ExceptionWithContext;

public class MutabilityException extends ExceptionWithContext {
    public MutabilityException(String str) {
        super(str);
    }

    public MutabilityException(Throwable th2) {
        super(th2);
    }

    public MutabilityException(String str, Throwable th2) {
        super(str, th2);
    }
}
