package com.android.tools.r8.internal;

public enum EnumC10677zx0 {
    f54586b,
    f54587c,
    f54588d,
    f54589e;

    EnumC10677zx0() {
    }

    @Override
    public final String toString() {
        int i10 = AbstractC10510yx0.f54244a[ordinal()];
        if (i10 == 1) {
            return "public";
        }
        if (i10 == 2) {
            return "protected";
        }
        if (i10 == 3) {
            return "private";
        }
        if (i10 == 4) {
            return "package-private";
        }
        throw new C5417Jv0("Unexpected visibility");
    }
}
