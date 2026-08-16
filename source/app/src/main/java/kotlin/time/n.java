package kotlin.time;

import android.icu.text.DateFormat;
import kotlin.jvm.internal.M;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;

public class n extends m {

    public static final class a {

        public static final int[] f95887a;

        static {
            int[] iArr = new int[EnumC14039k.values().length];
            try {
                iArr[EnumC14039k.DAYS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[EnumC14039k.HOURS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[EnumC14039k.MINUTES.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[EnumC14039k.SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[EnumC14039k.MILLISECONDS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[EnumC14039k.NANOSECONDS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[EnumC14039k.MICROSECONDS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            f95887a = iArr;
        }
    }

    public static final long f(long j10, @NotNull EnumC14039k unit) {
        M.p(unit, "unit");
        return h(j10, g(unit));
    }

    public static final long g(EnumC14039k enumC14039k) {
        int i10 = a.f95887a[enumC14039k.ordinal()];
        if (i10 == 1) {
            return 86400000L;
        }
        if (i10 == 2) {
            return 3600000L;
        }
        if (i10 == 3) {
            return 60000L;
        }
        if (i10 == 4) {
            return 1000L;
        }
        if (i10 == 5) {
            return 1L;
        }
        throw new IllegalStateException(("Wrong unit for millisMultiplier: " + ((Object) enumC14039k)).toString());
    }

    public static final long h(long j10, long j11) {
        if (j10 == 0) {
            return 0L;
        }
        if (j10 == 1) {
            return Vf.u.E(j11, 4611686018427387903L);
        }
        if (j11 == 1) {
            return Vf.u.E(j10, 4611686018427387903L);
        }
        int numberOfLeadingZeros = (128 - Long.numberOfLeadingZeros(j10)) - Long.numberOfLeadingZeros(j11);
        if (numberOfLeadingZeros < 63) {
            return j10 * j11;
        }
        if (numberOfLeadingZeros > 63) {
            return 4611686018427387903L;
        }
        return Vf.u.E(j10 * j11, 4611686018427387903L);
    }

    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final String i(@NotNull EnumC14039k enumC14039k) {
        M.p(enumC14039k, "<this>");
        switch (a.f95887a[enumC14039k.ordinal()]) {
            case 1:
                return "d";
            case 2:
                return "h";
            case 3:
                return DateFormat.MINUTE;
            case 4:
                return "s";
            case 5:
                return DateFormat.MINUTE_SECOND;
            case 6:
                return "ns";
            case 7:
                return "us";
            default:
                throw new IllegalStateException(("Unknown unit: " + ((Object) enumC14039k)).toString());
        }
    }
}
