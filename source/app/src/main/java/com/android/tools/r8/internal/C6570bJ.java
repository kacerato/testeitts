package com.android.tools.r8.internal;

import com.android.tools.r8.ResourceException;

public class C6570bJ extends IllegalStateException {
    public C6570bJ() {
    }

    public C6570bJ(String str) {
        super(str);
    }

    public C6570bJ(ResourceException resourceException) {
        super("Unexpected resource error", resourceException);
    }

    public C6570bJ(Exception exc) {
        super(exc);
    }
}
