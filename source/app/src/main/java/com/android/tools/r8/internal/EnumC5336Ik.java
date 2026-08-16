package com.android.tools.r8.internal;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class EnumC5336Ik implements QI {

    public static final EnumC5336Ik f41192c = new EnumC5336Ik("JS_NORMAL", 0, 0);

    public static final EnumC5336Ik f41193d = new EnumC5336Ik("JS_STRING", 1, 1);

    public static final EnumC5336Ik f41194e = new EnumC5336Ik("JS_NUMBER", 2, 2);

    public final int f41195b;

    public EnumC5336Ik(String str, int i10, int i11) {
        this.f41195b = i11;
    }

    public static EnumC5336Ik a(int i10) {
        if (i10 == 0) {
            return f41192c;
        }
        if (i10 == 1) {
            return f41193d;
        }
        if (i10 != 2) {
            return null;
        }
        return f41194e;
    }

    @Override
    public final int getNumber() {
        return this.f41195b;
    }
}
