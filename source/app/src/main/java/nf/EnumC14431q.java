package nf;

import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
public final class EnumC14431q {
    private static final Cf.a $ENTRIES;
    private static final EnumC14431q[] $VALUES;
    public static final EnumC14431q WARNING = new EnumC14431q("WARNING", 0);
    public static final EnumC14431q ERROR = new EnumC14431q("ERROR", 1);
    public static final EnumC14431q HIDDEN = new EnumC14431q("HIDDEN", 2);

    static {
        EnumC14431q[] a10 = a();
        $VALUES = a10;
        $ENTRIES = Cf.c.c(a10);
    }

    public EnumC14431q(String str, int i10) {
    }

    public static final EnumC14431q[] a() {
        return new EnumC14431q[]{WARNING, ERROR, HIDDEN};
    }

    @NotNull
    public static Cf.a<EnumC14431q> b() {
        return $ENTRIES;
    }

    public static EnumC14431q valueOf(String str) {
        return (EnumC14431q) Enum.valueOf(EnumC14431q.class, str);
    }

    public static EnumC14431q[] values() {
        return (EnumC14431q[]) $VALUES.clone();
    }
}
