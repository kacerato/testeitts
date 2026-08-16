package com.android.tools.r8.internal;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class WN {

    public static final WN f45375b = new WN(0, "ONLY_CLASS");

    public static final WN f45376c = new WN(1, "ONLY_MEMBERS");

    public static final WN f45377d = new WN(2, "ONLY_METHODS");

    public static final WN f45378e = new WN(3, "ONLY_FIELDS");

    public static final WN f45379f = new WN(4, "CLASS_AND_MEMBERS");

    public static final WN f45380g = new WN(5, "CLASS_AND_METHODS");

    public static final WN f45381h = new WN(6, "CLASS_AND_FIELDS");

    public WN(int i10, String str) {
    }

    public final boolean a() {
        return equals(f45375b) || equals(f45379f) || equals(f45380g) || equals(f45381h);
    }
}
