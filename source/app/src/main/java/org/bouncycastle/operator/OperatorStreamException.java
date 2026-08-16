package org.bouncycastle.operator;

import java.io.IOException;

public class OperatorStreamException extends IOException {
    private Throwable cause;

    public OperatorStreamException(String str, Throwable th2) {
        super(str);
        this.cause = th2;
    }

    @Override
    public Throwable getCause() {
        return this.cause;
    }
}
