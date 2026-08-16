package com.google.android.gms.measurement.internal;

public enum W3 {
    UNINITIALIZED("uninitialized"),
    POLICY("eu_consent_policy"),
    DENIED("denied"),
    GRANTED("granted");

    private final String zze;

    W3(String str) {
        this.zze = str;
    }

    @Override
    public final String toString() {
        return this.zze;
    }
}
