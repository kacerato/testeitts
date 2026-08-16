package kotlin.io;

import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
public final class i {
    private static final Cf.a $ENTRIES;
    private static final i[] $VALUES;
    public static final i TOP_DOWN = new i("TOP_DOWN", 0);
    public static final i BOTTOM_UP = new i("BOTTOM_UP", 1);

    static {
        i[] a10 = a();
        $VALUES = a10;
        $ENTRIES = Cf.c.c(a10);
    }

    public i(String str, int i10) {
    }

    public static final i[] a() {
        return new i[]{TOP_DOWN, BOTTOM_UP};
    }

    @NotNull
    public static Cf.a<i> b() {
        return $ENTRIES;
    }

    public static i valueOf(String str) {
        return (i) Enum.valueOf(i.class, str);
    }

    public static i[] values() {
        return (i[]) $VALUES.clone();
    }
}
