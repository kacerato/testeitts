package com.android.apksig.internal.asn1;

public class Asn1EncodingException extends Exception {
    private static final long serialVersionUID = 1;

    public Asn1EncodingException(String str) {
        super(str);
    }

    public Asn1EncodingException(String str, Throwable th2) {
        super(str, th2);
    }
}
