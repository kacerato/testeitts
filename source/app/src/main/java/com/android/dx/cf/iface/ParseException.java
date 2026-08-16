package com.android.dx.cf.iface;

import com.android.dex.util.ExceptionWithContext;

public class ParseException extends ExceptionWithContext {
    public ParseException(String str) {
        super(str);
    }

    public ParseException(Throwable th2) {
        super(th2);
    }

    public ParseException(String str, Throwable th2) {
        super(str, th2);
    }
}
