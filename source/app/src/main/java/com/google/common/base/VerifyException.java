package com.google.common.base;

import javax.annotation.CheckForNull;
import v2.b;
import w2.InterfaceC15894k;

@InterfaceC15894k
@b
public class VerifyException extends RuntimeException {
    public VerifyException() {
    }

    public VerifyException(@CheckForNull String str) {
        super(str);
    }

    public VerifyException(@CheckForNull Throwable th2) {
        super(th2);
    }

    public VerifyException(@CheckForNull String str, @CheckForNull Throwable th2) {
        super(str, th2);
    }
}
