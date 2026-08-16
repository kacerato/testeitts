package k0;

import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
public final class m {
    private static final Cf.a $ENTRIES;
    private static final m[] $VALUES;
    private final int severity;
    public static final m VERBOSE = new m("VERBOSE", 0, 0);
    public static final m DEBUG = new m("DEBUG", 1, 1);
    public static final m INFO = new m("INFO", 2, 2);
    public static final m WARNING = new m("WARNING", 3, 3);
    public static final m ERROR = new m("ERROR", 4, 4);
    public static final m FATAL = new m("FATAL", 5, 5);
    public static final m INFINITY = new m("INFINITY", 6, 1000);

    static {
        m[] a10 = a();
        $VALUES = a10;
        $ENTRIES = Cf.c.c(a10);
    }

    public m(String $enum$name, int $enum$ordinal, int severity) {
        this.severity = severity;
    }

    public static final m[] a() {
        return new m[]{VERBOSE, DEBUG, INFO, WARNING, ERROR, FATAL, INFINITY};
    }

    @NotNull
    public static Cf.a<m> b() {
        return $ENTRIES;
    }

    public static m valueOf(String value) {
        return (m) Enum.valueOf(m.class, value);
    }

    public static m[] values() {
        return (m[]) $VALUES.clone();
    }

    public final int c() {
        return this.severity;
    }
}
