package Ef;

import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@InterfaceC14422l0(version = "1.2")
public final class r {
    private static final Cf.a $ENTRIES;
    private static final r[] $VALUES;
    public static final r LANGUAGE_VERSION = new r("LANGUAGE_VERSION", 0);
    public static final r COMPILER_VERSION = new r("COMPILER_VERSION", 1);
    public static final r API_VERSION = new r("API_VERSION", 2);

    static {
        r[] a10 = a();
        $VALUES = a10;
        $ENTRIES = Cf.c.c(a10);
    }

    public r(String str, int i10) {
    }

    public static final r[] a() {
        return new r[]{LANGUAGE_VERSION, COMPILER_VERSION, API_VERSION};
    }

    @NotNull
    public static Cf.a<r> b() {
        return $ENTRIES;
    }

    public static r valueOf(String str) {
        return (r) Enum.valueOf(r.class, str);
    }

    public static r[] values() {
        return (r[]) $VALUES.clone();
    }
}
