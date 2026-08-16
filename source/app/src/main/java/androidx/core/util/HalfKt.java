package androidx.core.util;

import android.util.Half;
import kotlin.jvm.internal.M;

public final class HalfKt {
    public static final Half toHalf(short s10) {
        Half valueOf = Half.valueOf(s10);
        M.o(valueOf, "valueOf(this)");
        return valueOf;
    }

    public static final Half toHalf(float f10) {
        Half valueOf = Half.valueOf(f10);
        M.o(valueOf, "valueOf(this)");
        return valueOf;
    }

    public static final Half toHalf(String str) {
        M.p(str, "<this>");
        Half valueOf = Half.valueOf(str);
        M.o(valueOf, "valueOf(this)");
        return valueOf;
    }

    public static final Half toHalf(double d10) {
        Half valueOf = Half.valueOf((float) d10);
        M.o(valueOf, "valueOf(this)");
        return valueOf;
    }
}
