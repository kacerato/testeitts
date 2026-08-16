package com.android.tools.r8.internal;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class EnumC6459ah0 implements QI {

    public static final EnumC6459ah0 f46580c = new EnumC6459ah0("UNKNOWN", 0, 0);

    public static final EnumC6459ah0 f46581d = new EnumC6459ah0("PNG", 1, 1);

    public static final EnumC6459ah0 f46582e = new EnumC6459ah0("BINARY_XML", 2, 2);

    public static final EnumC6459ah0 f46583f = new EnumC6459ah0("PROTO_XML", 3, 3);

    public static final EnumC6459ah0 f46584g = new EnumC6459ah0("UNRECOGNIZED", 4, -1);

    public final int f46585b;

    public EnumC6459ah0(String str, int i10, int i11) {
        this.f46585b = i11;
    }

    @Override
    public final int getNumber() {
        if (this != f46584g) {
            return this.f46585b;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
