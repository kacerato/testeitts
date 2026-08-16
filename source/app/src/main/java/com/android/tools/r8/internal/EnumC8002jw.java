package com.android.tools.r8.internal;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class EnumC8002jw {

    public static final EnumC8002jw f49421b = new EnumC8002jw(0, "OBJECT");

    public static final EnumC8002jw f49422c = new EnumC8002jw(1, "BOOLEAN");

    public static final EnumC8002jw f49423d = new EnumC8002jw(2, "BYTE");

    public static final EnumC8002jw f49424e = new EnumC8002jw(3, "CHAR");

    public static final EnumC8002jw f49425f = new EnumC8002jw(4, "SHORT");

    public static final EnumC8002jw f49426g = new EnumC8002jw(5, "INT");

    public static final EnumC8002jw f49427h = new EnumC8002jw(6, "FLOAT");

    public static final EnumC8002jw f49428i = new EnumC8002jw(7, "LONG");

    public static final EnumC8002jw f49429j = new EnumC8002jw(8, "DOUBLE");

    public EnumC8002jw(int i10, String str) {
    }

    public static EnumC8002jw a(char c10) {
        if (c10 == 'F') {
            return f49427h;
        }
        if (c10 != 'L') {
            if (c10 == 'S') {
                return f49425f;
            }
            if (c10 == 'V') {
                throw new C6570bJ("No member type for void type.");
            }
            if (c10 == 'I') {
                return f49426g;
            }
            if (c10 == 'J') {
                return f49428i;
            }
            if (c10 == 'Z') {
                return f49422c;
            }
            if (c10 != '[') {
                switch (c10) {
                    case 'B':
                        return f49423d;
                    case 'C':
                        return f49424e;
                    case 'D':
                        return f49429j;
                    default:
                        throw new C5417Jv0("Invalid descriptor char '" + c10 + "'");
                }
            }
        }
        return f49421b;
    }
}
