package If;

import nf.InterfaceC14422l0;
import nf.T0;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@T0(markerClass = {f.class})
@InterfaceC14422l0(version = "2.1")
public final class p {
    private static final Cf.a $ENTRIES;
    private static final p[] $VALUES;
    public static final p INCLUDE_DIRECTORIES = new p("INCLUDE_DIRECTORIES", 0);
    public static final p BREADTH_FIRST = new p("BREADTH_FIRST", 1);
    public static final p FOLLOW_LINKS = new p("FOLLOW_LINKS", 2);

    static {
        p[] a10 = a();
        $VALUES = a10;
        $ENTRIES = Cf.c.c(a10);
    }

    public p(String str, int i10) {
    }

    public static final p[] a() {
        return new p[]{INCLUDE_DIRECTORIES, BREADTH_FIRST, FOLLOW_LINKS};
    }

    @NotNull
    public static Cf.a<p> b() {
        return $ENTRIES;
    }

    public static p valueOf(String str) {
        return (p) Enum.valueOf(p.class, str);
    }

    public static p[] values() {
        return (p[]) $VALUES.clone();
    }
}
