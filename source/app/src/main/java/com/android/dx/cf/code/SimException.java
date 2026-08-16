package com.android.dx.cf.code;

import com.android.dex.util.ExceptionWithContext;

public class SimException extends ExceptionWithContext {
    public SimException(String str) {
        super(str);
    }

    public SimException(Throwable th2) {
        super(th2);
    }

    public SimException(String str, Throwable th2) {
        super(str, th2);
    }
}
