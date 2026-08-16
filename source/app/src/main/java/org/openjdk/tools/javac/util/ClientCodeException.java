package org.openjdk.tools.javac.util;

public class ClientCodeException extends RuntimeException {
    static final long serialVersionUID = -5674494409392415163L;

    public ClientCodeException(Throwable th2) {
        super(th2);
    }
}
