package xf;

import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Ef.b
@InterfaceC16105f
@InterfaceC14422l0(version = "1.3")
public final class EnumC16108i {
    private static final Cf.a $ENTRIES;
    private static final EnumC16108i[] $VALUES;

    @Ef.b
    public static final EnumC16108i AT_MOST_ONCE = new EnumC16108i("AT_MOST_ONCE", 0);

    @Ef.b
    public static final EnumC16108i AT_LEAST_ONCE = new EnumC16108i("AT_LEAST_ONCE", 1);

    @Ef.b
    public static final EnumC16108i EXACTLY_ONCE = new EnumC16108i("EXACTLY_ONCE", 2);

    @Ef.b
    public static final EnumC16108i UNKNOWN = new EnumC16108i("UNKNOWN", 3);

    static {
        EnumC16108i[] a10 = a();
        $VALUES = a10;
        $ENTRIES = Cf.c.c(a10);
    }

    public EnumC16108i(String str, int i10) {
    }

    public static final EnumC16108i[] a() {
        return new EnumC16108i[]{AT_MOST_ONCE, AT_LEAST_ONCE, EXACTLY_ONCE, UNKNOWN};
    }

    @NotNull
    public static Cf.a<EnumC16108i> b() {
        return $ENTRIES;
    }

    public static EnumC16108i valueOf(String str) {
        return (EnumC16108i) Enum.valueOf(EnumC16108i.class, str);
    }

    public static EnumC16108i[] values() {
        return (EnumC16108i[]) $VALUES.clone();
    }
}
