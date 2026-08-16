package Zg;

import Cf.c;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
public final class b {
    private static final Cf.a $ENTRIES;
    private static final b[] $VALUES;
    public static final b ROUND = new b("ROUND", 0);
    public static final b BUTT = new b("BUTT", 1);

    static {
        b[] a10 = a();
        $VALUES = a10;
        $ENTRIES = c.c(a10);
    }

    public b(String str, int i10) {
    }

    public static final b[] a() {
        return new b[]{ROUND, BUTT};
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
