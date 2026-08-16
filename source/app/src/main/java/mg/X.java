package mg;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class X {

    public static final int f97042a = Runtime.getRuntime().availableProcessors();

    public static final int a() {
        return f97042a;
    }

    @Nullable
    public static final String b(@NotNull String str) {
        try {
            return System.getProperty(str);
        } catch (SecurityException unused) {
            return null;
        }
    }
}
