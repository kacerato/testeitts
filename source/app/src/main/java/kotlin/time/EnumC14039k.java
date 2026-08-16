package kotlin.time;

import java.util.concurrent.TimeUnit;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@InterfaceC14422l0(version = "1.6")
public final class EnumC14039k {
    private static final Cf.a $ENTRIES;
    private static final EnumC14039k[] $VALUES;

    @NotNull
    private final TimeUnit timeUnit;
    public static final EnumC14039k NANOSECONDS = new EnumC14039k("NANOSECONDS", 0, TimeUnit.NANOSECONDS);
    public static final EnumC14039k MICROSECONDS = new EnumC14039k("MICROSECONDS", 1, TimeUnit.MICROSECONDS);
    public static final EnumC14039k MILLISECONDS = new EnumC14039k("MILLISECONDS", 2, TimeUnit.MILLISECONDS);
    public static final EnumC14039k SECONDS = new EnumC14039k("SECONDS", 3, TimeUnit.SECONDS);
    public static final EnumC14039k MINUTES = new EnumC14039k("MINUTES", 4, TimeUnit.MINUTES);
    public static final EnumC14039k HOURS = new EnumC14039k("HOURS", 5, TimeUnit.HOURS);
    public static final EnumC14039k DAYS = new EnumC14039k("DAYS", 6, TimeUnit.DAYS);

    static {
        EnumC14039k[] a10 = a();
        $VALUES = a10;
        $ENTRIES = Cf.c.c(a10);
    }

    public EnumC14039k(String str, int i10, TimeUnit timeUnit) {
        this.timeUnit = timeUnit;
    }

    public static final EnumC14039k[] a() {
        return new EnumC14039k[]{NANOSECONDS, MICROSECONDS, MILLISECONDS, SECONDS, MINUTES, HOURS, DAYS};
    }

    @NotNull
    public static Cf.a<EnumC14039k> b() {
        return $ENTRIES;
    }

    public static EnumC14039k valueOf(String str) {
        return (EnumC14039k) Enum.valueOf(EnumC14039k.class, str);
    }

    public static EnumC14039k[] values() {
        return (EnumC14039k[]) $VALUES.clone();
    }

    @NotNull
    public final TimeUnit c() {
        return this.timeUnit;
    }
}
