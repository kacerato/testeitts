package org.brotli.dec;

class BrotliRuntimeException extends RuntimeException {
    public BrotliRuntimeException(String str) {
        super(str);
    }

    public BrotliRuntimeException(String str, Throwable th2) {
        super(str, th2);
    }
}
