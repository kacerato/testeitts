package Af;

import nf.InterfaceC14410f0;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@InterfaceC14410f0
@InterfaceC14422l0(version = "1.3")
public final class a {
    private static final Cf.a $ENTRIES;
    private static final a[] $VALUES;
    public static final a COROUTINE_SUSPENDED = new a("COROUTINE_SUSPENDED", 0);
    public static final a UNDECIDED = new a("UNDECIDED", 1);
    public static final a RESUMED = new a("RESUMED", 2);

    static {
        a[] a10 = a();
        $VALUES = a10;
        $ENTRIES = Cf.c.c(a10);
    }

    public a(String str, int i10) {
    }

    public static final a[] a() {
        return new a[]{COROUTINE_SUSPENDED, UNDECIDED, RESUMED};
    }

    @NotNull
    public static Cf.a<a> b() {
        return $ENTRIES;
    }

    public static a valueOf(String str) {
        return (a) Enum.valueOf(a.class, str);
    }

    public static a[] values() {
        return (a[]) $VALUES.clone();
    }
}
