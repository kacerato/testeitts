package com.google.android.gms.internal.auth;

public final class zzgy extends RuntimeException {
    public zzgy(InterfaceC11925d2 interfaceC11925d2) {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
    }

    public final zzfb zza() {
        return new zzfb(getMessage());
    }
}
