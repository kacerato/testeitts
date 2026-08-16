package com.android.tools.r8.internal;

import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;

public final class C8667nv extends RuntimeException {

    public static final int f51113d = 0;

    public final Origin f51114b;

    public final Position f51115c;

    public C8667nv(RuntimeException runtimeException, Origin origin, Position position) {
        super(runtimeException);
        this.f51114b = origin;
        this.f51115c = position;
    }
}
