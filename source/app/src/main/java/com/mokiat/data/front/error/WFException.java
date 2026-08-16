package com.mokiat.data.front.error;

import java.io.IOException;

public class WFException extends IOException {
    private static final long serialVersionUID = 1;

    public WFException() {
    }

    public WFException(String str) {
        super(str);
    }

    public WFException(Throwable th2) {
        super(th2);
    }

    public WFException(String str, Throwable th2) {
        super(str, th2);
    }
}
