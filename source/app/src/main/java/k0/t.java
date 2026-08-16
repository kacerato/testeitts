package k0;

import com.ardor3d.util.resource.ResourceLocatorTool;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
public final class t {
    private static final Cf.a $ENTRIES;
    private static final t[] $VALUES;

    @NotNull
    private final String value;
    public static final t SYSTEM = new t("SYSTEM", 0, "system");
    public static final t USER = new t("USER", 1, "user");
    public static final t MODEL = new t("MODEL", 2, ResourceLocatorTool.TYPE_MODEL);
    public static final t TOOL = new t("TOOL", 3, "tool");

    static {
        t[] a10 = a();
        $VALUES = a10;
        $ENTRIES = Cf.c.c(a10);
    }

    public t(String $enum$name, int $enum$ordinal, String value) {
        this.value = value;
    }

    public static final t[] a() {
        return new t[]{SYSTEM, USER, MODEL, TOOL};
    }

    @NotNull
    public static Cf.a<t> b() {
        return $ENTRIES;
    }

    public static t valueOf(String value) {
        return (t) Enum.valueOf(t.class, value);
    }

    public static t[] values() {
        return (t[]) $VALUES.clone();
    }

    @NotNull
    public final String c() {
        return this.value;
    }
}
