package com.android.tools.r8.internal;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class EnumC4988Ck implements QI {

    public static final EnumC4988Ck f39333c = new EnumC4988Ck("LABEL_OPTIONAL", 0, 1);

    public static final EnumC4988Ck f39334d = new EnumC4988Ck("LABEL_REQUIRED", 1, 2);

    public static final EnumC4988Ck f39335e = new EnumC4988Ck("LABEL_REPEATED", 2, 3);

    public final int f39336b;

    public EnumC4988Ck(String str, int i10, int i11) {
        this.f39336b = i11;
    }

    public static EnumC4988Ck a(int i10) {
        if (i10 == 1) {
            return f39333c;
        }
        if (i10 == 2) {
            return f39334d;
        }
        if (i10 != 3) {
            return null;
        }
        return f39335e;
    }

    @Override
    public final int getNumber() {
        return this.f39336b;
    }
}
