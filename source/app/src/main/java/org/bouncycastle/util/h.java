package org.bouncycastle.util;

import java.io.IOException;

public class h {
    public static IllegalArgumentException a(String str, Throwable th2) {
        return new IllegalArgumentException(str, th2);
    }

    public static IllegalStateException b(String str, Throwable th2) {
        return new IllegalStateException(str, th2);
    }

    public static IOException c(String str, Throwable th2) {
        return new IOException(str, th2);
    }
}
