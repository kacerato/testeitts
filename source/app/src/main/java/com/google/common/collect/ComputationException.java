package com.google.common.collect;

import javax.annotation.CheckForNull;

@X
@v2.b
@Deprecated
public class ComputationException extends RuntimeException {
    private static final long serialVersionUID = 0;

    public ComputationException(@CheckForNull Throwable th2) {
        super(th2);
    }
}
