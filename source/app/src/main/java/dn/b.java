package dn;

import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
public final class b {
    private static final Cf.a $ENTRIES;
    private static final b[] $VALUES;
    public static final b RIGHT_TO_LEFT = new b("RIGHT_TO_LEFT", 0);
    public static final b LEFT_TO_RIGHT = new b("LEFT_TO_RIGHT", 1);
    public static final b TOP_TO_BOTTOM = new b("TOP_TO_BOTTOM", 2);
    public static final b BOTTOM_TO_TOP = new b("BOTTOM_TO_TOP", 3);

    static {
        b[] a10 = a();
        $VALUES = a10;
        $ENTRIES = Cf.c.c(a10);
    }

    public b(String str, int i10) {
    }

    public static final b[] a() {
        return new b[]{RIGHT_TO_LEFT, LEFT_TO_RIGHT, TOP_TO_BOTTOM, BOTTOM_TO_TOP};
    }

    @NotNull
    public static Cf.a<b> b() {
        return $ENTRIES;
    }

    public static b valueOf(String str) {
        return (b) Enum.valueOf(b.class, str);
    }

    public static b[] values() {
        return (b[]) $VALUES.clone();
    }
}
