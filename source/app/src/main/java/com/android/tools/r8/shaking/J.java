package com.android.tools.r8.shaking;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class J {

    public static final J f56637b = new J(0, "INSTANCE_READ");

    public static final J f56638c = new J(1, "INSTANCE_WRITE");

    public static final J f56639d = new J(2, "STATIC_READ");

    public static final J f56640e = new J(3, "STATIC_WRITE");

    public J(int i10, String str) {
    }

    public final boolean a() {
        return this == f56637b || this == f56639d;
    }
}
