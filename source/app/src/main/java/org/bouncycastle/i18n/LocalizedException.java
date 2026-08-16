package org.bouncycastle.i18n;

import java.util.Locale;

public class LocalizedException extends Exception {
    private Throwable cause;
    protected a message;

    public LocalizedException(a aVar) {
        super(aVar.n(Locale.getDefault()));
        this.message = aVar;
    }

    @Override
    public Throwable getCause() {
        return this.cause;
    }

    public a getErrorMessage() {
        return this.message;
    }

    public LocalizedException(a aVar, Throwable th2) {
        super(aVar.n(Locale.getDefault()));
        this.message = aVar;
        this.cause = th2;
    }
}
