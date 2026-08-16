package mg;

import ag.C3616J;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.eclipse.jdt.internal.core.JavaElement;
import org.jetbrains.annotations.NotNull;

public final class Y {
    public static final int a(@NotNull String str, int i10, int i11, int i12) {
        return (int) W.c(str, i10, i11, i12);
    }

    public static final long b(@NotNull String str, long j10, long j11, long j12) {
        String d10 = W.d(str);
        if (d10 == null) {
            return j10;
        }
        Long t12 = C3616J.t1(d10);
        if (t12 == null) {
            throw new IllegalStateException(("System property '" + str + "' has unrecognized value '" + d10 + JavaElement.JEM_MODULAR_CLASSFILE).toString());
        }
        long longValue = t12.longValue();
        if (j11 <= longValue && longValue <= j12) {
            return longValue;
        }
        throw new IllegalStateException(("System property '" + str + "' should be in range " + j11 + ClasspathEntry.DOT_DOT + j12 + ", but is '" + longValue + JavaElement.JEM_MODULAR_CLASSFILE).toString());
    }

    @NotNull
    public static final String c(@NotNull String str, @NotNull String str2) {
        String d10 = W.d(str);
        return d10 == null ? str2 : d10;
    }

    public static final boolean d(@NotNull String str, boolean z10) {
        String d10 = W.d(str);
        return d10 != null ? Boolean.parseBoolean(d10) : z10;
    }

    public static int e(String str, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 4) != 0) {
            i11 = 1;
        }
        if ((i13 & 8) != 0) {
            i12 = Integer.MAX_VALUE;
        }
        return W.b(str, i10, i11, i12);
    }

    public static long f(String str, long j10, long j11, long j12, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            j11 = 1;
        }
        long j13 = j11;
        if ((i10 & 8) != 0) {
            j12 = Long.MAX_VALUE;
        }
        return W.c(str, j10, j13, j12);
    }
}
