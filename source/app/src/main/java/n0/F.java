package n0;

import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
public final class F {
    private static final Cf.a $ENTRIES;
    private static final F[] $VALUES;
    public static final F COLOR = new F("COLOR", 0);
    public static final F NORMAL = new F("NORMAL", 1);
    public static final F DATA = new F("DATA", 2);

    static {
        F[] a10 = a();
        $VALUES = a10;
        $ENTRIES = Cf.c.c(a10);
    }

    public F(String str, int i10) {
    }

    public static final F[] a() {
        return new F[]{COLOR, NORMAL, DATA};
    }

    @NotNull
    public static Cf.a<F> b() {
        return $ENTRIES;
    }

    public static F valueOf(String str) {
        return (F) Enum.valueOf(F.class, str);
    }

    public static F[] values() {
        return (F[]) $VALUES.clone();
    }
}
