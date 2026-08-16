package If;

import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@f
@InterfaceC14422l0(version = "1.8")
public final class b {
    private static final Cf.a $ENTRIES;
    private static final b[] $VALUES;
    public static final b CONTINUE = new b("CONTINUE", 0);
    public static final b SKIP_SUBTREE = new b("SKIP_SUBTREE", 1);
    public static final b TERMINATE = new b("TERMINATE", 2);

    static {
        b[] a10 = a();
        $VALUES = a10;
        $ENTRIES = Cf.c.c(a10);
    }

    public b(String str, int i10) {
    }

    public static final b[] a() {
        return new b[]{CONTINUE, SKIP_SUBTREE, TERMINATE};
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
