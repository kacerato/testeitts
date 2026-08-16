package com.mokiat.data.front.error;

public class WFSizeException extends WFException {
    private static final long serialVersionUID = 1;

    public WFSizeException() {
    }

    public WFSizeException(String str) {
        super(str);
    }

    public WFSizeException(Throwable th2) {
        super(th2);
    }

    public WFSizeException(String str, Throwable th2) {
        super(str, th2);
    }
}
