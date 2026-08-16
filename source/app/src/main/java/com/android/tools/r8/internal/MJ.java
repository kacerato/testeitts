package com.android.tools.r8.internal;

import java.io.IOException;

public class MJ extends IOException {

    public static final int f42271c = 0;

    public InterfaceC8095kW f42272b;

    public MJ(String str) {
        super(str);
        this.f42272b = null;
    }

    public final IOException a() {
        return getCause() instanceof IOException ? (IOException) getCause() : this;
    }

    public MJ(IOException iOException) {
        super(iOException.getMessage(), iOException);
        this.f42272b = null;
    }
}
