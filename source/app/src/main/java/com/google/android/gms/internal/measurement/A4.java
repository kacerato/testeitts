package com.google.android.gms.internal.measurement;

public enum A4 implements InterfaceC12198u5 {
    PURPOSE_RESTRICTION_NOT_ALLOWED(0),
    PURPOSE_RESTRICTION_REQUIRE_CONSENT(1),
    PURPOSE_RESTRICTION_REQUIRE_LEGITIMATE_INTEREST(2),
    PURPOSE_RESTRICTION_UNDEFINED(3),
    UNRECOGNIZED(-1);

    private final int zzf;

    A4(int i10) {
        this.zzf = i10;
    }

    @Override
    public final int N1() {
        if (this != UNRECOGNIZED) {
            return this.zzf;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }

    @Override
    public final String toString() {
        return Integer.toString(this.zzf);
    }
}
