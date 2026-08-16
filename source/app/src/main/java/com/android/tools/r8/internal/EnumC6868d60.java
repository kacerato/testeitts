package com.android.tools.r8.internal;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class EnumC6868d60 {

    public static final EnumC6868d60 f47280c = new EnumC6868d60(0, "JUST_MEMBERS", "-keepclassmembers");

    public static final EnumC6868d60 f47281d = new EnumC6868d60(1, "CLASS_OR_MEMBERS", "-keep");

    public static final EnumC6868d60 f47282e = new EnumC6868d60(2, "CLASS_AND_MEMBERS", "-keepclasseswithmembers");

    public static final EnumC6868d60 f47283f = new EnumC6868d60(3, "CHECK_DISCARD", "-checkdiscard");

    public final String f47284b;

    public EnumC6868d60(int i10, String str, String str2) {
        this.f47284b = str2;
    }
}
