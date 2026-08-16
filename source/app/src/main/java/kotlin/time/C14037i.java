package kotlin.time;

import java.math.RoundingMode;
import java.text.DecimalFormat;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;

@t0({"SMAP\nDurationJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DurationJvm.kt\nkotlin/time/DurationJvmKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,28:1\n1#2:29\n*E\n"})
public final class C14037i {

    public static final boolean f95871a = false;

    @NotNull
    public static final ThreadLocal<DecimalFormat>[] f95872b;

    static {
        ThreadLocal<DecimalFormat>[] threadLocalArr = new ThreadLocal[4];
        for (int i10 = 0; i10 < 4; i10++) {
            threadLocalArr[i10] = new ThreadLocal<>();
        }
        f95872b = threadLocalArr;
    }

    public static final DecimalFormat a(int i10) {
        DecimalFormat decimalFormat = new DecimalFormat("0");
        if (i10 > 0) {
            decimalFormat.setMinimumFractionDigits(i10);
        }
        decimalFormat.setRoundingMode(RoundingMode.HALF_UP);
        return decimalFormat;
    }

    @NotNull
    public static final String b(double d10, int i10) {
        DecimalFormat a10;
        ThreadLocal<DecimalFormat>[] threadLocalArr = f95872b;
        if (i10 < threadLocalArr.length) {
            ThreadLocal<DecimalFormat> threadLocal = threadLocalArr[i10];
            DecimalFormat decimalFormat = threadLocal.get();
            if (decimalFormat == null) {
                decimalFormat = a(i10);
                threadLocal.set(decimalFormat);
            }
            a10 = decimalFormat;
        } else {
            a10 = a(i10);
        }
        String format = a10.format(d10);
        M.o(format, "format(...)");
        return format;
    }

    public static final boolean c() {
        return f95871a;
    }
}
