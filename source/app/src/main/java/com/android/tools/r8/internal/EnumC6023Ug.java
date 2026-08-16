package com.android.tools.r8.internal;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class EnumC6023Ug implements QI {

    public static final EnumC6023Ug f44823c = new EnumC6023Ug("LAYOUT_DIRECTION_UNSET", 0, 0);

    public static final EnumC6023Ug f44824d = new EnumC6023Ug("UNRECOGNIZED", 3, -1);

    public final int f44825b;

    public EnumC6023Ug(String str, int i10, int i11) {
        this.f44825b = i11;
    }

    @Override
    public final int getNumber() {
        if (this != f44824d) {
            return this.f44825b;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
