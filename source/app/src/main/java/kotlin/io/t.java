package kotlin.io;

import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
public final class t {
    private static final Cf.a $ENTRIES;
    private static final t[] $VALUES;
    public static final t SKIP = new t("SKIP", 0);
    public static final t TERMINATE = new t("TERMINATE", 1);

    static {
        t[] a10 = a();
        $VALUES = a10;
        $ENTRIES = Cf.c.c(a10);
    }

    public t(String str, int i10) {
    }

    public static final t[] a() {
        return new t[]{SKIP, TERMINATE};
    }

    @NotNull
    public static Cf.a<t> b() {
        return $ENTRIES;
    }

    public static t valueOf(String str) {
        return (t) Enum.valueOf(t.class, str);
    }

    public static t[] values() {
        return (t[]) $VALUES.clone();
    }
}
