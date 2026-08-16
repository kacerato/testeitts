package kotlin.time;

import java.util.concurrent.TimeUnit;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.M;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;

public class m {

    public static final class a {

        public static final int[] f95886a;

        static {
            int[] iArr = new int[TimeUnit.values().length];
            try {
                iArr[TimeUnit.NANOSECONDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TimeUnit.MICROSECONDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TimeUnit.MILLISECONDS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[TimeUnit.SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[TimeUnit.MINUTES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[TimeUnit.HOURS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[TimeUnit.DAYS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            f95886a = iArr;
        }
    }

    @InterfaceC14422l0(version = "1.3")
    public static final double a(double d10, @NotNull EnumC14039k sourceUnit, @NotNull EnumC14039k targetUnit) {
        M.p(sourceUnit, "sourceUnit");
        M.p(targetUnit, "targetUnit");
        long convert = targetUnit.c().convert(1L, sourceUnit.c());
        return convert > 0 ? d10 * convert : d10 / sourceUnit.c().convert(1L, targetUnit.c());
    }

    @InterfaceC14422l0(version = "1.5")
    public static final long b(long j10, @NotNull EnumC14039k sourceUnit, @NotNull EnumC14039k targetUnit) {
        M.p(sourceUnit, "sourceUnit");
        M.p(targetUnit, "targetUnit");
        return targetUnit.c().convert(j10, sourceUnit.c());
    }

    @InterfaceC14422l0(version = "1.5")
    public static final long c(long j10, @NotNull EnumC14039k sourceUnit, @NotNull EnumC14039k targetUnit) {
        M.p(sourceUnit, "sourceUnit");
        M.p(targetUnit, "targetUnit");
        return targetUnit.c().convert(j10, sourceUnit.c());
    }

    @InterfaceC14422l0(version = "1.8")
    @NotNull
    public static final EnumC14039k d(@NotNull TimeUnit timeUnit) {
        M.p(timeUnit, "<this>");
        switch (a.f95886a[timeUnit.ordinal()]) {
            case 1:
                return EnumC14039k.NANOSECONDS;
            case 2:
                return EnumC14039k.MICROSECONDS;
            case 3:
                return EnumC14039k.MILLISECONDS;
            case 4:
                return EnumC14039k.SECONDS;
            case 5:
                return EnumC14039k.MINUTES;
            case 6:
                return EnumC14039k.HOURS;
            case 7:
                return EnumC14039k.DAYS;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    @InterfaceC14422l0(version = "1.8")
    @NotNull
    public static final TimeUnit e(@NotNull EnumC14039k enumC14039k) {
        M.p(enumC14039k, "<this>");
        return enumC14039k.c();
    }
}
