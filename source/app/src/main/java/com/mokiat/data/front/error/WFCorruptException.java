package com.mokiat.data.front.error;

public class WFCorruptException extends WFException {
    private static final long serialVersionUID = 1;

    public WFCorruptException() {
    }

    public WFCorruptException(String str) {
        super(str);
    }

    public WFCorruptException(Throwable th2) {
        super(th2);
    }

    public WFCorruptException(String str, Throwable th2) {
        super(str, th2);
    }
}
