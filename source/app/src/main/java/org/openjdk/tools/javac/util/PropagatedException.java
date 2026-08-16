package org.openjdk.tools.javac.util;

public class PropagatedException extends RuntimeException {
    static final long serialVersionUID = -6065309339888775367L;

    public PropagatedException(RuntimeException runtimeException) {
        super(runtimeException);
    }

    @Override
    public RuntimeException getCause() {
        return (RuntimeException) super.getCause();
    }
}
