package com.android.tools.r8;

import com.android.tools.r8.origin.Origin;

public class ResourceException extends Exception {

    private final Origin f35513b;

    public ResourceException(Origin origin, String str) {
        super(str);
        this.f35513b = origin;
    }

    public Origin getOrigin() {
        return this.f35513b;
    }

    public ResourceException(Origin origin, Throwable th2) {
        super(th2);
        this.f35513b = origin;
    }

    public ResourceException(Origin origin, String str, Throwable th2) {
        super(str, th2);
        this.f35513b = origin;
    }
}
