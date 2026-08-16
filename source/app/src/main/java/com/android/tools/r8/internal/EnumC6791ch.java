package com.android.tools.r8.internal;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class EnumC6791ch implements QI {

    public static final EnumC6791ch f47132c = new EnumC6791ch("UI_MODE_NIGHT_UNSET", 0, 0);

    public static final EnumC6791ch f47133d = new EnumC6791ch("UNRECOGNIZED", 3, -1);

    public final int f47134b;

    public EnumC6791ch(String str, int i10, int i11) {
        this.f47134b = i11;
    }

    @Override
    public final int getNumber() {
        if (this != f47133d) {
            return this.f47134b;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
