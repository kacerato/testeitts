package eg;

import org.jetbrains.annotations.NotNull;

public final class C13143u0 {

    public static final int f85785b = 0;

    public static final int f85786c = 1;

    public static final int f85787d = 2;

    public static final long f85788e = 1000000;

    public static final long f85789f = 9223372036854L;

    public static final long f85790g = 4611686018427387903L;

    @NotNull
    public static final mg.T f85784a = new mg.T("REMOVED_TASK");

    @NotNull
    public static final mg.T f85791h = new mg.T("CLOSED_EMPTY");

    public static final long c(long j10) {
        return j10 / f85788e;
    }

    public static final long d(long j10) {
        if (j10 <= 0) {
            return 0L;
        }
        if (j10 >= f85789f) {
            return Long.MAX_VALUE;
        }
        return f85788e * j10;
    }
}
