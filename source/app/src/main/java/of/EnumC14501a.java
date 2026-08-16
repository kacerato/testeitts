package of;

import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
public final class EnumC14501a {
    private static final Cf.a $ENTRIES;
    private static final EnumC14501a[] $VALUES;
    public static final EnumC14501a SOURCE = new EnumC14501a("SOURCE", 0);
    public static final EnumC14501a BINARY = new EnumC14501a("BINARY", 1);
    public static final EnumC14501a RUNTIME = new EnumC14501a("RUNTIME", 2);

    static {
        EnumC14501a[] a10 = a();
        $VALUES = a10;
        $ENTRIES = Cf.c.c(a10);
    }

    public EnumC14501a(String str, int i10) {
    }

    public static final EnumC14501a[] a() {
        return new EnumC14501a[]{SOURCE, BINARY, RUNTIME};
    }

    @NotNull
    public static Cf.a<EnumC14501a> b() {
        return $ENTRIES;
    }

    public static EnumC14501a valueOf(String str) {
        return (EnumC14501a) Enum.valueOf(EnumC14501a.class, str);
    }

    public static EnumC14501a[] values() {
        return (EnumC14501a[]) $VALUES.clone();
    }
}
