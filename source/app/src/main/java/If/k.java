package If;

import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@f
@InterfaceC14422l0(version = "1.8")
public final class k {
    private static final Cf.a $ENTRIES;
    private static final k[] $VALUES;
    public static final k SKIP_SUBTREE = new k("SKIP_SUBTREE", 0);
    public static final k TERMINATE = new k("TERMINATE", 1);

    static {
        k[] a10 = a();
        $VALUES = a10;
        $ENTRIES = Cf.c.c(a10);
    }

    public k(String str, int i10) {
    }

    public static final k[] a() {
        return new k[]{SKIP_SUBTREE, TERMINATE};
    }

    @NotNull
    public static Cf.a<k> b() {
        return $ENTRIES;
    }

    public static k valueOf(String str) {
        return (k) Enum.valueOf(k.class, str);
    }

    public static k[] values() {
        return (k[]) $VALUES.clone();
    }
}
