package com.android.dex;

public final class DexIndexOverflowException extends DexException {
    public DexIndexOverflowException(String str) {
        super(str);
    }

    public DexIndexOverflowException(Throwable th2) {
        super(th2);
    }
}
