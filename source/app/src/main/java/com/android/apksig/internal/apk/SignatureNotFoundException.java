package com.android.apksig.internal.apk;

public class SignatureNotFoundException extends Exception {
    public SignatureNotFoundException(String str) {
        super(str);
    }

    public SignatureNotFoundException(String str, Throwable th2) {
        super(str, th2);
    }
}
