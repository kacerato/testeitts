package Wf;

import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@InterfaceC14422l0(version = "1.1")
public final class u {
    private static final Cf.a $ENTRIES;
    private static final u[] $VALUES;
    public static final u INVARIANT = new u("INVARIANT", 0);
    public static final u IN = new u("IN", 1);
    public static final u OUT = new u("OUT", 2);

    static {
        u[] a10 = a();
        $VALUES = a10;
        $ENTRIES = Cf.c.c(a10);
    }

    public u(String str, int i10) {
    }

    public static final u[] a() {
        return new u[]{INVARIANT, IN, OUT};
    }

    @NotNull
    public static Cf.a<u> b() {
        return $ENTRIES;
    }

    public static u valueOf(String str) {
        return (u) Enum.valueOf(u.class, str);
    }

    public static u[] values() {
        return (u[]) $VALUES.clone();
    }
}
