package Wf;

import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@InterfaceC14422l0(version = "1.1")
public final class v {
    private static final Cf.a $ENTRIES;
    private static final v[] $VALUES;
    public static final v PUBLIC = new v("PUBLIC", 0);
    public static final v PROTECTED = new v("PROTECTED", 1);
    public static final v INTERNAL = new v("INTERNAL", 2);
    public static final v PRIVATE = new v("PRIVATE", 3);

    static {
        v[] a10 = a();
        $VALUES = a10;
        $ENTRIES = Cf.c.c(a10);
    }

    public v(String str, int i10) {
    }

    public static final v[] a() {
        return new v[]{PUBLIC, PROTECTED, INTERNAL, PRIVATE};
    }

    @NotNull
    public static Cf.a<v> b() {
        return $ENTRIES;
    }

    public static v valueOf(String str) {
        return (v) Enum.valueOf(v.class, str);
    }

    public static v[] values() {
        return (v[]) $VALUES.clone();
    }
}
