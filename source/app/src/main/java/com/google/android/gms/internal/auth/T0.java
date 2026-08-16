package com.google.android.gms.internal.auth;

import java.io.Serializable;

public final class T0 {
    public static O0 a(O0 o02) {
        return ((o02 instanceof R0) || (o02 instanceof P0)) ? o02 : o02 instanceof Serializable ? new P0(o02) : new R0(o02);
    }

    public static O0 b(Object obj) {
        return new S0(obj);
    }
}
