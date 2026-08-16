package mg;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class W {
    public static final int a() {
        return X.a();
    }

    public static final int b(@NotNull String str, int i10, int i11, int i12) {
        return Y.a(str, i10, i11, i12);
    }

    public static final long c(@NotNull String str, long j10, long j11, long j12) {
        return Y.b(str, j10, j11, j12);
    }

    @Nullable
    public static final String d(@NotNull String str) {
        return X.b(str);
    }

    @NotNull
    public static final String e(@NotNull String str, @NotNull String str2) {
        return Y.c(str, str2);
    }

    public static final boolean f(@NotNull String str, boolean z10) {
        return Y.d(str, z10);
    }
}
